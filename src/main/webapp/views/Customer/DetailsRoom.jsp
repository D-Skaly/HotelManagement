<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Booking Details</title>
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@400;700&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="/views/Css/details.css">
<link rel="icon" href="/views/Images/logofooter.png" type="image/png">
</head>
<body>
	<jsp:include page="/views/Customer/headerAfter.jsp"></jsp:include>
	<br>
	<div class="container">
		<form action="/customer/bookingroom/add" method="post">
			<input type="hidden" name="roomID" value="${room.roomID}">
			<div class="main-content">
				<div class="sidebar">
					<div class="check-in-out">
						<h3>Check In</h3>
						<input type="date" id="checkInDate" name="checkInDate">
						<h3>Check Out</h3>
						<input type="date" id="checkOutDate" name="checkOutDate">
					</div>
					<div class="check">
						<a href="/customer/check/${room.roomID}" class="next-button">Check</a>
					</div>
					<div class="room-details">
						<h3>Room number: ${room.roomNumber}</h3>
						<p>Type room: ${room.roomType.roomTypeName}</p>
						<p>Price per night: ${room.pricePerNight}VND</p>
						<p>10% VAT: ${vat}</p>
						<p>7 % Service Charge: ${serviceCharge}</p>
						<div class="apply-code">
							<input type="text" placeholder="Enter code">
							<button>Apply Code</button>
						</div>
						<p class="total-price">
							Total Price: <span id="totalPrice">${room.pricePerNight}$</span>
						</p>
					</div>
					<div class="info-boxes">
						<div class="info-box">
							<p>
								<img src="/views/Images/phone-call.png" alt="icon"> It's
								almost yours<br>We just need a few more details to confirm
								your booking at The Radisson Hotel.
							</p>
						</div>
						<div class="info-box">
							<p>
								<img src="/views/Images/mail (1).png" alt="icon"> No
								surprises<br>Pay the price you see – no booking fees!
							</p>
						</div>
						<div class="info-box">
							<p>
								<img src="/views/Images/messenger.png" alt="icon"> Your
								booking is secure<br>Your details are protected by a secure
								connection.
							</p>
						</div>
					</div>
				</div>
				<div class="form-section">
					<h2>Enter Your Details</h2>

					<div class="form-group">
						<label for="guest-name">Full Guest Name *</label> <input type="text"
							id="guest-name" name="fullName" value="${customer.fullName}">
					</div>

					<div class="form-group">
						<label for="email">Email *</label> <input type="email" id="email"
							value="${customer.email}" name="email" required>
					</div>
					<div class="form-group">
						<label for="phone">Phone *</label> <input type="tel" id="phone"
							name="phone" value="${customer.phone}"> <small>Note:
							Add prefix without + sign Example: (88)01840997***</small>
					</div>
					<div class="form-group">
						<label for="address">People ID *</label> <input type="text"
							id="peopleId" name="cccd" value="${maskedCCCD}">
					</div>



					<div class="room-info">
						<img style="margin-right: 300px;" src="/views/Images/${room.image1}"
							alt="Twin Room">
						<div class="room-description">
							<p>
								<strong style="font-size: 1rem;">${room.roomNumber}</strong>
							</p>
							<br>
							<p>Non-refundable, Breakfast included</p>
							<p>
								Your Stay Includes: <a href="#">Booking Conditions</a>
							</p>
						</div>
					</div>

					<div class="form-group">
						<label for="special-requests">Special Requests</label>
						<textarea id="special-requests" name="special-requests" rows="4"
							placeholder="Please write requests in English or the property's language"></textarea>
					</div>


<button class="next-button"><a href="/customer/tra?pricePerNight=${room.pricePerNight}" style="color:white; text-decoration: none; margin-top: 30px">Room payment</a></button>


					<div style="color: red">
						<p class="error">${error}</p>
					</div>
				</div>
			</div>
		</form>
	</div>
	<footer>
		<section class="subscribe">
			<h3>Get updates & exclusive offers</h3>
			<p>Sign up for our newsletter to stay updated</p>
			<div class="subscribe-form">
				<input type="email" placeholder="Enter email here">
				<button>Subscribe</button>
			</div>
		</section>
		<div class="footer-content">
			<div class="footer-logo">
				<img style="width: 200px; height: 200px; margin-right: 300px;"
					src="/views/Images/hotel-removebg-preview.png" alt="Footer Logo">
			</div>
			<div class="footer-links">
				<div class="footer-link-column">
					<h4>Pages</h4>
					<ul>
						<li><a href="#">Home</a></li>
						<li><a href="#">About Us</a></li>
						<li><a href="#">Contact Us</a></li>
						<li><a href="#">Gallery</a></li>
						<li><a href="#">My Profile</a></li>
					</ul>
				</div>
				<div class="footer-link-column">
					<h4>Social Links</h4>
					<ul>
						<li><a href="#">Facebook</a></li>
						<li><a href="#">Twitter</a></li>
						<li><a href="#">Instagram</a></li>
						<li><a href="#">LinkedIn</a></li>
					</ul>
				</div>
				<div class="footer-link-column">
					<h4>Company Policy</h4>
					<ul>
						<li><a href="#">Privacy</a></li>
						<li><a href="#">Terms & Conditions</a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>


</body>
</html>