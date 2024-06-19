<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="vi">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="/views/Css/homepage2.css">
<title>Hotel Booking Homepage</title>
<link rel="icon" href="/views/Images/logofooter.png" type="image/png">
<style>
.offers-grid {
	display: grid;
	grid-template-columns: repeat(4, 1fr);
	gap: 15px;
}

.offer-item {
	border: 1px solid #ddd;
	border-radius: 8px;
	overflow: hidden;
	text-align: center;
	padding: 15px;
	background-color: #fff;
	box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
}

.offer-item img {
	width: 100%;
	height: 200px;
	object-fit: cover;
	border-bottom: 1px solid #ddd;
}

.offer-item p {
	margin: 10px 0;
	font-size: 16px;
}

.book-now-btn {
	display: inline-block;
	padding: 10px 20px;
	color: #fff;
	background-color: #007bff;
	border: none;
	border-radius: 5px;
	text-decoration: none;
	font-weight: bold;
}

.book-now-btn:hover {
	background-color: #0056b3;
}
</style>

</head>

<body>
	<div class="search-bar">
		<input type="date" id="checkin" name="checkin" value="2024-06-13">
		<input type="date" id="checkout" name="checkout" value="2024-06-14">
		<select id="adults" name="adults">
			<option value="1">1 người lớn</option>
			<option value="2">2 người lớn</option>
			<option value="3">3 người lớn</option>
			<option value="4">4 người lớn</option>
		</select>
		<button style="width: 150px;" type="button">
			<s:message code="input.button" />
		</button>
	<a style="text-decoration: none;color: white;font-weight: bold; margin-left: 200px;" href="#">My Profile</a>
		<div class="language-selector" style="margin-left: 5px">
			<a href="?lang=en">English</a> <a href="?lang=vi">Tiếng Việt</a>
		</div>
	
		
				<a
			style="text-decoration: none; color: white; font-weight: bold; margin-left: 200px;"
			href="/logout">Log Out</a>
	</div>


	<div class="header"></div>

	<section>
		<div class="container mt-5">
			<div class="row">
				<div class="col-12">
					<div class="offers-grid">
						<c:forEach var="room" items="${rooms}">
							<div class="offer-item">
								<img src="/views/Images/${room.image1}" alt="Offer Image">
								<p>${room.roomType.roomTypeName}</p>
								<p>${room.pricePerNight}</p>
								<a href="/customer/edit/${room.roomID}" class="book-now-btn">Book
									Now</a>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</section>
	<br>
	<br>
	<jsp:include page="/views/Customer/footer.jsp"></jsp:include>

	<script>
        const monthYear = document.getElementById('month-year');
        const days = document.getElementById('days');

        const date = new Date();
        let currentMonth = date.getMonth();
        let currentYear = date.getFullYear();

        const months = [
            'January', 'February', 'March', 'April', 'May', 'June',
            'July', 'August', 'September', 'October', 'November', 'December'
        ];

        function renderCalendar(month, year) {
            const firstDay = new Date(year, month, 1).getDay();
            const lastDate = new Date(year, month + 1, 0).getDate();

            monthYear.innerText = `${months[month]} ${year}`;
            days.innerHTML = '';

            for (let i = 0; i < firstDay; i++) {
                const emptyDiv = document.createElement('div');
                days.appendChild(emptyDiv);
            }

            for (let i = 1; i <= lastDate; i++) {
                const dayDiv = document.createElement('div');
                dayDiv.innerText = i;
                if (i === date.getDate() && month === date.getMonth() && year === date.getFullYear()) {
                    dayDiv.classList.add('today');
                }
                days.appendChild(dayDiv);
            }
        }

        document.querySelector('.prev').addEventListener('click', () => {
            if (currentMonth === 0) {
                currentMonth = 11;
                currentYear -= 1;
            } else {
                currentMonth -= 1;
            }
            renderCalendar(currentMonth, currentYear);
        });

        document.querySelector('.next').addEventListener('click', () => {
            if (currentMonth === 11) {
                currentMonth = 0;
                currentYear += 1;
            } else {
                currentMonth += 1;
            }
            renderCalendar(currentMonth, currentYear);
        });

        renderCalendar(currentMonth, currentYear);
    </script>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

	<script>
		$(document).ready(function() {
			$("a[href*=lang]").on("click", function() {
				var param = $(this).attr("href");
				$.ajax({
					url : "/home/index" + param,
					success : function() {
						location.reload();
					}
				});
				return false;
			})
		})
	</script>
</body>

</html>