package com.Java5.CustomerController;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Java5.model.Room;
import com.Java5.service.RoomService;

import jakarta.servlet.ServletContext;

@Controller
@RequestMapping("/customer")
public class CustomerHomepageController {

	@Autowired
	private ServletContext app;
	@Autowired
	private RoomService roomService;

	@GetMapping("/Homepage")
	public String HomePage(Model model) {

		model.addAttribute("rooms", roomService.getAllRooms());
		return "/Customer/CusHomepage";
	}

	@GetMapping("edit/{roomID}")
	public String editRoomDetail(@PathVariable int roomID, Model model) {
		Optional<Room> roomOpt = roomService.getRoomById(roomID);
		 Room room = roomOpt.orElse(null);
		if (roomOpt.isPresent()) {
			model.addAttribute("room", room);
		}
		return "/Customer/Details";
	}
}
