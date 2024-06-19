<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
					class="nav-link ${activeTab == 'employee-list' ? 'active' : ''}"
					id="employee-list-tab" data-bs-toggle="tab" href="#employee-list">Customer
						List</a></li>
				<li class="nav-item"><a
					class="nav-link ${activeTab == 'employee-form' ? 'active' : ''}"
					id="employee-form-tab" data-bs-toggle="tab" href="#employee-form">Customer
						Edition</a></li>
			</ul>
			<div class="tab-content mt-4">
				<div
					class="tab-pane fade ${activeTab == 'employee-list' ? 'show active' : ''}"
					id="employee-list">
					<h3>Staff List</h3>

					<table class="table">
						<thead>
							<tr>
								<th scope="col">Username</th>
								<th scope="col">Password</th>
								<th scope="col">Full Name</th>
								<th scope="col">Phone Numbers</th>
								<th scope="col">Email</th>
								<th scope="col">Address</th>
								<th scope="col">Status</th>

								<th scope="col">Edit</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="employee" items="${employees}">
								<tr>
									<td>${employee.userName}</td>
									<td>${employee.password}</td>
									<td>${employee.fullName}</td>
									<td>${employee.phone}</td>
									<td>${employee.email}</td>
									<td>${employee.address}</td>
									<td>${employee.active ? 'Active' : 'Inactive'}</td>
									<td><a class="btn btn-primary"
										href="/admin/employeemanager/edit/${employee.userName}">Edit</a></td>
								</tr>
							</c:forEach>

							<tr>
								<td colspan="8">
									<button class="btn btn-secondary">First</button>
									<button class="btn btn-secondary">Previous</button>
									<button class="btn btn-secondary">Next</button>
									<button class="btn btn-secondary">Last</button>
									<form action="/admin/employeemanager/export/excel" method="get">
										<button type="submit" class="btn btn-success">Export to Excel</button>
									</form>
								</td>
								
							</tr>
						</tbody>
					</table>
					

				</div>
			</div>
			<div
				class="tab-pane fade ${activeTab == 'employee-form' ? 'show active' : ''}"
				id="employee-form">
				<h3>Staff Edition</h3>

				<form action="/admin/employeemanager/add" method="post">

					<div class="mb-3">
						<label for="username" class="form-label">Username</label> <input
							type="text" class="form-control" name="userName"
							value="${employee.userName}" placeholder="Enter Username">
					</div>
					<div class="mb-3">
						<label for="pass" class="form-label">Password</label> <input
							type="text" class="form-control" name="password"
							value="${employee.password}" placeholder="Enter Password">
					</div>
					<div class="mb-3">
						<label for="fullname" class="form-label">Fullname</label> <input
							type="text" class="form-control" name="fullName"
							value="${employee.fullName}" placeholder="Enter Fullname">
					</div>
					<div class="mb-3">
						<label for="phone" class="form-label">Phone Numbers</label> <input
							type="text" class="form-control" name="phone"
							value="${employee.phone}" placeholder="Enter PhoneNumbers">
					</div>
					<div class="mb-3">
						<label for="email" class="form-label">Email</label> <input
							type="text" class="form-control" name="email"
							value="${employee.email}" placeholder="Enter Email">
					</div>
					<div class="mb-3">
						<label for="address" class="form-label">Address</label> <input
							type="text" class="form-control" name="address"
							value="${employee.address}" placeholder="Enter Address">
					</div>
					<div class="mb-3">
						<div class="form-check form-check-inline">
							<input type="radio" class="form-check-input" name="active"
								${employee.active ? 'checked' : ''}> <label for="active"
								class="form-check-label">Active</label>
						</div>
						<div class="form-check form-check-inline">
							<input type="radio" class="form-check-input" name="active"
								value="false" ${!employee.active ? 'checked' : ''}> <label
								for="InActive" class="form-check-label">InActive</label>
						</div>
					</div>


					<div class="mb-3">
						<button type="submit" class="btn btn-success">Create</button>

						<button formaction="/admin/employeemanager/update" type="submit" class="btn btn-primary">Update</button>
						<button type="button" class="btn btn-danger">Delete</button>
						<button type="submit" class="btn btn-success">Generation qr code</button>
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

</html>