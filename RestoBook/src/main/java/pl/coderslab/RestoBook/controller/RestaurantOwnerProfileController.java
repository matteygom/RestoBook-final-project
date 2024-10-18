package pl.coderslab.RestoBook.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import pl.coderslab.RestoBook.domain.Foodie;
import pl.coderslab.RestoBook.domain.User;
import pl.coderslab.RestoBook.repository.FoodieRepository;
import pl.coderslab.RestoBook.repository.UserRepository;
import pl.coderslab.RestoBook.service.FoodieService;

import javax.validation.Valid;

@Controller
public class RestaurantOwnerProfileController {

    @Autowired
    private UserRepository userRepository;

    @GetMapping("/owner/profile/{userId}")
    public String getFoodieDetails(@PathVariable Long userId, Model model) {
        User user = userRepository.findById(userId).orElse(null);
        if (user != null) {
            model.addAttribute("user", user);
            return "restaurant-owner-profile";
        } else {
            return "error404";
        }
    }

}