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

@Controller
@RequestMapping("/restaurants")
public class RestaurantController {

    private final RestaurantService restaurantService;

    @Autowired
    public RestaurantController(RestaurantService restaurantService) {
        this.restaurantService = restaurantService;
    }

    @GetMapping
    public String showAllRestaurants(Model model) {
        List<Restaurant> restaurants = restaurantService.findAll();
        model.addAttribute("restaurants", restaurants);
        return "views/home";
    }

    @GetMapping("/add")
    public String showAddForm(Model model) {
        model.addAttribute("restaurant", new Restaurant());
        return "views/addRestaurant";
    }

//    @PostMapping("/add")
//    public String addRestaurant(@Valid @ModelAttribute Restaurant restaurant, BindingResult result) {
//        if (result.hasErrors()) {
//            return "views/addRestaurant";
//        }
//        restaurantService.save(restaurant);
//        return "redirect:/restaurants";
//    }

    @PostMapping("/add")
    public String addRestaurant(@Valid @ModelAttribute Restaurant restaurant,
                                @RequestParam(value = "logo", required = false) MultipartFile logo,
                                BindingResult result) {
        if (result.hasErrors()) {
            return "views/addRestaurant";
        }
        try {
            if (logo != null && !logo.isEmpty()) {
                byte[] bytes = logo.getBytes();
                if (bytes.length <= 250 * 1024) {
                    restaurant.setLogo(bytes);
                } else {
                    result.rejectValue("logo", "error.restaurant", "File size exceeds the maximum allowed size (250 KB)");
                    return "views/addRestaurant";
                }
            }
            restaurantService.save(restaurant);
        } catch (IOException e) {
            result.rejectValue("logo", "error.restaurant", "Error uploading file");
            return "views/addRestaurant";
        }
        return "redirect:/restaurants";
    }

    @GetMapping("/edit/{id}")
    public String showEditForm(@PathVariable Long id, Model model) {
        Restaurant restaurant = restaurantService.findById(id).orElseThrow(() -> new IllegalArgumentException("Invalid restaurant Id:" + id));
        model.addAttribute("restaurant", restaurant);
        return "views/editRestaurant";
    }

    @PostMapping("/edit/{id}")
    public String editRestaurant(@PathVariable Long id, @Valid @ModelAttribute Restaurant restaurant, BindingResult result) {
        if (result.hasErrors()) {
            return "views/editRestaurant";
        }
        restaurant.setId(id);
        restaurantService.save(restaurant);
        return "redirect:/restaurants";
    }

    @GetMapping("/delete/{id}")
    public String deleteRestaurant(@PathVariable Long id) {
        Restaurant restaurant = restaurantService.findById(id).orElseThrow(() -> new IllegalArgumentException("Invalid restaurant Id:" + id));
        restaurantService.delete(restaurant);
        return "redirect:/restaurants";
    }
}