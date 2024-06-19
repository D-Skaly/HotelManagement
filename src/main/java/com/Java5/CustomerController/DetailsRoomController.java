package com.Java5.CustomerController;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.Java5.model.Room;
import com.Java5.service.RoomService;

@Controller
@RequestMapping("/customer")
public class DetailsRoomController {

	@Autowired
	private RoomService roomService;
	
	

	@GetMapping("/DetailsRoom/{roomID}")
	public String editRoomDetail(@PathVariable int roomID, Model model) {
		Optional<Room> roomOpt = roomService.getRoomById(roomID);
		Room room = roomOpt.orElse(null);
		if (roomOpt.isPresent()) {
			model.addAttribute("room", room);
		}
		return "/Customer/Details";
	}

}
