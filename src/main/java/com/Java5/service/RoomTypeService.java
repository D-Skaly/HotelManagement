package com.Java5.service;

import com.Java5.DAO.RoomTypeDao;
import com.Java5.model.RoomType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class RoomTypeService {

	 @Autowired
    private final RoomTypeDao roomTypeDao;

   
    public RoomTypeService(RoomTypeDao roomTypeDao) {
        this.roomTypeDao = roomTypeDao;
    }

    // Lấy danh sách tất cả các loại phòng
    public List<RoomType> getAllRoomTypes() {
        return roomTypeDao.findAll();
    }

    // Lấy thông tin loại phòng bằng ID
    public Optional<RoomType> getRoomTypeById(int id) {
        return roomTypeDao.findById(id);
    }

    // Thêm một loại phòng mới
    public RoomType addRoomType(RoomType roomType) {
        return roomTypeDao.save(roomType);
    }

    // Cập nhật thông tin của một loại phòng
    public RoomType updateRoomType(RoomType roomType) {
        return roomTypeDao.save(roomType);
    }

    // Xóa một loại phòng
    public void deleteRoomType(int id) {
        roomTypeDao.deleteById(id);
    }
}
