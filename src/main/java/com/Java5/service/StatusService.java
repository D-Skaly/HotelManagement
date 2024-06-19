package com.Java5.service;

import com.Java5.DAO.StatusDao;
import com.Java5.model.Status;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;

@Service
public class StatusService {

    private final StatusDao statusDao;

    @Autowired
    public StatusService(StatusDao statusDao) {
        this.statusDao = statusDao;
    }

    // Lấy danh sách tất cả các trạng thái
    public List<Status> getAllStatuses() {
        return statusDao.findAll();
    }

    // Lấy thông tin trạng thái bằng ID
    public Optional<Status> getStatusById(int id) {
        return statusDao.findById(id);
    }

    // Thêm một trạng thái mới
    public Status addStatus(Status status) {
        return statusDao.save(status);
    }

    // Cập nhật thông tin của một trạng thái
    public Status updateStatus(Status status) {
        return statusDao.save(status);
    }

    // Xóa một trạng thái
    public void deleteStatus(int id) {
        statusDao.deleteById(id);
    }
}
