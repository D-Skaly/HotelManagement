package com.Java5.service;

import com.Java5.DAO.CustomerDao;
import com.Java5.model.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CustomerService {
	 @Autowired
    private final CustomerDao customerDao;

   
    public CustomerService(CustomerDao customerDao) {
        this.customerDao = customerDao;
    }
    
    public boolean existsByUsername(String username) {
        return customerDao.existsByUserName(username);
    }

    // Lấy danh sách tất cả các khách hàng
    public List<Customer> getAllCustomers() {
        return customerDao.findAll();
    }
    

    // Lấy thông tin khách hàng bằng username
    public Optional<Customer> getCustomerByUsername(String userName) {
        return customerDao.findById(userName);
    }

    // Thêm một khách hàng mới
    public Customer addCustomer(Customer customer) {
        return customerDao.save(customer);
    }

    // Cập nhật thông tin của một khách hàng
    public Customer updateCustomer(Customer customer) {
        return customerDao.save(customer);
    }

    // Xóa một khách hàng
    public void deleteCustomer(String username) {
        customerDao.deleteById(username);
    }
    
    // Kiểm tra sự tồn tại của username
    public boolean usernameExists(String username) {
        return customerDao.existsById(username);
    }

    // Kiểm tra email có trùng khớp với username hay không
    public boolean emailMatches(String username, String email) {
        Optional<Customer> customer = customerDao.findById(username);
        return customer.isPresent() && customer.get().getEmail().equals(email);
    }

    // Gửi liên kết đặt lại mật khẩu (dummy implementation)
    public void sendResetLink(String email) {
        // Implement email sending logic here
        System.out.println("Email sent to: " + email);
    }
    
    // Tìm khách hàng với phân trang và sắp xếp
    public Page<Customer> findCustomer(Pageable pageable) {
        return customerDao.findAll(pageable);
    }

    // Tìm kiếm khách hàng với từ khóa, phân trang và sắp xếp
    public Page<Customer> searchCustomers(String keyword, Pageable pageable) {
        return customerDao.findByKeyword(keyword, pageable);
    }
    
    
}
