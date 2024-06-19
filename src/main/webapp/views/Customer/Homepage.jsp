<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Vacation Booking</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link
	href="https://fonts.googleapis.com/css2?family=Lobster&family=Poppins:wght@400;600&display=swap"
	rel="stylesheet">
	    <link rel="icon" href="/views/Images/logofooter.png" type="image/png">
<style>
body, html {
	margin: 0;
	padding: 0;
	font-family: 'Poppins', sans-serif;
	color: #333;
}

.carousel-item img {
	height: 95vh;
	object-fit: cover;
}

.carousel-caption h5 {
	font-family: 'Lobster', cursive;
	font-size: 2em;
}

.carousel-caption p {
	font-family: 'Poppins', sans-serif;
	font-size: 1.1em;
}

.container {
	padding: 20px;
	background-image: url('/Images/beach.jpg');
	/* Äáº£m báº£o ÄÆ°á»ng dáº«n ÄÃºng */
	background-size: cover;
	background-position: center;
	display: flex;
	justify-content: center;
	align-items: center;
}

.hero {
	background: rgba(0, 0, 0, 0.5);
	padding: 20px;
	border-radius: 10px;
	text-align: center;
	color: #fff;
}

.hero .content h1 {
	font-size: 2.5em;
	margin: 0;
	font-family: 'Lobster', cursive;
}

.hero .content p {
	font-size: 1em;
	margin: 20px 0;
}

.booking-form {
	margin-top: 20px;
}

.booking-form form {
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	gap: 10px;
}

.form-group {
	flex: 1;
	min-width: 150px;
}

.check-availability {
	padding: 10px 20px;
	border: none;
	background: #c42b2b;
	color: #fff;
	border-radius: 5px;
	cursor: pointer;
	margin-top: 10px;
}

.features {
	display: flex;
	justify-content: space-around;
	padding: 20px;
	background: #f8f8f8;
	border-top: 1px solid #ddd;
}

.feature {
	text-align: center;
	max-width: 200px;
}

.feature img {
	max-width: 50px;
	margin-bottom: 10px;
}

.feature p {
	font-size: 0.9em;
}

input[type="date"] {
	border: 2px solid #ccc; /* mÃ u viá»n */
	border-radius: 5px; /* gÃ³c bo trÃ²n */
	padding: 12px; /* Äá» rá»ng vÃ  chiá»u cao cá»§a Ã´ input */
	width: 100%;
	box-sizing: border-box;
	/* kÃ­ch thÆ°á»c tÃ­nh cáº£ border vÃ  padding */
	font-size: 16px; /* kÃ­ch thÆ°á»c chá»¯ */
}

/* Äá»i vá»i nhÃ£n cá»§a cÃ¡c trÆ°á»ng form */
.form-group label {
	font-weight: bold; /* in Äáº­m */
	margin-bottom: 8px; /* khoáº£ng cÃ¡ch giá»¯a nhÃ£n vÃ  input */
	display: block;
	/* hiá»n thá» nhÃ£n dÆ°á»i dáº¡ng block Äá» nÃ³ xuá»ng dÃ²ng */
}

/* NÃºt kiá»m tra kháº£ dá»¥ng */
.check-availability {
	padding: 12px 20px; /* Äá» rá»ng vÃ  chiá»u cao cá»§a nÃºt */
	border: none;
	background: #c42b2b; /* mÃ u ná»n */
	color: #fff; /* mÃ u chá»¯ */
	border-radius: 5px; /* gÃ³c bo trÃ²n */
	cursor: pointer;
	margin-top: 20px; /* khoáº£ng cÃ¡ch tá»« trÃªn xuá»ng */
	width: 100%;
	box-sizing: border-box;
	font-size: 18px; /* kÃ­ch thÆ°á»c chá»¯ */
	transition: background 0.3s ease;
	/* hiá»u á»©ng chuyá»n Äá»i mÃ u ná»n */
}

.check-availability:hover {
	background: #a11f1f; /* mÃ u ná»n khi di chuá»t qua */
}

