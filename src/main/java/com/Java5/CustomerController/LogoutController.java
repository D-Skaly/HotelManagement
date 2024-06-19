package com.Java5.CustomerController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.Java5.utils.CookieService;
import com.Java5.utils.SessionService;

import jakarta.servlet.http.HttpServletResponse;

@Controller
public class LogoutController {

    @Autowired
    CookieService cookieService;
    
    @Autowired
    SessionService sessionService;

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(HttpServletResponse response) {
        // Invalidate session
        sessionService.remove("user");
        
        // Remove cookies
        cookieService.remove("user");

        // Optionally, add more cookies to be removed
        // cookieService.remove("anotherCookie");

        // Redirect to login page or home page
        return "redirect:/";
    }
}