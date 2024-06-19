package com.Java5.service;

import com.Java5.DAO.AdminDao;
import com.Java5.model.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class AdminService {

    private final AdminDao adminDao;

    @Autowired
    public AdminService(AdminDao adminDao) {
        this.adminDao = adminDao;
    }

    // Lấy danh sách tất cả các admin
    public List<Admin> getAllAdmins() {
        return adminDao.findAll();
    }

    // Lấy thông tin admin bằng username
    public Optional<Admin> getAdminByUsername(String userName) {
        return adminDao.findById(userName);
    }

    // Thêm một admin mới
    public Admin addAdmin(Admin admin) {
        return adminDao.save(admin);
    }

    // Cập nhật thông tin của một admin
    public Admin updateAdmin(Admin admin) {
        return adminDao.save(admin);
    }

    // Xóa một admin
    public void deleteAdmin(String username) {
        adminDao.deleteById(username);
    }
}