/* Footer */
footer {
	background-color: #222;
	color: #fff;
	padding: 20px 0;
	text-align: center;
}

.newsletter {
	padding: 20px 0;
	border-bottom: 1px solid #444;
}

.newsletter h2 {
	margin: 0;
	font-size: 24px;
}

.newsletter p {
	margin: 10px 0;
	font-size: 14px;
	color: #bbb;
}

.subscribe {
	margin-top: 20px;
}

.subscribe input[type="email"] {
	padding: 10px;
	width: 300px;
	border: none;
	border-radius: 5px;
	margin-right: 10px;
}

.subscribe button {
	padding: 10px 20px;
	background-color: #e74c3c;
	color: #fff;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

.footer-content {
	display: flex;
	justify-content: space-around;
	padding: 20px 0;
	text-align: left;
	flex-wrap: wrap;
}

.footer-section {
	flex: 1;
	margin: 0 20px;
	min-width: 200px;
}

.footer-section h1, .footer-section h2 {
	font-size: 18px;
	margin-bottom: 10px;
}

.footer-section p, .footer-section ul {
	font-size: 14px;
	color: #bbb;
}

.footer-section ul {
	list-style-type: none;
	padding: 0;
}

.footer-section ul li {
	margin: 5px 0;
}

.footer-section ul li a {
	color: #bbb;
	text-decoration: none;
}

.footer-section ul li a:hover {
	color: #fff;
}

.footer-section.logo h1 {
	font-size: 24px;
}

@media ( max-width : 768px) {
	.footer-content {
		flex-direction: column;
		text-align: center;
	}
	.footer-section {
		margin: 20px 0;
	}
}

.section {
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 50px 20px;
}

.content {
	display: flex;
	max-width: 1000px;
	/* background-color: #f9f9f9; */
	padding: 20px;
	/* 	border-radius: 10px;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1); */
}

.content img {
	width: 40%;
	height: auto;
	border-radius: 10px;
	margin-right: 20px;
}

.text-content {
	width: 50%;
	text-align: left;
	margin-left: 50px;
	margin-top: 50px;
}

.text-content span {
	display: inline-block;
	margin-bottom: 10px;
	color: #d9534f;
	font-weight: bold;
}

.text-content h2 {
	color: #d9534f;
	font-size: 28px;
	margin-bottom: 10px;
}

.text-content p {
	font-size: 16px;
	line-height: 1.6;
	color: #333;
	margin-bottom: 20px;
}

.text-content .btn {
	display: inline-block;
	padding: 10px 20px;
	background-color: #d9534f;
	color: #fff;
	text-decoration: none;
	border-radius: 5px;
	transition: background-color 0.3s ease;
}

.text-content .btn:hover {
	background-color: #c9302c;
}

.sectionads {
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 50px 20px;
	background-color: #b22222; /* Background color */
	color: #fff; /* Text color */
	text-align: center;
	width: 70%; /* Set the width to 70% */
	margin: 0 auto; /* Center the section */
	border-radius: 10px;
}

.ads-content {
	max-width: 800px;
	width: 100%;
}

.ads-content h2 {
	font-size: 2em;
	margin-bottom: 20px;
}

.ads-content .buttons {
	display: flex;
	justify-content: center;
	gap: 20px;
}

.ads-content .button {
	padding: 10px 20px;
	border: none;
	background: #fff;
	color: #b22222;
	border-radius: 5px;
	text-decoration: none;
	font-size: 1em;
	transition: background 0.3s ease;
}

.ads-content .button:hover {
	background: #f8f8f8;
}

.ads-content .sign-in {
	background: #fff;
	color: #b22222;
}

.ads-content .join-us {
	background: #fff;
	color: #b22222;
}

.top-offers {
	padding: 50px 20px;
	text-align: center;
	background-color: #f8f8f8;
	width: 85%; /* Set width to 85% of the screen */
	margin: 0 auto; /* Center the section horizontally */
}

.top-offers h2 {
	font-size: 2em;
	margin-bottom: 10px;
}

.top-offers p {
	font-size: 1.1em;
	color: #666;
	margin-bottom: 10px;
}

.offers-grid {
	display: grid;
	grid-template-columns: repeat(4, 1fr);
	gap: 20px;
}

.offer-item {
	background: #fff;
	border-radius: 10px;
	overflow: hidden;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
	transition: transform 0.3s ease, box-shadow 0.3s ease;
	position: relative;
}

.offer-item:hover {
	transform: translateY(-10px);
	box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
}

.offer-item img {
	width: 100%;
	height: auto;
	transition: filter 0.2s ease;
}

.offer-item p {
	padding: 5px;
	font-size: 1em;
	color: #333;
}

@media ( max-width : 1200px) {
	.offers-grid {
		grid-template-columns: repeat(3, 1fr);
	}
}

@media ( max-width : 900px) {
	.offers-grid {
		grid-template-columns: repeat(2, 1fr);
	}
}

@media ( max-width : 600px) {
	.offers-grid {
		grid-template-columns: 1fr;
	}
}

.book-now-btn {
	position: absolute;
	top: 40%;
	left: 50%;
	transform: translate(-50%, -50%);
	padding: 10px 20px;
	background-color: #c42b2b;
	color: #fff;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	opacity: 0; /* áº¨n nÃºt ban Äáº§u */
	transition: opacity 0.3s ease;
}

.offer-item:hover .book-now-btn {
	opacity: 1; /* Hiá»n thá» nÃºt khi hover */
}

.offer-item:hover img {
	filter: blur(1.5px); /* Ãp dá»¥ng hiá»u á»©ng blur khi hover */
}

.pagination-container {
	display: flex;
	justify-content: center;
	margin-top: 20px; /* Khoảng cách từ trên xuống */
}

.pagination .page-link {
	padding: 0.75rem 1.25rem;
	/* Điều chỉnh kích thước padding để làm nút to hơn */
	font-size: 1.25rem; /* Điều chỉnh kích thước font để làm chữ to hơn */
}

.offer-item p.room-type {
    font-size: 1.2em;
    font-weight: bold;
    color: #333;
    margin-bottom: 5px;
}

.offer-item p.price {
    font-size: 1.1em;
    color: #c42b2b;
}

.book-now-btn:hover{
	color:white;
	text-decoration: none;
	
}
</style>
</head>
<body>
	<jsp:include page="/views/Customer/header.jsp"></jsp:include>

	<div id="vacationCarousel" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#vacationCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#vacationCarousel" data-slide-to="1"></li>
			<li data-target="#vacationCarousel" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="/views/Images/slide1.jpg" class="d-block w-100"
					alt="Slide 1">
				<div class="carousel-caption d-none d-md-block">
					<h5><s:message code="carousel.title1" /></h5>
					<p><s:message code="carousel.title2" /></p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="/views/Images/slide2.jpg" class="d-block w-100"
					alt="Slide 2">
				<div class="carousel-caption d-none d-md-block">
					<h5><s:message code="carousel.title3" /></h5>
					<p><s:message code="carousel.title4" /></p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="/views/Images/slide3.jpg" class="d-block w-100"
					alt="Slide 3">
				<div class="carousel-caption d-none d-md-block">
					<h5><s:message code="carousel.title5" />/h5>
					<p><s:message code="carousel.title6" /></p>
				</div>
			</div>
		</div>
		<a class="carousel-control-prev" href="#vacationCarousel"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#vacationCarousel"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>

	<!-- Content -->
	<div class="container">
		<div class="hero">
			<div class="booking-form">
				<form action="#">
					<div class="form-group">
						<label for="checkin"><s:message code="checkin.in" /></label> <input type="date"
							id="checkin" name="checkin" class="form-control"
							value="2023-11-24">
					</div>
					<div class="form-group">
						<label for="checkout"><s:message code="checkin.out" /></label> <input type="date"
							id="checkout" name="checkout" class="form-control"
							value="2023-11-24">
					</div>
					<div class="form-group">
						<label for="adults"><s:message code="checkin.adults" /></label> <input type="number"
							id="adults" name="adults" class="form-control" value="2" min="1">
					</div>
					<div class="form-group">
						<label for="children"><s:message code="checkin.children" /></label> <input type="number"
							id="children" name="children" class="form-control" value="0"
							min="0">
					</div>
					<button type="submit" class="btn btn-danger btn-block"><s:message code="checkin.check" /></button>
				</form>
			</div>
		</div>
	</div>

	<div class="features">
		<div class="feature">
			<img src="/views/Images/p1.png" alt="Save up to 10%">
			<p>
				<s:message code="content.1" /><br>
				<s:message code="content.2" />
			</p>
		</div>
		<div class="feature">
			<img src="/views/Images/t.png" alt="Best Rate Guarantee">
			<p>
				<s:message code="content.3" /><br><s:message code="content.4" />
			</p>
		</div>
		<div class="feature">
			<img src="/views/Images/w.png" alt="Free Wi-Fi">
			<p>
				<s:message code="content.5" /><br><s:message code="content.6" />
			</p>
		</div>
		<div class=" feature">
			<img src="/views/Images/m.png" alt="Enjoy Free Nights">
			<p>
				<s:message code="content.7" /><br><s:message code="content.8" />
			</p>
		</div>
	</div>

	<section class="section">
		<div class="content">
			<img src="/views/Images/resort.jpg" alt="Hotel Image">
			<div class="text-content">
				<span><s:message code="about.title" /></span>
				<h2><s:message code="about.description" /></h2>
				<p><s:message code="about.content" /></p>
				<a href="#" class="btn"><s:message code="about.button" /></a>
			</div>
		</div>
	</section>

	<section class="sectionads">
		<div class="ads-content">
			<h2><s:message code="about.1" /></h2>
			<div class="buttons">
				<a href="/customer/signIn" class="button sign-in"><s:message code="signIn.title" /></a> <a
					href="/customer/signUp" class="button join-us"><s:message code="joinUs.title" /></a>
			</div>
		</div>
	</section>


	<div class="top-offers">
		<h2><s:message code="topOffers.title" /></h2>
		<p><s:message code="resort.description" /></p>
		<a id="position"></a>
		<div class="offers-grid">
			<c:forEach var="room" items="${rooms}">
				<div class="offer-item">
					<img src="/views/Images/${room.image1}" style="height: 250px"
						alt="Offer Image">
					<p>${room.roomType.roomTypeName}</p>
					<p>${room.pricePerNight}</p>
					<a href="/edit/${room.roomID}" class="book-now-btn">View </a>
				</div>
			</c:forEach>
		</div>
	</div>
	<nav aria-label="Page navigation">
		<ul class="pagination pagination-container">
			<li class="page-item ${page.number > 0 ? '' : 'disabled'}"><a
				class="page-link" href="/?p=0#position" aria-label="First"> <span
					aria-hidden="true">&laquo;&laquo;</span>
			</a></li>
			<li class="page-item ${page.number > 0 ? ''  : 'disabled'}"><a
				class="page-link" href="/?p=${page.number - 1}#position"
				aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
			</a></li>
			<li
				class="page-item ${page.number < page.totalPages - 1 ? '' : 'disabled'}">
				<a class="page-link" href="/?p=${page.number + 1}#position"
				aria-label="Next"> <span aria-hidden="true">&raquo;</span>
			</a>
			</li>
			<li class="page-item"><a class="page-link"
				href="/?p=${page.totalPages - 1}#position" aria-label="Last"> <span
					aria-hidden="true">&raquo;&raquo;</span>
			</a></li>
		</ul>
	</nav>
	<c:if test="${page.number > 0}">
		<a href="/?p=0#position">First</a>
	</c:if>
	<c:if test="${page.number > 0}">
		<a href="/?p=${page.number - 1}#position">Previous</a>
	</c:if>
	<c:if test="${page.number < page.totalPages - 1}">
		<a href="/?p=${page.number + 1}#position">Next</a>
	</c:if>
<%-- 	<a href="/?p=${page.totalPages - 1}#position">Last</a> --%>


	<jsp:include page="/views/Customer/footer.jsp"></jsp:include>


	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
