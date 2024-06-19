package com.Java5.CustomerController;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class AboutController {
	
	private static final Logger logger = LoggerFactory.getLogger(AboutController.class);

	@GetMapping("about")
	public String About() {
		logger.info("GET /about - Displaying about page");
		return "/Customer/About";
	}
	
}
