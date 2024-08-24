package pl.coderslab.RestoBook.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.RestoBook.domain.Restaurant;
import pl.coderslab.RestoBook.service.RestaurantService;

import jakarta.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/")
public class HomeController {

    private final RestaurantService restaurantService;

    @Autowired
    public HomeController(RestaurantService restaurantService) {
        this.restaurantService = restaurantService;
    }

    @GetMapping(value = {"", "/home"})
    public String showNewestAndTopRatedRestaurants(Model model) {
        model.addAttribute("newestRestaurants", restaurantService.findTop6NewestRestaurants());
        model.addAttribute("highestRatedRestaurants", restaurantService.findTop5HighestRatedRestaurants());
        return "views/home";
    }

}