package com.Java5.CustomerController;

import java.util.Date;

import java.util.Optional;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.Java5.model.Booking;
import com.Java5.model.Customer;
import com.Java5.model.Room;
import com.Java5.model.Status;
import com.Java5.service.BookingService;
import com.Java5.service.CustomerService;
import com.Java5.service.RoomService;
import com.Java5.utils.SessionService;

import jakarta.mail.internet.ParseException;
import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/customer")
public class BookingRoomController {

	private static final Logger logger = LoggerFactory.getLogger(BookingRoomController.class);
	
	@Autowired
	RoomService roomService;

	@Autowired
	CustomerService customerService;

	@Autowired
	SessionService sesseion;

	@Autowired
	BookingService bookingService;

	@Autowired
	HttpServletRequest request;

	@GetMapping("/bookingroom/{roomID}")
	public String bookingRoom(@PathVariable int roomID, Model model, @SessionAttribute("username") String username) {
		logger.info("GET /customer/bookingroom/{} - Fetching room and customer details", roomID);
		Optional<Room> roomOpt = roomService.getRoomById(roomID);
		Optional<Customer> customerFind = customerService.getCustomerByUsername(username);

		if (roomOpt.isPresent() && customerFind.isPresent()) {
			String cccd = customerFind.get().getCccd();
			String maskedCCCD = maskCCCD(cccd);

			model.addAttribute("customer", customerFind.get());
			model.addAttribute("room", roomOpt.get());
			model.addAttribute("maskedCCCD", maskedCCCD);
			logger.info("Room and customer details found for roomID: {} and username: {}", roomID, username);
			return "Customer/DetailsRoom";
		} else {
			logger.warn("Room or customer not found for roomID: {} and username: {}", roomID, username);
			return "";
		}
	}

	// Phương thức để che dấu CCCD
	private String maskCCCD(String cccd) {
		int length = cccd.length();
		String maskedPortion = "******"; // Số ký tự bạn muốn che dấu
		String lastDigits = cccd.substring(length - 3); // Lấy 3 ký tự cuối của CCCD
		return maskedPortion + lastDigits;
	}

	@GetMapping("/check/{roomID}")
	private BigDecimal checkAmount(@PathVariable int roomID, Model model) {
		String checkInDateString = request.getParameter("checkInDate");
		String checkOutDateString = request.getParameter("checkOutDate");
		System.out.println("checkInDateString: " + checkInDateString);
		 logger.info("GET /customer/check/{} - Calculating amount for check-in: {} and check-out: {}", roomID, checkInDateString, checkOutDateString);
		try {
			// Định dạng ngày
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");

			// Chuyển đổi chuỗi ngày thành đối tượng Date
			Date checkInDate = formatter.parse(checkInDateString);
			Date checkOutDate = formatter.parse(checkOutDateString);

			long usingDay = checkOutDate.getDate() - checkInDate.getDate();

			Optional<Room> roomOpt = roomService.getRoomById(roomID);
			if (roomOpt.isPresent()) {
				Room room = roomOpt.get();
				BigDecimal usingDayDecimal = BigDecimal.valueOf(usingDay);
				BigDecimal amount = usingDayDecimal.multiply(room.getPricePerNight());
				BigDecimal serviceCharge = amount.multiply(BigDecimal.valueOf(0.10));
				BigDecimal vat = amount.multiply(BigDecimal.valueOf(0.07));
				BigDecimal totalPayment = amount.add(serviceCharge).add(vat);

				model.addAttribute("serviceCharge", serviceCharge);
				model.addAttribute("vat", vat);
				model.addAttribute("totalPayment", totalPayment);
				logger.info("Amount calculated successfully for roomID: {}", roomID);
				return totalPayment;

			} else {
				 logger.warn("Room not found for roomID: {}", roomID);
				return BigDecimal.ZERO;
			}

		} catch (Exception e) {
			logger.error("Error occurred while calculating amount for roomID: {}", roomID, e);
			e.printStackTrace();
		}
		return BigDecimal.ZERO;
	}

	@PostMapping("/bookingroom/add")
	public String bookARoom(@RequestParam int roomID, Model model,
			@RequestParam("checkInDate") String checkInDateString,
			@RequestParam("checkOutDate") String checkOutDateString, @SessionAttribute("username") String username,
			RedirectAttributes redirectAttributes) {
		  logger.info("POST /customer/bookingroom/add - Booking room with roomID: {}", roomID);
		try {
			// Định dạng ngày
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");

			// Chuyển đổi chuỗi ngày thành đối tượng Date
			Date checkInDate = formatter.parse(checkInDateString);
			Date checkOutDate = formatter.parse(checkOutDateString);

			// kiểm tra xem với mã phòng này và khoảng thời gian này đã có ai đặt chưa
			if (!bookingService.isRoomBooked(roomID, checkInDate, checkOutDate)) {
				Optional<Room> roomOpt = roomService.getRoomById(roomID);
				Optional<Customer> customerFind = customerService.getCustomerByUsername(username);
				if (roomOpt.isPresent() && customerFind.isPresent()) {
					Room room = roomOpt.get();
					Customer customer = customerFind.get();

					Booking booking = new Booking();
					booking.setBookingDate(new Date());
					booking.setCheckInDate(checkInDate);
					booking.setCheckOutDate(checkOutDate);
					booking.setRoom(room);
					booking.setCustomer(customer);

					bookingService.addBooking(booking);

					Status statusRoom = room.getStatus();
					room.setStatus(statusRoom);
					roomService.updateRoom(room);
					logger.info("Room booked successfully with roomID: {} for customer: {}", roomID, username);
					return "redirect:/customer/Homepage";
				} else {
					// Xử lý nếu không tìm thấy phòng hoặc khách hàng
					redirectAttributes.addFlashAttribute("error", "Room or customer not found.");
					logger.warn("Room or customer not found for roomID: {} and username: {}", roomID, username);
					return "redirect:/customer/bookingroom/" + roomID;
				}
			} else {
				// Phòng đã được đặt trong khoảng thời gian này
				redirectAttributes.addFlashAttribute("error", "The room is already booked for the selected dates.");
				logger.warn("The room is already booked for the selected dates for roomID: {}", roomID);
				return "redirect:/customer/bookingroom/" + roomID;
			}
		} catch (Exception e) {
			e.printStackTrace();
			// Xử lý nếu có lỗi khi chuyển đổi định dạng ngày hoặc số
			logger.error("Error occurred while booking room with roomID: {}", roomID, e);
			redirectAttributes.addFlashAttribute("error", "An error occurred while processing your request.");
			return "redirect:/customer/bookingroom/" + roomID;
		}
	}

}
