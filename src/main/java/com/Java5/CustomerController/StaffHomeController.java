package com.Java5.CustomerController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StaffHomeController {

	@GetMapping("/homestaff")
	public String showHome() {
		return "StaffHomePage";
	}
}
