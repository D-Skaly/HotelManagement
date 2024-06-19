<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Room Detail</title>
<link rel="stylesheet" href="/views/Css/homepage2.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">
	<link rel="icon" href="/views/Images/logofooter.png" type="image/png">
<style>
.product-card {
	transition: transform 0.3s;
}

.product-card:hover {
	transform: translateY(-5px);
}

.product-card {
	transition: transform 0.3s;
}

.product-card:hover {
	transform: translateY(-5px);
}

.left-section {
	margin-right: 10px;
}

.left-section img {
	width: 650px;
	height: 400px;
	border-radius: 10px;
}

.right-section img {
	width: 220px;
	height: 131px;
}

.thumbnail-image {
	width: 100%;
	height: calc(100%/ 3 - 10px);
	border-radius: 10px;
	object-fit: cover;
	padding-bottom: 4px;
}

.details {
	margin-left: 20px;
	text-align: left;
}

.hotel-name {
	font-size: 1.5em;
	font-weight: bold;
}

.stars {
	color: gold;
	margin: 5px 0;
}

.address {
	color: gray;
	margin: 10px 0;
}

.address a {
	text-decoration: none;
	color: black;
}

.price {
	font-size: 1.5em;
	color: red;
	margin: 10px 0;
}

.select-button {
	background-color: red;
	color: white;
	padding: 10px 20px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	width: 300px;
}

.select-button:hover {
	background-color: darkred;
}

.info-table {
	width: 60%;
	border-collapse: collapse;
	margin: 20px auto;
	border: 1px solid #ccc;
	border-radius: 8px;
	overflow: hidden;
}

.info-table th, .info-table td {
	padding: 12px;
	text-align: left;
	border-bottom: 1px solid #ddd;
}

.info-table th {
	background-color: #f2f2f2;
}

.info-table tr:last-child td {
	border-bottom: none;
}

/* Thêm phần CSS để căn giữa container */
.containerfull {
	width: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh; /* Để container căn giữa theo chiều dọc */
}
</style>
</head>
<body>

	<div class="containerfull">
		<div class="container" style="display: inline-flex; padding-left: 5%;">
			<div class="left-section">

				<img src="/views/Images/${room.image1}" alt="Main Image"
					class="main-image">
				<div style="margin-left: -5px;" class="details">
					<div class="hotel-name">XainHotel</div>
					<div class="stars">★★★★★</div>
					<div class="address">
						56 - 66 Nguyễn Huệ, Bến Nghé, Quận 1, Thành phố Hồ Chí Minh, Việt
						Nam <br>

					</div>
					<p class="card-text">Type room: ${room.roomType.roomTypeName}</p>
					<p class="card-text">Price per night: ${room.pricePerNight}USD</p>
					<a href="/customer/bookingroom/${room.roomID}" style="text-decoration: none;" class="select-button">Book now</a>
				</div>

			</div>
			<div class="right-section" style="padding: 0; margin: 0;">
				<img src="/views/Images/${room.image1}" class="thumbnail-image"
					style="object-fit: cover;"> <img src="/views/Images/${room.image2}"
					alt="Thumbnail 2" class="thumbnail-image"
					style="object-fit: cover;"> <img src="/views/Images/${room.image3}"
					alt="Thumbnail 3" class="thumbnail-image"
					style="object-fit: cover;"> <img src="/views/Images/${room.image4}"
					alt="Thumbnail 4" class="thumbnail-image"
					style="object-fit: cover;"> <img src="/views/Images/${room.image5}"
					alt="Thumbnail 5" class="thumbnail-image"
					style="object-fit: cover;"> <img src="/views/Images/${room.image6}"
					alt="Thumbnail 6" class="thumbnail-image"
					style="object-fit: cover;">
			</div>

		</div>
	</div>
	<!-- Đóng containerfull -->

	<div class="container">
		<h2>More Information</h2>
		<table class="info-table">
			<tr>
				<th>More Information</th>
				<th></th>
			</tr>
			<tr>
				<td>Room number</td>
				<td>${room.roomNumber}</td>
			</tr>
			<tr>
				<td>Far from city center</td>
				<td>100 m</td>
			</tr>
			<tr>
				<td>Evaluate location</td>
				<td>9.5</td>
			</tr>
			<tr>
				<td>Nearest airport</td>
				<td>Tan Son Nhat International Airport (SGN)</td>
			</tr>
			<tr>
				<td>Away from the airport</td>
				<td>8km</td>
			</tr>
			<tr>
				<td>Overall service</td>
				<td>Very good</td>
			</tr>
		</table>
	</div>

	<div id="productCarouselMore3" class="carousel slide" data-ride="carousel">
    <div class="carousel-inner">
        <div class="carousel-item active">
            <div class="row">
                <c:forEach var="roomt" items="${rooms}">
                    <div class="col-md-3">
                        <a href="/edit/${roomt.roomID}" style="text-decoration: none;">
                            <div class="product-card">
                                <img src="/upload/${roomt.image1}" style="height: 250px" alt="Product 1">
                                <div class="product-info">
                                    <h5>${roomt.roomType.roomTypeName}</h5>
                                    <div class="rating">
                                        <span class="stars">★★★★☆</span>
                                    </div>
                                    <p class="price">Per night before taxes and fees</p>
                                    <p class="price-amount">${roomt.pricePerNight}</p>
                                </div>
                            </div>
                        </a>
                    </div>
                </c:forEach>
            </div>
        </div>
        <!-- Lặp lại các khối carousel-item khi cần -->
    </div>
    <a class="carousel-control-prev" href="#productCarouselMore3" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#productCarouselMore3" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>

	<jsp:include page="/views/Customer/footer.jsp"></jsp:include>

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
