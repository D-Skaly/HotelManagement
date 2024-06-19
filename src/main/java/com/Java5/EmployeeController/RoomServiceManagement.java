package com.Java5.EmployeeController;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/employee")
public class RoomServiceManagement {

	@GetMapping("/RoomServiceManagement")
	public String roomServiceManagement(Model model) {
		return "Employee/RoomServiceStaff";
	}
	
}
