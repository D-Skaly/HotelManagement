package com.Java5.service;

import com.Java5.DAO.PaymentDao;
import com.Java5.model.Payment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class PaymentService {

    private final PaymentDao paymentDao;

    @Autowired
    public PaymentService(PaymentDao paymentDao) {
        this.paymentDao = paymentDao;
    }

    // Lấy danh sách tất cả các thanh toán
    public List<Payment> getAllPayments() {
        return paymentDao.findAll();
    }

    // Lấy thông tin thanh toán bằng ID
    public Optional<Payment> getPaymentById(int id) {
        return paymentDao.findById(id);
    }

    // Thêm một thanh toán mới
    public Payment addPayment(Payment payment) {
        return paymentDao.save(payment);
    }

    // Cập nhật thông tin của một thanh toán
    public Payment updatePayment(Payment payment) {
        return paymentDao.save(payment);
    }

    // Xóa một thanh toán
    public void deletePayment(int id) {
        paymentDao.deleteById(id);
    }
}
