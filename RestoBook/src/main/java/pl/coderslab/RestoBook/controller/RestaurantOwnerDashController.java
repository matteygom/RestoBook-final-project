package pl.coderslab.RestoBook.controller;


import org.springframework.stereotype.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.support.ByteArrayMultipartFileEditor;
import pl.coderslab.RestoBook.domain.Restaurant;
import pl.coderslab.RestoBook.domain.User;
import pl.coderslab.RestoBook.repository.UserRepository;
import pl.coderslab.RestoBook.service.RestaurantService;

import javax.validation.Valid;
import java.io.IOException;

@Controller
public class RestaurantOwnerDashController {

    @Autowired
    private UserRepository userRepository;


    @Autowired
    private final RestaurantService restaurantService;

    public RestaurantOwnerDashController(RestaurantService restaurantService) {
        this.restaurantService = restaurantService;
    }

    @InitBinder
    protected void initBinder(WebDataBinder binder) {
        // Tutaj jest rejestracja edytora property do konwersji MultipartFile na byte[]
        binder.registerCustomEditor(byte[].class, new ByteArrayMultipartFileEditor());
    }

    @GetMapping("/owner/dashboard/{userId}")
    public String getUserDetails(@PathVariable Long userId, Model model) {
        User user = userRepository.findById(userId).orElse(null);
        if (user != null) {
            model.addAttribute("user", user);
            model.addAttribute("restaurant", user.getRestaurant());
            return "restaurant-owner-dashboard";
        } else {
            return "error404";
        }
    }

    @GetMapping("/owner/dashboard/restaurantEdit/{userId}")
    public String showEditForm(@PathVariable Long userId, Model model) {
        User user = userRepository.findById(userId).orElseThrow(() -> new IllegalArgumentException("Invalid restaurant Id:" + userId));
        Restaurant restaurant = user.getRestaurant();
        if (restaurant == null) {
            restaurant = new Restaurant();
        }
        model.addAttribute("restaurant", restaurant);
        return "restaurant-owner-dashboard-edit";
    }

    @PostMapping("/owner/dashboard/restaurantEdit/{userId}")
    public String updateRestaurantDetails(@PathVariable Long userId,
                                          @Valid @ModelAttribute Restaurant restaurantDetails,
                                          @RequestParam(value = "logo", required = false) MultipartFile logo,
                                          BindingResult result,
                                          Model model) {
        User user = userRepository.findById(userId).orElse(null);
        if (user != null) {
            Restaurant restaurant = user.getRestaurant();
            if (restaurant == null) {
                restaurant = new Restaurant();
                user.setRestaurant(restaurant);
            }

            restaurant.setRestoName(restaurantDetails.getRestoName());
            restaurant.setYearOfLaunch(restaurantDetails.getYearOfLaunch());
            restaurant.setCuisine(restaurantDetails.getCuisine());
            restaurant.setCapacity(restaurantDetails.getCapacity());
            restaurant.setAvgPrice(restaurantDetails.getAvgPrice());
            restaurant.setWebSite(restaurantDetails.getWebSite());
            restaurant.setPhoneNumber(restaurantDetails.getPhoneNumber());
            restaurant.setStreet(restaurantDetails.getStreet());
            restaurant.setStreetNumber(restaurantDetails.getStreetNumber());
            restaurant.setCity(restaurantDetails.getCity());
            restaurant.setCountry(restaurantDetails.getCountry());
            restaurant.setZipCode(restaurantDetails.getZipCode());
            restaurant.setDescription(restaurantDetails.getDescription());
            restaurant.setRating(restaurantDetails.getRating());

            try {
                if (logo != null && !logo.isEmpty()) {
                    byte[] bytes = logo.getBytes();
                    if (bytes.length <= 250 * 1024) {
                        restaurant.setLogo(bytes);
                    } else {
                        result.rejectValue("logo", "error.restaurant", "File size exceeds the maximum allowed size (250 KB)");
                        model.addAttribute("restaurant", user.getRestaurant());
                        return "restaurant-owner-dashboard-edit";
                    }
                }

                restaurantService.save(restaurant);
                userRepository.save(user);
            } catch (IOException e) {
                result.rejectValue("logo", "error.restaurant", "Error uploading file");
            }

            model.addAttribute("restaurant", restaurant);

            if (result.hasErrors()) {
                return "restaurant-owner-dashboard-edit";
            }
            return "redirect:/owner/dashboard/" + user.getId();
        } else {
            return "error404";
        }
    }
}
