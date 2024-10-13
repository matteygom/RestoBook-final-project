package pl.coderslab.RestoBook.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import pl.coderslab.RestoBook.domain.Restaurant;
import pl.coderslab.RestoBook.service.RestaurantService;


import javax.validation.Valid;
import java.io.IOException;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Controller
@RequestMapping
public class RestaurantController {


    private final RestaurantService restaurantService;

    @Autowired
    public RestaurantController(RestaurantService restaurantService) {
        this.restaurantService = restaurantService;
    }

    @GetMapping("/restaurants")
    public String showAllRestaurants(Model model) {
        List<Restaurant> restaurantsNoLogo = restaurantService.findAll();
        List<Restaurant> newestRestaurantsExtended = restaurantService.findTop10NewestRestaurants();

        List<String> allRestaurantsLogos = restaurantsNoLogo.stream()
                .map(Restaurant::getLogoBase64)
                .toList();

        model.addAttribute("restaurantsNoLogo", restaurantsNoLogo);
        model.addAttribute("restaurants", allRestaurantsLogos);
        model.addAttribute("restaurantsTopNewest", newestRestaurantsExtended);
        return "restaurant-list";
    }

    @GetMapping("/restaurantDetail/{restaurantId}")
    public String getRestaurantDetail(@PathVariable Long restaurantId, Model model) {
        Optional<Restaurant> restaurant = restaurantService.findById(restaurantId);
        model.addAttribute("restaurant", restaurant);
        return "/restaurant-detail";
    }


}