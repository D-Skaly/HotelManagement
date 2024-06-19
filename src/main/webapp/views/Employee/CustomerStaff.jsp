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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<link rel="stylesheet" href="/views/Css/admin.css">
<title>Customer_Employee</title>
<style>
.button-group .btn {
	margin-right: 5px;
}

.button-group .btn:last-child {
	margin-right: 0;
}

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
</head>
<body>
	<header>
		<jsp:include page="/views/Employee/headerStaff.jsp"></jsp:include>
	</header>
	<div class="container">
		<jsp:include page="/views/Employee/menuStaff.jsp"></jsp:include>
		<div class="main" style="background-color: whitesmoke;">
			<ul class="nav nav-tabs mt-4">
				<li class="nav-item"><a
					class="nav-link ${activeTab == 'user-list' ? 'active' : ''}"
					id="user-list-tab" data-bs-toggle="tab" href="#user-list">Customer
						List</a></li>
				<li class="nav-item"><a
					class="nav-link ${activeTab == 'user-edition' ? 'active' : ''}"
					id="user-edition-tab" data-bs-toggle="tab" href="#user-edition">Customer
						Edition</a></li>
			</ul>
			<div class="tab-content mt-4">
				<div
					class="tab-pane fade ${activeTab == 'user-list' ? 'show active' : ''}"
					id="user-list">
					<h3>Customer List</h3>
					<form class="d-flex mb-4" action="/employee/customer" method="get">
						<input type="text" name="keyword" class="form-control"
							value="${keyword}">
						<button type="submit" class="btn btn-primary ms-2">Search</button>
					</form>
					<table class="table">
						<thead>
							<tr>
								<th scope="col"><a
									style="text-decoration: none; color: black;"
									href="?page=${currentPage}&keyword=${keyword}&sortBy=userName&sortOrder=${sortBy == 'userName' && sortOrder == 'asc' ? 'desc' : 'asc'}">
										Username <c:if test="${sortBy == 'userName'}">
											<c:choose>
												<c:when test="${sortO	rder == 'asc'}">
													<i class="fas fa-sort-up"></i>
												</c:when>
												<c:otherwise>
													<i class="fas fa-sort-down"></i>
												</c:otherwise>
											</c:choose>
										</c:if> <c:if test="${sortBy != 'userName'}">
											<i class="fas fa-sort"></i>
										</c:if>
								</a></th>
								<th scope="col"><a
									style="text-decoration: none; color: black;"
									href="?page=${currentPage}&keyword=${keyword}&sortBy=fullName&sortOrder=${sortBy == 'fullName' && sortOrder == 'asc' ? 'desc' : 'asc'}">
										Full Name <c:if test="${sortBy == 'fullName'}">
											<c:choose>
												<c:when test="${sortOrder == 'asc'}">
													<i class="fas fa-sort-up"></i>
												</c:when>
												<c:otherwise>
													<i class="fas fa-sort-down"></i>
												</c:otherwise>
											</c:choose>
										</c:if> <c:if test="${sortBy != 'fullName'}">
											<i class="fas fa-sort"></i>
										</c:if>
								</a></th>
								<th scope="col">Phone Numbers</th>
								<th scope="col"><a
									style="text-decoration: none; color: black;"
									href="?page=${currentPage}&keyword=${keyword}&sortBy=email&sortOrder=${sortBy == 'email' && sortOrder == 'asc' ? 'desc' : 'asc'}">
										Email <c:if test="${sortBy == 'email'}">
											<c:choose>
												<c:when test="${sortOrder == 'asc'}">
													<i class="fas fa-sort-up"></i>
												</c:when>
												<c:otherwise>
													<i class="fas fa-sort-down"></i>
												</c:otherwise>
											</c:choose>
										</c:if> <c:if test="${sortBy != 'email'}">
											<i class="fas fa-sort"></i>
										</c:if>
								</a></th>
								<th scope="col">CCCD</th>
								<th scope="col">Edit</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="customer" items="${customers}">
								<tr>
									<td>${customer.userName}</td>
									<td>${customer.fullName}</td>
									<td>${customer.phone}</td>
									<td>${customer.email}</td>
									<td>${customer.cccd}</td>
									<td><a
										href="/employee/customermanager/edit/${customer.userName}"
										class="btn btn-primary">Edit</a></td>
								</tr>
							</c:forEach>
							<tr>
								<td colspan="7">
									<div class="d-flex justify-content-center button-group">
										<button class="btn btn-secondary me-2"
											onclick="location.href='/employee/customer?page=0&keyword=${keyword}&sortBy=${sortBy}&sortOrder=${sortOrder}'"
											${currentPage == 0 ? 'disabled' : ''}>First</button>
										<button class="btn btn-secondary me-2"
											onclick="location.href='/employee/customer?page=${currentPage - 1}&keyword=${keyword}&sortBy=${sortBy}&sortOrder=${sortOrder}'"
											${currentPage == 0 ? 'disabled' : ''}>Previous</button>
										<button class="btn btn-secondary me-2"
											onclick="location.href='/employee/customer?page=${currentPage + 1}&keyword=${keyword}&sortBy=${sortBy}&sortOrder=${sortOrder}'"
											${currentPage == totalPages - 1 ? 'disabled' : ''}>Next</button>
										<button class="btn btn-secondary"
											onclick="location.href='/employee/customer?page=${totalPages - 1}&keyword=${keyword}&sortBy=${sortBy}&sortOrder=${sortOrder}'"
											${currentPage == totalPages - 1 ? 'disabled' : ''}>Last</button>
									</div>
								</td>

							</tr>
						</tbody>
					</table>
				</div>
				<div
					class="tab-pane fade ${activeTab == 'user-edition' ? 'show active' : ''}"
					id="user-edition">
					<h3>Customer Edition</h3>
					<form:form action="/employee/customermanager/update" method="post"
						modelAttribute="customer">
						<div class="mb-3">
							<label for="userName" class="form-label">Username</label>
							<form:input type="text" path="userName" class="form-control"
								placeholder="Enter Username" readonly="readonly" />
							<form:errors path="userName" cssClass="text-danger" />
						</div>
						<div class="mb-3">
							<label for="password" class="form-label">Password</label>
							<form:input type="text" path="password" class="form-control"
								placeholder="Enter Password" />
							<form:errors path="password" cssClass="text-danger" />
						</div>
						<div class="mb-3">
							<label for="fullName" class="form-label">Full Name</label>
							<form:input type="text" path="fullName" class="form-control"
								placeholder="Enter Full Name" />
							<form:errors path="fullName" cssClass="text-danger" />
						</div>
						<div class="mb-3">
							<label for="phone" class="form-label">Phone Numbers</label>
							<form:input type="text" path="phone" class="form-control"
								placeholder="Enter Phone Numbers" />
							<form:errors path="phone" cssClass="text-danger" />
						</div>
						<div class="mb-3">
							<label for="email" class="form-label">Email</label>
							<form:input type="text" path="email" class="form-control"
								placeholder="Enter Email" />
							<form:errors path="email" cssClass="text-danger" />
						</div>
						<div class="mb-3">
							<label for="cccd" class="form-label">CCCD</label>
							<form:input type="text" path="cccd" class="form-control"
								placeholder="Enter CCCD" />
							<form:errors path="cccd" cssClass="text-danger" />

						</div>
						<div class="mb-3">
							<button type="submit" class="btn btn-primary">Update</button>
						</div>
					</form:form>
				</div>

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
