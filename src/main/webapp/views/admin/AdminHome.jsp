
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/views/Css/admin.css">
<title>Admin Dashboard</title>
<style>
.sidebar a {
	display: block;
	padding: 10px;
	margin: 5px 0;
	text-align: center;
	text-decoration: none;
	color: black;
	border-radius: 5px;
	transition: background-color 0.3s;
}

.sidebar a:hover {
	background-color: #0056b3;
}

.content {
	flex: 1;
	position: relative; /* Added */
}

.content img {
	width: 700px;
	height: auto;
}

.welcome-message {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	background-color: rgba(255, 255, 255, 0.8);
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	animation: fadeIn 0.5s ease-out; /* Fade in animation */
}

@
keyframes fadeIn {from { opacity:0;
	
}

to {
	opacity: 1;
}

}
.welcome-message h2 {
	margin-top: 0;
	color: #333;
	text-align: center;
}

.welcome-message p {
	margin-bottom: 0;
	color: #333;
}
</style>
</head>
<body>
	
	<header>
		<jsp:include page="/views/admin/layout/header.jsp"></jsp:include>
	</header>

	<div class="container">
		
			<jsp:include page="/views/admin/layout/menu.jsp"></jsp:include>
		
		<div class="content">
			<div class="welcome-message">
				<img src="/views/Images/g1.jpg" alt="Welcome Image">

				<h2>Welcome, Admin!</h2>
				<p>This is the admin dashboard. Here, you can manage various
					aspects of the system.</p>
			</div>
		</div>
</body>
</html>
