package com.Java5.service;

import com.Java5.DAO.ServiceDao;
import com.Java5.model.Service;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.Optional;

@org.springframework.stereotype.Service
public class ServiceService {

    private final ServiceDao serviceDao;

    @Autowired
    public ServiceService(ServiceDao serviceDao) {
        this.serviceDao = serviceDao;
    }

    // Lấy danh sách tất cả các dịch vụ
    public List<Service> getAllServices() {
        return serviceDao.findAll();
    }

    // Lấy thông tin dịch vụ bằng ID
    public Optional<Service> getServiceById(int id) {
        return serviceDao.findById(id);
    }

    // Thêm một dịch vụ mới
    public Service addService(Service service) {
        return serviceDao.save(service);
    }

    // Cập nhật thông tin của một dịch vụ
    public Service updateService(Service service) {
        return serviceDao.save(service);
    }

    // Xóa một dịch vụ
    public void deleteService(int id) {
        serviceDao.deleteById(id);
    }
}
