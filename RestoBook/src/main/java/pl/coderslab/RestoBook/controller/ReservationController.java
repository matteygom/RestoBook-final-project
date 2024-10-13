package pl.coderslab.RestoBook.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.RestoBook.domain.Reservation;
import pl.coderslab.RestoBook.domain.Restaurant;
import pl.coderslab.RestoBook.service.CaptchaService;
import pl.coderslab.RestoBook.service.ReservationService;
import pl.coderslab.RestoBook.service.RestaurantService;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.Optional;

@Controller
public class ReservationController {

    @Autowired
    private ReservationService reservationService;

    @Autowired
    private RestaurantService restaurantService;

    @Autowired
    private CaptchaService captchaService;

    @GetMapping("reservation/{restaurantId}")
    public String showReservationForm(@PathVariable Long restaurantId, Model model, HttpSession session) {
        String captcha = captchaService.generateCaptcha();
        captchaService.setCaptchaInSession(session, captcha);

        final Optional<Restaurant> restaurant = restaurantService.findById(restaurantId);

        model.addAttribute("reservation", new Reservation());
        model.addAttribute("restaurantId", restaurantId);
        model.addAttribute("restaurant", restaurant);
        model.addAttribute("captcha", captcha);

        return "reservation";
    }

    @PostMapping("reservation/{restaurantId}")
    public String createReservation(
            @PathVariable Long restaurantId,
            @Valid @ModelAttribute("reservation") Reservation reservation,
            BindingResult result,
            @RequestParam("userCaptcha") String userCaptcha,
            Model model,
            HttpSession session) {

        // Validate CAPTCHA
        if (!captchaService.validateCaptcha(session, userCaptcha)) {
            result.rejectValue("captcha", "error.reservation", "Invalid CAPTCHA");
        }

        // Fetch restaurant
        Optional<Restaurant> restaurantOpt = restaurantService.findById(restaurantId);
        if (!restaurantOpt.isPresent()) {
            result.rejectValue("restaurant", "error.reservation", "Restaurant not found");
        } else {
            reservation.setRestaurant(restaurantOpt.get());
        }

        if (result.hasErrors()) {
            model.addAttribute("reservation", reservation);
            return "reservation";
        }

        reservationService.save(reservation);
        model.addAttribute("successMessage", "Reservation created successfully");
        return "redirect:/home";
    }
}
