<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="/views/Css/admin.css">
<title>Admin Dashboard</title>

</head>
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
</style>
<body>
	<header>
		<jsp:include page="/views/admin/layout/header.jsp"></jsp:include>

	</header>


	<div class="container">

		<div style="background-color: whitesmoke;" class="main">
			<h3 class="text-center">My Profile</h3>

			<form action="/admin/myprofile/update" method="post">
				<div class="mb-3">
					<label for="username" class="form-label">Username</label> <input
						type="text" class="form-control" name="userName"
						value="${admin.userName}" placeholder="Enter Username">
				</div>
				<div class="mb-3">
					<label for="pass" class="form-label">Password</label> <input
						type="password" class="form-control" name="password"
						value="${admin.password}" placeholder="Enter Password">
				</div>
				<div class="mb-3">
					<label for="fullname" class="form-label">Fullname</label> <input
						type="text" class="form-control" name="fullName"
						value="${admin.fullName}" placeholder="Enter Fullname">
				</div>
				<div class="mb-3">
					<label for="phone" class="form-label">Phone Numbers</label> <input
						type="number" class="form-control" name="phone"
						value="${admin.phone}" placeholder="Enter Phone Numbers">
				</div>
				<div class="mb-3">
					<label for="email" class="form-label">Email</label> <input
						type="email" class="form-control" name="email"
						value="${admin.email}" placeholder="Enter Email">
				</div>
				<div class="mb-3">
					<label for="address" class="form-label">Address</label> <input
						type="text" class="form-control" name="address"
						value="${admin.address}" placeholder="Enter Address">
				</div>
				<div class="mb-3">

					<button type="submit" class="btn btn-primary">Update</button>

				</div>
			</form>

		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
		integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"
		integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V"
		crossorigin="anonymous"></script>
</body>

</html>