package com.Java5.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Java5.DAO.CustomerDao;
import com.Java5.model.Customer;

@Service
public class CustomerServiceImpl implements CustomerService2 {
    @Autowired
    private CustomerDao customerDao;

    @Override
    public boolean emailMatches(String username, String email) {
        Customer customer = customerDao.findById(username).orElse(null);
        return customer != null && customer.getEmail().equals(email);
    }

    @Override
    public void updatePasswordWithCode(String username, String resetCode) {
        Customer customer = customerDao.findById(username).orElse(null);
        if (customer != null) {
            customer.setPassword(resetCode);
            customerDao.save(customer);
        }
    }
}
