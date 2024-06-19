package com.Java5.CustomerController;

import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;

import com.Java5.model.Admin;
import com.Java5.model.Room;
import com.Java5.service.RoomService;

import jakarta.servlet.ServletContext;

@Controller
@RequestMapping("/")
public class HomePageController {
	@Autowired
	private ServletContext app;
	@Autowired
	private RoomService roomService;
	static int PAGE_DEFAULT = 0;
	static int PAGE_SIZE = 8;

	@GetMapping
	public String HomePage(Model model, @RequestParam("p") Optional<Integer> p) {
		int currentPage = p.orElse(PAGE_DEFAULT);
		Pageable pageable = PageRequest.of(currentPage, PAGE_SIZE);
		Page<Room> page = roomService.findRoomPage(pageable);
		if (currentPage < PAGE_DEFAULT) {
			currentPage = PAGE_DEFAULT;
			pageable = PageRequest.of(currentPage, PAGE_SIZE);
			page = roomService.findRoomPage(pageable);
		} else if (currentPage >= page.getTotalPages()) {
			currentPage = page.getTotalPages() - 1;
			pageable = PageRequest.of(currentPage, PAGE_SIZE);
			page = roomService.findRoomPage(pageable);
		}
		model.addAttribute("page", page);
		List<Room> rooms = page.getContent();
		model.addAttribute("rooms", rooms);
		return "/Customer/Homepage";
	}

	@GetMapping("edit/{roomID}")
	public String editRoomDetail(@PathVariable int roomID, Model model) {
		Optional<Room> roomOpt = roomService.getRoomById(roomID);
		Room room = roomOpt.orElse(null);
		if (roomOpt.isPresent()) {
			model.addAttribute("room", room);
		}
		return "Customer/Details";
	}

}