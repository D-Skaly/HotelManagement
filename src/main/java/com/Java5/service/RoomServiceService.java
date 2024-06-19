package com.Java5.service;

import com.Java5.DAO.RoomServiceDao;
import com.Java5.model.RoomService;
import com.Java5.model.RoomServiceId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class RoomServiceService {

    private final RoomServiceDao roomServiceDao;

    @Autowired
    public RoomServiceService(RoomServiceDao roomServiceDao) {
        this.roomServiceDao = roomServiceDao;
    }

    // Lấy danh sách tất cả các dịch vụ phòng
    public List<RoomService> getAllRoomServices() {
        return roomServiceDao.findAll();
    }

    // Lấy thông tin dịch vụ phòng bằng ID
    public Optional<RoomService> getRoomServiceById(RoomServiceId id) {
        return roomServiceDao.findById(id);
    }

    // Thêm một dịch vụ phòng mới
    public RoomService addRoomService(RoomService roomService) {
        return roomServiceDao.save(roomService);
    }

    // Cập nhật thông tin của một dịch vụ phòng
    public RoomService updateRoomService(RoomService roomService) {
        return roomServiceDao.save(roomService);
    }

    // Xóa một dịch vụ phòng
    public void deleteRoomService(RoomServiceId id) {
        roomServiceDao.deleteById(id);
    }
}
