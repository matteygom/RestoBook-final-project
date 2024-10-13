package pl.coderslab.RestoBook.service;

import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.security.SecureRandom;

@Service
public class CaptchaService {

    private final SecureRandom random = new SecureRandom();

    public String generateCaptcha() {
        int captcha = 100000 + random.nextInt(900000); // generowanie 6-cyfrowej liczby
        return String.valueOf(captcha);
    }

    public void setCaptchaInSession(HttpSession session, String captcha) {
        session.setAttribute("CAPTCHA", captcha);
    }

    public boolean validateCaptcha(HttpSession session, String userCaptcha) {
        String captcha = (String) session.getAttribute("CAPTCHA");
        return captcha != null && captcha.equals(userCaptcha);
    }
}
