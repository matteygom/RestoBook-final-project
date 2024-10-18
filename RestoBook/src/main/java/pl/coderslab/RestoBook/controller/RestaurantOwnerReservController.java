package pl.coderslab.RestoBook.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.RestoBook.domain.Reservation;
import pl.coderslab.RestoBook.domain.Restaurant;
import pl.coderslab.RestoBook.service.ReservationService;
import pl.coderslab.RestoBook.service.RestaurantService;

import java.util.List;
import java.util.Optional;

@Controller
public class RestaurantOwnerReservController {

    private final ReservationService reservationService;
    private final RestaurantService restaurantService;

    @Autowired
    public RestaurantOwnerReservController(ReservationService reservationService, RestaurantService restaurantService) {
        this.reservationService = reservationService;
        this.restaurantService = restaurantService;
    }

    @GetMapping("/owner/reservations/list/{restaurantId}")
    public String showAllReservations(@PathVariable Long restaurantId, Model model) {
        Optional<List<Reservation>> reservationsOpt = reservationService.findByRestaurantId(restaurantId);
        Optional<Restaurant> restaurant = restaurantService.findById(restaurantId);

        if (reservationsOpt.isPresent()) {
            model.addAttribute("reservations", reservationsOpt.get());
        } else {
            model.addAttribute("error", "No reservations found for this restaurant");
        }

        model.addAttribute("restaurant", restaurant);
        return "restaurant-owner-reservation-list";
    }

    @GetMapping("/owner/reservations/details/{reservationId}")
    public String getReservationDetail(@PathVariable Long reservationId, Model model) {
        Optional<Reservation> reservationOpt = reservationService.findById(reservationId);
        if (reservationOpt.isPresent()) {
            Reservation reservation = reservationOpt.get();
            Restaurant restaurant = reservation.getRestaurant();
            if (restaurant != null) {
                model.addAttribute("reservation", reservation);
                model.addAttribute("restaurant", restaurant);
            } else {
                model.addAttribute("error", "Reservation has no associated restaurant");
            }
        } else {
            model.addAttribute("error", "Reservation not found");
        }
        return "restaurant-owner-reservation-details";
    }

    @GetMapping("/owner/reservations/edit/{reservationId}")
    public String showEditForm(@PathVariable Long reservationId, Model model) {
        Optional<Reservation> reservationOpt = reservationService.findById(reservationId);
        if (reservationOpt.isPresent()) {
            model.addAttribute("reservation", reservationOpt.get());
        } else {
            model.addAttribute("error", "Reservation not found");
        }
        return "restaurant-owner-reservation-edit";
    }

    @PostMapping("/owner/reservations/edit/{reservationId}")
    public String editReservation(@PathVariable Long reservationId, @ModelAttribute Reservation reservation) {
        Optional<Reservation> reservationOpt = reservationService.findById(reservationId);
        if (reservationOpt.isPresent()) {
            Reservation existingReservation = reservationOpt.get();
            Restaurant restaurant = existingReservation.getRestaurant();
            if (restaurant != null) {
                reservation.setId(reservationId);
                reservation.setRestaurant(restaurant);  // Ustawienie restauracji
                reservationService.save(reservation);
                return "redirect:/owner/reservations/list/" + restaurant.getId();
            } else {
                return "redirect:/owner/reservations/error?message=" + "Reservation has no associated restaurant";
            }
        } else {
            return "redirect:/owner/reservations/error?message=" + "Reservation not found";
        }
    }

    @DeleteMapping("/owner/reservations/delete/{reservationId}")
    public ResponseEntity<String> deleteReservationFromList(@PathVariable Long reservationId) {
        reservationService.deleteById(reservationId);
        return ResponseEntity.ok("Rezerwacja została usunięta");
    }
}