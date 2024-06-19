package com.Java5.service;

import com.Java5.DAO.BookingDetailDao;
import com.Java5.model.BookingDetail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class BookingDetailService {

    private final BookingDetailDao bookingDetailDao;

    @Autowired
    public BookingDetailService(BookingDetailDao bookingDetailDao) {
        this.bookingDetailDao = bookingDetailDao;
    }

    // Lấy danh sách tất cả các chi tiết đặt phòng
    public List<BookingDetail> getAllBookingDetails() {
        return bookingDetailDao.findAll();
    }

    // Lấy thông tin chi tiết đặt phòng bằng ID
    public Optional<BookingDetail> getBookingDetailById(int id) {
        return bookingDetailDao.findById(id);
    }

    // Thêm một chi tiết đặt phòng mới
    public BookingDetail addBookingDetail(BookingDetail bookingDetail) {
        return bookingDetailDao.save(bookingDetail);
    }

    // Cập nhật thông tin của một chi tiết đặt phòng
    public BookingDetail updateBookingDetail(BookingDetail bookingDetail) {
        return bookingDetailDao.save(bookingDetail);
    }

    // Xóa một chi tiết đặt phòng
    public void deleteBookingDetail(int id) {
        bookingDetailDao.deleteById(id);
    }
}
