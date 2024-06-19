package com.Java5.CustomerController;

import com.Java5.model.Admin;
import com.Java5.model.Customer;
import com.Java5.model.Employee;
import com.Java5.service.UserService;
import com.Java5.utils.CookieService;
import com.Java5.utils.ParamService;
import com.Java5.utils.SessionService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/customer")
public class SignInController {
	
	private static final Logger logger = LoggerFactory.getLogger(SignInController.class);
	
	@Autowired
	ParamService paramService;
	
	@Autowired
	CookieService cookieService;
	@Autowired
	SessionService sessionService;
	@Autowired
	UserService userService;

	@GetMapping("/signIn")
	public String signInPage() {
		logger.info("Displaying sign-in page.");
		return "/Customer/SignIn";
	}

	@PostMapping("/signIn")
	public String signIn(@RequestParam String username, @RequestParam String password,
			@RequestParam(required = false) boolean remember, RedirectAttributes redirectAttributes) {
		
		var user = userService.getUserByUsername(username).orElse(null);

		if (user != null) {
			String userPassword = "";
			String role = "";
			if (user instanceof Admin) {
				userPassword = ((Admin) user).getPassword();
				role = "Admin";
			} else if (user instanceof Customer) {
				userPassword = ((Customer) user).getPassword();
				role = "Customer";
			} else if (user instanceof Employee) {
				userPassword = ((Employee) user).getPassword();
				role = "Employee";
			}

			if (password.equals(userPassword)) {
				sessionService.set("username", username);
				sessionService.set("role", role);
				if (remember) {
					cookieService.add("username", username, 1);
				} else {
					cookieService.remove("username");
				}
				
				logger.info("{} [{}] signed in successfully.", role, username);

				if ("Admin".equals(role)) {
					return "redirect:/admin/home";
				} else if ("Employee".equals(role)) {
					return "redirect:/employee/Homepage";
				} else {
					return "redirect:/customer/Homepage";
				}
			}
		}
		logger.warn("Sign-in attempt for user [{}] failed: invalid username or password.", username);
		redirectAttributes.addFlashAttribute("message", "Invalid username or password");
		return "redirect:/customer/signIn";
	}
}
