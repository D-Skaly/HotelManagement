package com.Java5.AdminManagerController;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Java5.model.Status;
import com.Java5.service.StatusService;

@Controller
@RequestMapping("/admin/statusmanager")
public class StatusManagerController {

	@Autowired
	StatusService statusService;

	@GetMapping("/")
	public String show(Model model) {
		List<Status> statuses = statusService.getAllStatuses();
		model.addAttribute("statuses", statuses);
		model.addAttribute("StatusTab", "status-list");
		return "/admin/StatusManager";
	}

	@PostMapping("/add")
	public String addStatus(@ModelAttribute("status") Status status) {
		statusService.addStatus(status);
		return "redirect:/admin/statusmanager/";
	}

	@GetMapping("/edit/{id}")
	public String showEditStatusForm(@PathVariable("id") int id, Model model) {
		Optional<Status> status = statusService.getStatusById(id);
		if (status.isPresent()) {
			model.addAttribute("status", status.get());
			model.addAttribute("StatusTab", "status-edition");
			return "/admin/StatusManager";
		} else {
			model.addAttribute("StatusTab", "status-list");
			List<Status> statuses = statusService.getAllStatuses();
			return "redirect:/admin/statusmanager/";
		}
	}

	@GetMapping("/delete/{id}")
	public String deleteStatus(@PathVariable("id") int id) {
		statusService.deleteStatus(id);
		return "redirect:/admin/statusmanager/";
	}
}
