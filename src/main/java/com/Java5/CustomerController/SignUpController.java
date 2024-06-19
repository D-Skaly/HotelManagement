package com.Java5.CustomerController;

import com.Java5.model.Customer;
import com.Java5.service.CustomerService;
import jakarta.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/customer")
public class SignUpController {

	private static final Logger logger = LoggerFactory.getLogger(SignUpController.class);

	
	@Autowired
	CustomerService customerService;

	@Autowired
	HttpServletRequest request;

	@GetMapping("/signUp")
	public String signUp(Model model) {
		logger.info("GET /customer/signUp - Displaying sign up form");
		model.addAttribute("customer", new Customer());
		return "Customer/SignUp";
	}

	@PostMapping("/signUp")
	public String signUpProcess(@Validated 
								@ModelAttribute("customer") Customer customer, 
								BindingResult result,
								Model model) {
		logger.info("POST /customer/signUp - Processing sign up form");
		// Kiểm tra các lỗi xác thực
		if (result.hasErrors()) {
			logger.warn("Validation errors found in sign up form: {}", result.getAllErrors());
			return "Customer/SignUp"; // Nếu có lỗi, quay lại form đăng ký với thông báo lỗi
		}

		// Kiểm tra xác nhận mật khẩu
		if (!customer.getPassword().equals(request.getParameter("confirmPassword"))) {
			logger.warn("Password confirmation does not match for user: {}", customer.getUserName());
			model.addAttribute("nomatchMessage", "Password confirmation does not match");
			return "Customer/SignUp";
		}

		// Kiểm tra username đã tồn tại trong cơ sở dữ liệu chưa
		if (customerService.existsByUsername(customer.getUserName())) {
			logger.warn("Username already exists: {}", customer.getUserName());
			model.addAttribute("duplicateUsernameMessage", "Username already exists");
			return "Customer/SignUp";
		}

		// Nếu không có lỗi, thêm khách hàng mới vào cơ sở dữ liệu
		customer.setActive(true); // Chuyển trạng thái active thành true khi đăng ký thành công
		customerService.addCustomer(customer);
		logger.info("New customer registered successfully: {}", customer.getUserName());
		return "Customer/SignIn"; // Chuyển hướng đến trang đăng nhập sau khi đăng ký thành công
	}
}
