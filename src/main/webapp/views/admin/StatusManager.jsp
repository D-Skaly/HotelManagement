<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
			<jsp:include page="/views/admin/layout/menu.jsp"></jsp:include>
		<div style="background-color: whitesmoke;" class="main">
			<ul class="nav nav-tabs mt-4">
				<li class="nav-item"><a
					class="nav-link ${StatusTab == 'status-list' ? 'active' : ''}"
					id="video-list-tab" data-bs-toggle="tab" href="#user-list">Status
						List</a></li>
				<li class="nav-item"><a
					class="nav-link ${StatusTab == 'status-edition' ? 'active' : ''}"
					id="video-edition-tab" data-bs-toggle="tab" href="#user-edition">Status
						Edition</a></li>
			</ul>
			<div class="tab-content mt-4">
				<div
					class="tab-pane fade ${StatusTab == 'status-list' ? 'show active' : ''}"
					id="user-list">
					<h3>Status List</h3>
					<table class="table">
						<thead>
							<tr>
								<th scope="col">Status ID</th>
								<th scope="col">Status Name</th>
								<th>Actions</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="status" items="${statuses}">
								<tr>
									<td>${status.statusID}</td>
									<td>${status.statusName}</td>
									<td><a href="/admin/statusmanager/edit/${status.statusID}"
										class="btn btn-warning">Edit</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			<div
				class="tab-pane fade ${StatusTab == 'status-edition' ? 'show active' : ''}"
				id="user-edition">
				<h3>Status Edition</h3>
				<form action="/admin/statusmanager/add" method="post">
					<div class="mb-3">
						<label for="username" class="form-label">Status ID</label> <input
							type="text" class="form-control" name="statusID"
							value="${status.statusID}" placeholder="Enter Status ID">
					</div>
					<div class="mb-3">
						<label for="pass" class="form-label">Status Name</label> <input
							type="text" class="form-control" id=statusName
							" name="statusName" value="${status.statusName}"
							placeholder="Enter Status Name">
					</div>
					<div class="mb-3">
						<button type="submit" class="btn btn-success">Create</button>
						<button type="submit" class="btn btn-primary">Update</button>
						<button type="submit" class="btn btn-danger">Delete</button>
					</div>
				</form>
			</div>
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