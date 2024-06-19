package com.Java5.AdminManagerController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BookingManagerController {

	@RequestMapping("admin/bookingManager")
	public String show() {
		return "/admin/BookingManager";
	}
}
