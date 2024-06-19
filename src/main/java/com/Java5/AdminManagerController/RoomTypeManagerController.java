package com.Java5.AdminManagerController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Java5.model.RoomType;
import com.Java5.service.RoomTypeService;

@Controller
@RequestMapping("/admin")
public class RoomTypeManagerController {

	@Autowired
	RoomTypeService roomTypeService;

	@GetMapping("/roomTypeManager")
	public String show(Model model, @RequestParam(value = "activeTab", defaultValue = "room-list") String activeTab) {
		model.addAttribute("roomTypes", roomTypeService.getAllRoomTypes());
		model.addAttribute("roomType", new RoomType());
		model.addAttribute("activeTab", activeTab);
		return "/admin/RoomTypeManager";
	}

	@PostMapping("/roomTypeManager/create")
	public String createRoomType(@ModelAttribute RoomType roomType) {
		roomTypeService.addRoomType(roomType);
		return "redirect:/admin/roomTypeManager";
	}
	@RequestMapping("/roomTypeManager/update")
	public String updateRoomType(RoomType roomType) {
	    roomTypeService.updateRoomType(roomType);
	    return "redirect:/admin/roomTypeManager";
	}


	@GetMapping("/roomTypeManager/edit/{id}")
	public String editRoomType(@PathVariable int id, Model model) {
		model.addAttribute("roomTypes", roomTypeService.getAllRoomTypes());
		model.addAttribute("roomType", roomTypeService.getRoomTypeById(id).orElse(new RoomType()));
		model.addAttribute("activeTab", "room-edition");
		return "admin/RoomTypeManager";
	}

	@GetMapping("/roomTypeManager/delete/{id}")
	public String deleteRoomType(@PathVariable int id) {
		roomTypeService.deleteRoomType(id);
		return "redirect:/admin/roomTypeManager";
	}
	
	@GetMapping("/roomTypeManager/new")
	public String newRoomType(Model model) {
	    model.addAttribute("roomType", new RoomType());
	    model.addAttribute("activeTab", "room-edition");
	    return "admin/RoomTypeManager";
	}


}
