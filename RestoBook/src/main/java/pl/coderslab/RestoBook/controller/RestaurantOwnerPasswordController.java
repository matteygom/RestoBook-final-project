package pl.coderslab.RestoBook.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import javax.validation.constraints.NotBlank;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import pl.coderslab.RestoBook.domain.User;
import pl.coderslab.RestoBook.service.UserService;

import java.util.Optional;

@Controller
public class RestaurantOwnerPasswordController {

    private final UserService userService;

    @Autowired
    public RestaurantOwnerPasswordController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/owner/passwordchange/{userId}")
    public String showPasswordChangeForm(@PathVariable Long userId, Model model) {

        final Optional<User> user = userService.findById(userId);
        model.addAttribute("userId", userId);
        model.addAttribute("user", user);
        return "restaurant-owner-passchange";
    }

    @PostMapping("/owner/passwordchange/{userId}")
    public String changePassword(@PathVariable Long userId,
                                 @RequestParam("currentPassword") @NotBlank String currentPassword,
                                 @RequestParam("newPassword") @NotBlank String newPassword,
                                 @RequestParam("confirmPassword") @NotBlank String confirmPassword,
                                 RedirectAttributes redirectAttributes) {

        if (!newPassword.equals(confirmPassword)) {
            // Add error handling here
            return "restaurant-owner-passchange";
        }

        boolean success = userService.changePassword(userId, currentPassword, newPassword);
        if (!success) {
            // Add error handling here
            return "restaurant-owner-passchange";
        }

        redirectAttributes.addAttribute("userId", userId);
        return "redirect:/owner/dashboard/{userId}";
    }
}