package pl.coderslab.RestoBook.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.RestoBook.domain.Restaurant;
import pl.coderslab.RestoBook.service.RestaurantService;


import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping
public class RestaurantController {


    private final RestaurantService restaurantService;

    @Autowired
    public RestaurantController(RestaurantService restaurantService) {
        this.restaurantService = restaurantService;
    }

    @GetMapping("/restaurants")
    public String showAllRestaurants(Model model,
                                     @RequestParam(defaultValue = "0") int page,
                                     @RequestParam(defaultValue = "5") int size,
                                     @RequestParam(required = false) String city,
                                     @RequestParam(required = false) String name) {

        Page<Restaurant> restaurantPage;

        // jak podaje jakieś parametry wyszukiwania, używam ich sobie do filtrowania
        if ((city != null && !city.isEmpty()) || (name != null && !name.isEmpty())) {
            restaurantPage = restaurantService.searchRestaurants(city, name, page, size);
        } else {
            restaurantPage = restaurantService.findAllPaginated(page, size);
        }

        List<Restaurant> all = restaurantService.findAll();
        List<Restaurant> restaurantsNoLogo = restaurantPage.getContent();
        List<Restaurant> newestRestaurantsExtended = restaurantService.findTop10NewestRestaurants();

        List<String> allRestaurantsLogos = all.stream()
                .map(Restaurant::getLogoBase64)
                .toList();

        model.addAttribute("restaurantsNoLogo", restaurantsNoLogo);
        model.addAttribute("restaurants", allRestaurantsLogos);
        model.addAttribute("restaurantsTopNewest", newestRestaurantsExtended);
        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", restaurantPage.getTotalPages());
        model.addAttribute("pageSize", size);
        model.addAttribute("totalRestaurantsCount", restaurantPage.getTotalElements());
        model.addAttribute("currentRestaurantsCount", restaurantsNoLogo.size());

        return "restaurant-list";
    }

    @GetMapping("/restaurantDetail/{restaurantId}")
    public String getRestaurantDetail(@PathVariable Long restaurantId, Model model) {
        Optional<Restaurant> restaurant = restaurantService.findById(restaurantId);
        model.addAttribute("restaurant", restaurant);
        return "/restaurant-detail";
    }


}