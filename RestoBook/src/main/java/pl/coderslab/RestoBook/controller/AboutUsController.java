package pl.coderslab.RestoBook.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import pl.coderslab.RestoBook.domain.Restaurant;
import pl.coderslab.RestoBook.domain.User;
import pl.coderslab.RestoBook.service.FoodieService;
import pl.coderslab.RestoBook.service.RestaurantService;
import pl.coderslab.RestoBook.service.UserService;

import java.util.List;

@Controller
public class AboutUsController {


    private final UserService userService;

    private final RestaurantService restaurantService;

    private final FoodieService foodieService;

    public AboutUsController(UserService userService, RestaurantService restaurantService, FoodieService foodieService) {
        this.userService = userService;
        this.restaurantService = restaurantService;
        this.foodieService = foodieService;
    }

    @GetMapping("/aboutUs")
    public String showLoginRegisterForm(Model model) {


        final long restaurants = restaurantService.countAllRestaurants();
        final long users = userService.countAllUsers();
        final long foodies = foodieService.countAllFoodies();
        final long totalCuisines = restaurantService.countDistinctCuisines();
        final long totalCountries = restaurantService.countDistinctCountries();

        model.addAttribute("users", users);
        model.addAttribute("foodies", foodies);
        model.addAttribute("restaurants", restaurants);
        model.addAttribute("cuisines", totalCuisines);
        model.addAttribute("countries", totalCountries);
        return "about-us";
    }
}