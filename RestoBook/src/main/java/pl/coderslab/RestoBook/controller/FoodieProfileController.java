package pl.coderslab.RestoBook.controller;

import pl.coderslab.RestoBook.domain.Foodie;
import pl.coderslab.RestoBook.repository.FoodieRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.RestoBook.service.FoodieService;

import javax.validation.Valid;

@Controller
public class FoodieProfileController {

    @Autowired
    private FoodieRepository foodieRepository;

    @Autowired
    private FoodieService foodieService;

    @GetMapping("/foodie/profile/{foodieId}")
    public String getFoodieDetails(@PathVariable Long foodieId, Model model) {
        Foodie foodie = foodieRepository.findById(foodieId).orElse(null);
        if (foodie != null) {
            model.addAttribute("foodie", foodie);
            return "foodie-profile";
        } else {
            return "error404";
        }
    }

    @GetMapping("/foodie/profile/edit/{foodieId}")
    public String showEditForm(@PathVariable Long foodieId, Model model) {
        Foodie foodie = foodieRepository.findById(foodieId).orElseThrow(() -> new IllegalArgumentException("Invalid foodie Id:" + foodieId));
        model.addAttribute("foodie", foodie);
        return "foodie-profile-edit";
    }

    @PostMapping("/foodie/profile/edit/{foodieId}")
    public String updateFoodieDetails(@PathVariable Long foodieId,
                                      @Valid @ModelAttribute Foodie foodieDetails,
                                      BindingResult result,
                                      Model model) {
        if (result.hasErrors()) {
            model.addAttribute("foodie", foodieDetails);
            return "foodie-profile-edit";
        }

        Foodie foodie = foodieRepository.findById(foodieId).orElse(null);
        if (foodie != null) {
            foodie.setFirstName(foodieDetails.getFirstName());
            foodie.setLastName(foodieDetails.getLastName());
            foodie.setLastName(foodieDetails.getLastName());
            foodie.setBirthDate(foodieDetails.getBirthDate());
            foodie.setEducation(foodieDetails.getEducation());
            foodie.setPhoneNumber(foodieDetails.getPhoneNumber());
            foodie.setStreet(foodieDetails.getStreet());
            foodie.setStreetNumber(foodieDetails.getStreetNumber());
            foodie.setCity(foodieDetails.getCity());
            foodie.setCountry(foodieDetails.getCountry());
            foodie.setZipCode(foodieDetails.getZipCode());
            foodie.setAdditionalInfo(foodieDetails.getAdditionalInfo());

            foodieService.save(foodie);

            model.addAttribute("foodie", foodie);
            return "redirect:/foodie/profile/" + foodie.getId();
        } else {
            return "error404";
        }
    }
}