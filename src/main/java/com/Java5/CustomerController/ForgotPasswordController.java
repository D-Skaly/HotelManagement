package com.Java5.CustomerController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Java5.service.CustomerService2;
import com.Java5.service.MailerService;

import java.security.SecureRandom;

@Controller
public class ForgotPasswordController {
    @Autowired
    private CustomerService2 customerService;

    @Autowired
    private MailerService mailerService;

    private static final String CHARACTERS = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
    private static final int LENGTH = 6;

    private String generateRandomString() {
        SecureRandom random = new SecureRandom();
        StringBuilder sb = new StringBuilder(LENGTH);
        for (int i = 0; i < LENGTH; i++) {
            sb.append(CHARACTERS.charAt(random.nextInt(CHARACTERS.length())));
        }
        return sb.toString();
    }

    @PostMapping("/Customer/ForgotPassword")
    public String verifyEmail(@RequestParam("username") String username, @RequestParam("email") String email, Model model) {
        if (customerService.emailMatches(username, email)) {
            String resetCode = generateRandomString();
            customerService.updatePasswordWithCode(username, resetCode);
            try {
                mailerService.send(email, "Password Reset", "Your password reset code is: " + resetCode);
                model.addAttribute("message", "A reset code has been sent to your email.");
            } catch (Exception e) {
                model.addAttribute("error", "Failed to send email. Please try again later.");
                return "Customer/ForgotPassword";
            }
            return "Customer/Success";
        } else {
            model.addAttribute("error", "Email does not match username.");
            model.addAttribute("username", username);
            return "Customer/ForgotPassword";
        }
    }
}
