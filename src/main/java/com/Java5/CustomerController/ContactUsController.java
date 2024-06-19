package com.Java5.CustomerController;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ContactUsController {
	@GetMapping("/contact")
	public String Contact(Model model) {
		return "Customer/ContactUs";
	}
}
