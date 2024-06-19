package com.Java5.AdminManagerController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BookingDetailsManagerController {

	@RequestMapping("admin/bookingDetailsManager")
	public String show() {
		return "/admin/BookingDetailsManager";
	}
}
