package com.Java5.service;

import com.Java5.DAO.BookingDao;
import com.Java5.model.Booking;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Optional;

@Service
public class BookingService {

    private final BookingDao bookingDao;

    @Autowired
    public BookingService(BookingDao bookingDao) {
        this.bookingDao = bookingDao;
    }

    // Lấy danh sách tất cả các đặt phòng
    public List<Booking> getAllBookings() {
        return bookingDao.findAll();
    }

    // Lấy thông tin đặt phòng bằng ID
    public Optional<Booking> getBookingById(int id) {
        return bookingDao.findById(id);
    }

    // Thêm một đặt phòng mới
    public Booking addBooking(Booking booking) {
        return bookingDao.save(booking);
    }

    // Cập nhật thông tin của một đặt phòng
    public Booking updateBooking(Booking booking) {
        return bookingDao.save(booking);
    }

    // Xóa một đặt phòng
    public void deleteBooking(int id) {
        bookingDao.deleteById(id);
    }
    
	public boolean isRoomBooked(int roomID, Date checkInDate, Date checkOutDate) {
		// Truy vấn cơ sở dữ liệu để kiểm tra xem phòng có được đặt trong khoảng thời
		// gian này hay không
		// Ở đây giả sử bạn có một phương thức trong BookingRepository để thực hiện truy
		// vấn
		// Đây chỉ là một ví dụ giả định, bạn cần thay thế bằng cách thực hiện thực tế
		// với cơ sở dữ liệu của bạn
		return bookingDao.existsByRoomIdAndDatesOverlap(roomID, checkInDate, checkOutDate);
	}
}
