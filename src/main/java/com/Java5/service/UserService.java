package com.Java5.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Java5.DAO.AdminDao;
import com.Java5.DAO.CustomerDao;
import com.Java5.DAO.EmployeeDao;
import com.Java5.model.Admin;
import com.Java5.model.Customer;
import com.Java5.model.Employee;

@Service
public class UserService {

    @Autowired
    private AdminDao adminDao;

    @Autowired
    private CustomerDao customerDao;

    @Autowired
    private EmployeeDao employeeDao;

    public Optional<Object> getUserByUsername(String username) {
        Admin admin = adminDao.findById(username).orElse(null);
        if (admin != null) {
            return Optional.of(admin);
        }
        
        Customer customer = customerDao.findById(username).orElse(null);
        if (customer != null) {
            return Optional.of(customer);
        }
        
        Employee employee = employeeDao.findById(username).orElse(null);
        if (employee != null) {
            return Optional.of(employee);
        }
        
        return Optional.empty();
    }
}