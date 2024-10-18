package pl.coderslab.RestoBook.controller;

import lombok.RequiredArgsConstructor;
import org.slf4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pl.coderslab.RestoBook.service.EmailService;

@Controller
@RequiredArgsConstructor
public class ContactController {

    private final EmailService emailService;
    private final Logger logger;

    @GetMapping("/contactPage")
    public String showContactForm(Model model) {
        return "contact";
    }

    @PostMapping("/sendContactMessagePage")
    public String sendContactMessage(
            @RequestParam String name,
            @RequestParam String email,
            @RequestParam String subject,
            @RequestParam String message,
            Model model) {

        try {
            emailService.sendSimpleMessage("mgomolka@smartware.pl", subject,
                    "Wiadomość od: " + name + "\n" +
                            "Email: " + email + "\n\n" +
                            message);

            model.addAttribute("success", "Wiadomość została wysłana.");
        } catch (Exception e) {
            model.addAttribute("error", "Wystąpił błąd przy wysyłaniu wiadomości.");
            e.printStackTrace();
        }

        return "redirect:/contactPage";
    }
}
