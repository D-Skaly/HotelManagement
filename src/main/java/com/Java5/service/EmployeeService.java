package com.Java5.service;

import com.Java5.DAO.EmployeeDao;
import com.Java5.model.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class EmployeeService {

    private final EmployeeDao employeeDao;

    @Autowired
    public EmployeeService(EmployeeDao employeeDao) {
        this.employeeDao = employeeDao;
    }

    // Lấy danh sách tất cả các nhân viên
    public List<Employee> getAllEmployees() {
        return employeeDao.findAll();
    }

    // Lấy thông tin nhân viên bằng username
    public Optional<Employee> getEmployeeByUsername(String username) {
        return employeeDao.findById(username);
    }

    // Thêm một nhân viên mới
    public Employee addEmployee(Employee employee) {
        return employeeDao.save(employee);
    }

    // Cập nhật thông tin của một nhân viên
    public Employee updateEmployee(Employee employee) {
        return employeeDao.save(employee);
    }

    // Xóa một nhân viên
    public void deleteEmployee(String username) {
        employeeDao.deleteById(username);
    }
    
    // Tìm khách hàng với phân trang và sắp xếp
    public Page<Employee> findCustomer(Pageable pageable) {
        return employeeDao.findAll(pageable);
    }

    // Tìm kiếm khách hàng với từ khóa, phân trang và sắp xếp
    public Page<Employee> searchEmployee(String keyword, Pageable pageable) {
        return employeeDao.findByKeyword(keyword, pageable);
    }
    
    
}
