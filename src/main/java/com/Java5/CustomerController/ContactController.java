package com.Java5.CustomerController;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ContactController {
	@GetMapping("/ContactUs")
	public String contact(Model model) {
		return "Customer/Contact";
	}
}
