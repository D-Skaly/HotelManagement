package com.Java5.AdminManagerController;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.Java5.model.Room;
import com.Java5.service.RoomService;
import com.Java5.service.RoomTypeService;
import com.Java5.service.StatusService;

import jakarta.servlet.ServletContext;

@Controller
@RequestMapping("/admin/roommanager")
public class RoomManagerController {

    @Autowired
    RoomService roomService;

    @Autowired
    RoomTypeService roomTypeService;

    @Autowired
    StatusService statusService;

    @Autowired
    ServletContext app;

    @GetMapping("/")
    public String showRoomList(Model model) {
        model.addAttribute("room", new Room());
        model.addAttribute("rooms", roomService.getAllRooms());
        model.addAttribute("roomTypes", roomTypeService.getAllRoomTypes());
        model.addAttribute("statuses", statusService.getAllStatuses());
        model.addAttribute("activeTab", "room-list");
        return "/admin/RoomManager";
    }

    @GetMapping("/edit/{roomID}")
    public String editRoom(@PathVariable int roomID, Model model) {
        Optional<Room> roomOpt = roomService.getRoomById(roomID);
        if (roomOpt.isPresent()) {
            model.addAttribute("room", roomOpt.get());
            model.addAttribute("rooms", roomService.getAllRooms());
            model.addAttribute("roomTypes", roomTypeService.getAllRoomTypes());
            model.addAttribute("statuses", statusService.getAllStatuses());
            model.addAttribute("activeTab", "room-edition");
        } else {
            model.addAttribute("error", "Room not found");
            model.addAttribute("activeTab", "room-list");
        }
        return "admin/RoomManager";
    }

    @PostMapping("/update")
    public String updateRoom(@ModelAttribute Room room, 
                             @RequestParam("imageFile1") MultipartFile imageFile1,
                             @RequestParam("imageFile2") MultipartFile imageFile2, 
                             @RequestParam("imageFile3") MultipartFile imageFile3,
                             @RequestParam("imageFile4") MultipartFile imageFile4, 
                             @RequestParam("imageFile5") MultipartFile imageFile5,
                             @RequestParam("imageFile6") MultipartFile imageFile6) throws IllegalStateException, IOException {

        MultipartFile[] imageFiles = { imageFile1, imageFile2, imageFile3, imageFile4, imageFile5, imageFile6 };
        saveUploadedFiles(imageFiles, room);

        roomService.saveRoomWithImages(room, imageFiles);
        return "redirect:/admin/roommanager/";
    }

    @GetMapping("/delete")
    public String deleteRoom(@RequestParam int id) {
        roomService.deleteRoom(id);
        return "redirect:/admin/roommanager/";
    }

    private void saveUploadedFiles(MultipartFile[] imageFiles, Room room) throws IOException {
        String uploadDir = app.getRealPath("/upload/");
        Path uploadPath = Paths.get(uploadDir);
        if (!Files.exists(uploadPath)) {
            Files.createDirectories(uploadPath);
        }

        for (int i = 0; i < imageFiles.length; i++) {
            MultipartFile imageFile = imageFiles[i];
            if (!imageFile.isEmpty()) {
                String fileName = imageFile.getOriginalFilename();
                Path filePath = uploadPath.resolve(fileName);
                Files.copy(imageFile.getInputStream(), filePath, StandardCopyOption.REPLACE_EXISTING);

                switch (i) {
                    case 0:
                        room.setImage1(fileName);
                        break;
                    case 1:
                        room.setImage2(fileName);
                        break;
                    case 2:
                        room.setImage3(fileName);
                        break;
                    case 3:
                        room.setImage4(fileName);
                        break;
                    case 4:
                        room.setImage5(fileName);
                        break;
                    case 5:
                        room.setImage6(fileName);
                        break;
                }
            }
        }
    }
}
