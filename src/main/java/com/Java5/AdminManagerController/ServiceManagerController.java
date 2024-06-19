package com.Java5.AdminManagerController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Java5.model.Service;
import com.Java5.service.ServiceService;

@Controller
@RequestMapping("/admin/servicemanager")
public class ServiceManagerController {

	@Autowired
	ServiceService serviceService;
	@RequestMapping("/")
	public String showService() {
		return "/admin/ServicesManager";
	}
	@GetMapping("/add")
	public String newService(@ModelAttribute Service service) {
		serviceService.addService(service);
		return "/admin/ServicesManager";
	}
}
