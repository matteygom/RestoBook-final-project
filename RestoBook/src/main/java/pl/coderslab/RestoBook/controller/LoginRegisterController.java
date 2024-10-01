package pl.coderslab.RestoBook.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pl.coderslab.RestoBook.domain.Foodie;
import pl.coderslab.RestoBook.domain.Restaurant;
import pl.coderslab.RestoBook.domain.User;
import pl.coderslab.RestoBook.service.UserService;

import javax.validation.Valid;

@Controller
@RequiredArgsConstructor
public class LoginRegisterController {

    private final UserService userService;

    @GetMapping("/loginRegister")
    public String showLoginRegisterForm(Model model) {
        model.addAttribute("user", new User());
        return "loginRegister";
    }

    @PostMapping("/loginRegister")
    public String processRegistration(
            @ModelAttribute("user") @Valid User user,
            BindingResult bindingResult,
            @RequestParam(required = false) String role,
            Model model) {

        if (bindingResult.hasErrors()) {
            return "loginRegister";
        }

        if ("FOODIE".equalsIgnoreCase(role)) {
            user.setRole(User.Role.FOODIE);
            user.setActive(true);
            Foodie foodie = new Foodie();
            foodie.setUser(user);
            userService.saveFoodie(user, foodie);
        } else if ("RESTAURANT".equalsIgnoreCase(role)) {
            user.setRole(User.Role.RESTAURANT);
            user.setActive(true);
            Restaurant restaurant = new Restaurant();
            restaurant.setUser(user);
            userService.saveRestaurant(user, restaurant);
        } else {
            model.addAttribute("error", "Invalid role specified");
            return "loginRegister";
        }

        return "redirect:/login";
    }
}