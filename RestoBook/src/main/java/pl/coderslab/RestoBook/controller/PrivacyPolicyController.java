package pl.coderslab.RestoBook.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PrivacyPolicyController {

    @GetMapping("/privacyPolicy")
    public String getPrivacyPolicy() {
        return "privacy-policy";
    }
}
