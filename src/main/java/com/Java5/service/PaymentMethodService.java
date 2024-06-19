package com.Java5.service;

import com.Java5.DAO.PaymentMethodDao;
import com.Java5.model.PaymentMethod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class PaymentMethodService {

    private final PaymentMethodDao paymentMethodDao;

    @Autowired
    public PaymentMethodService(PaymentMethodDao paymentMethodDao) {
        this.paymentMethodDao = paymentMethodDao;
    }

    // Lấy danh sách tất cả các phương thức thanh toán
    public List<PaymentMethod> getAllPaymentMethods() {
        return paymentMethodDao.findAll();
    }

    // Lấy thông tin phương thức thanh toán bằng ID
    public Optional<PaymentMethod> getPaymentMethodById(int id) {
        return paymentMethodDao.findById(id);
    }

    // Thêm một phương thức thanh toán mới
    public PaymentMethod addPaymentMethod(PaymentMethod paymentMethod) {
        return paymentMethodDao.save(paymentMethod);
    }

    // Cập nhật thông tin của một phương thức thanh toán
    public PaymentMethod updatePaymentMethod(PaymentMethod paymentMethod) {
        return paymentMethodDao.save(paymentMethod);
    }

    // Xóa một phương thức thanh toán
    public void deletePaymentMethod(int id) {
        paymentMethodDao.deleteById(id);
    }
}
