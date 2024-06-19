<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/Css/header.css">
<style>
body {
	font-family: 'Inter', sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f8f9fa;
}

header {
	background-color: white;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

header {
	background-color: white;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.navbar {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 10px 20px;
}

.logo {
	display: flex;
	align-items: center;
}

.logo img {
	width: 40px;
	margin-right: 10px;
}

.logo h1 {
	font-size: 24px;
	color: #007bff;
}

nav ul {
	list-style: none;
	display: flex;
	margin: 0;
	padding: 0;
}

nav ul li {
	margin: 0 10px;
}

nav ul li a {
	text-decoration: none;
	color: #333;
	font-size: 16px;
}

.auth-buttons {
	display: flex;
	align-items: center;
}

.container {
	width: 1200px;
	margin: 0 auto;
}

.auth-buttons a {
	text-decoration: none;
	margin-left: 10px;
	font-size: 16px;
	padding: 8px 16px;
	border-radius: 5px;
	color: white;
}

.auth-buttons .sign-in {
	background-color: #333;
}

.auth-buttons .book-now {
	background-color: #d9534f;
}
nav ul li a:hover {
    text-decoration: none;
    
}

</style>
</head>
<body>
	<header>
		<div class="navbar">
			<div class="logo">
				<h1>XainHotel</h1>
			</div>
			<nav>
				<ul>
					<li><a href="/"><s:message code="nav.home" /></a></li>
					<li><a href="/about"><s:message code="nav.aboutUs" /></li>
					<li><a href="/ContactUs"><s:message code="nav.contactUs" /></a></li>
					<li><a href="#"><s:message code="nav.profile" /></a></li>
				</ul>

			</nav>
			<div class="auth-buttons">
				<a href="/customer/signIn" class="sign-in"><s:message code="nav.signIn" /></a> <a
					href="/customer/Homepage" class="book-now"><s:message code="nav.bookNow" /></a>
			</div>
			<div class="language-selector">
				<a href="?lang=en">English</a> 
				<a href="?lang=vi">Tiếng Việt</a>
			</div>
		</div>
	</header>

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

