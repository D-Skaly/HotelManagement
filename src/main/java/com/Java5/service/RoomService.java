package com.Java5.service;

import com.Java5.DAO.RoomDao;
import com.Java5.model.Room;

import jakarta.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Page;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

@Service
public class RoomService {

	private final RoomDao roomDao;

	@Autowired
	public RoomService(RoomDao roomDao) {
		this.roomDao = roomDao;
	}

	// Lấy danh sách tất cả các phòng
	public List<Room> getAllRooms() {
		return roomDao.findAll();
	}

	// Lấy thông tin phòng bằng ID
	public Optional<Room> getRoomById(int id) {
		return roomDao.findById(id);
	}

	// Thêm một phòng mới
	public Room addRoom(Room room) {
		return roomDao.save(room);
	}

	// Cập nhật thông tin của một phòng
	public Room updateRoom(Room room) {
		return roomDao.save(room);
	}

	// Xóa một phòng
	public void deleteRoom(int id) {
		roomDao.deleteById(id);
	}

	public Page<Room> findRoomPage(Pageable page) {
		return roomDao.findRoomPage(page);
	}

	@Transactional
	public void saveRoomWithImages(Room room, MultipartFile[] imageFiles) {
		// Lưu thông tin phòng vào cơ sở dữ liệu
		roomDao.save(room);

		// Thư mục lưu trữ hình ảnh
		String uploadDir = "uploads";

		// Tạo thư mục nếu chưa tồn tại
		Path uploadPath = Paths.get(uploadDir);
		if (!Files.exists(uploadPath)) {
			try {
				Files.createDirectories(uploadPath);
			} catch (IOException e) {
				throw new RuntimeException("Could not create upload directory: " + uploadPath, e);
			}
		}

		// Lưu các tệp hình ảnh
		List<String> imageNames = Arrays.asList(room.getImage1(), room.getImage2(), room.getImage3(), room.getImage4(),
				room.getImage5(), room.getImage6());
		for (int i = 0; i < imageFiles.length; i++) {
			MultipartFile imageFile = imageFiles[i];
			if (!imageFile.isEmpty()) {
				try {
					String imageName = imageNames.get(i);
					Path filePath = uploadPath.resolve(imageName);
					Files.write(filePath, imageFile.getBytes());
				} catch (IOException e) {
					throw new RuntimeException("Failed to save image: " + imageFile.getOriginalFilename(), e);
				}
			}
		}
	}

	// Tìm kiếm phòng với từ khóa, phân trang và sắp xếp
	public Page<Room> searchRooms(String keyword, Pageable pageable) {
		return roomDao.findByKeyword(keyword, pageable);
	}

	// Tìm phòng với phân trang và sắp xếp
	public Page<Room> findRoom(Pageable pageable) {
		return roomDao.findAll(pageable);
	}

}
