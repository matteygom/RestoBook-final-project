package pl.coderslab.RestoBook.service;

import lombok.RequiredArgsConstructor;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class EmailService {

    private final JavaMailSender emailSender;

    public void sendSimpleMessage(String to, String subject, String text) {
        try {
            SimpleMailMessage message = new SimpleMailMessage();
            message.setFrom("mgomolka@smartware.pl");
            message.setTo(to);
            message.setSubject(subject);
            message.setText(text);
            emailSender.send(message);
            System.out.println("E-mail został wysłany.");
        } catch (Exception e) {
            e.printStackTrace();
            System.err.println("Błąd wysyłania e-maila: " + e.getMessage());
        }
    }
}
