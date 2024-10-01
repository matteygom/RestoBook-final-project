package pl.coderslab.RestoBook.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.RestoBook.domain.Restaurant;
import pl.coderslab.RestoBook.service.RestaurantService;

import java.nio.charset.StandardCharsets;
import java.util.Base64;
import java.util.List;
import java.util.stream.Collectors;


@Controller
public class HomeController {

    private final RestaurantService restaurantService;

    @Autowired
    public HomeController(RestaurantService restaurantService) {
        this.restaurantService = restaurantService;
    }

    @GetMapping(value = {"/", "/home"})
    public String showNewestAndTopRatedRestaurants(Model model) {
        List<Restaurant> newestRestaurants = restaurantService.findTop6NewestRestaurants();
        List<Restaurant> highestRatedRestaurants = restaurantService.findTop5HighestRatedRestaurants();

        List<String> newestRestaurantsLogos = newestRestaurants.stream()
                .map(Restaurant::getLogoBase64)
                .collect(Collectors.toList());

        List<String> highestRatedRestaurantsLogos = highestRatedRestaurants.stream()
                .map(Restaurant::getLogoBase64)
                .collect(Collectors.toList());

        model.addAttribute("newestRestaurants", newestRestaurants);
        model.addAttribute("highestRatedRestaurants", highestRatedRestaurants);
        model.addAttribute("newestRestaurantsLogos", newestRestaurantsLogos);
        model.addAttribute("highestRatedRestaurantsLogos", highestRatedRestaurantsLogos);

        return "home";
    }

}