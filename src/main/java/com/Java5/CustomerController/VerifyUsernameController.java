package com.Java5.CustomerController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Java5.service.CustomerService;

@Controller
public class VerifyUsernameController {
    @Autowired
    private CustomerService customerService;

    @GetMapping("/Customer/VerifyUsername")
    public String showVerifyUsernamePage() {
        return "Customer/FindUsername";
    }

    @PostMapping("/Customer/VerifyUsername")
    public String verifyUsername(@RequestParam("username") String username, Model model) {
        if (customerService.usernameExists(username)) {
            model.addAttribute("username", username);
            return "Customer/ForgotPassword";
        } else {
            model.addAttribute("error", "Username không tồn tại");
            return "Customer/FindUsername";
        }
    }
}