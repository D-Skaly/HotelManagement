package com.Java5.AdminManagerController;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Java5.service.AdminService;
import com.Java5.model.Admin;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	AdminService adminService;

	@GetMapping("/home")
	public String Admin(Model model) {

		return "/admin/AdminHome";
	}

	@GetMapping("/myprofile")
	public String viewProfile(Model model) {
		String userName = "admin";
		Optional<Admin> optionalAdmin = adminService.getAdminByUsername(userName);
		if (optionalAdmin.isPresent()) {
			Admin admin = optionalAdmin.get();
			model.addAttribute("admin", admin);
		} else {
			// Xử lý trường hợp không tìm thấy admin
			// Ví dụ: Chuyển hướng đến trang lỗi hoặc hiển thị thông báo lỗi
		}
		return "/admin/AdminManager";
	}

	@PostMapping("/myprofile/update")
	public String updateProfile(Admin admin) {
		adminService.updateAdmin(admin);
		return "/admin/AdminManager";
	}

}
