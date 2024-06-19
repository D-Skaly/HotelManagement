package com.Java5.EmployeeController;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/employee")
public class EmployeeHomepage {
	
	@GetMapping("/Dashboard")
	public String homepage(Model model) {
		return "Employee/CustomerStaff";
	}
}