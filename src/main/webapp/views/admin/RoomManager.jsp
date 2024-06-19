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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
	integrity="sha512-wJQ+3wkNwJu47M6Nvs+0lvlskozST8XZ71r/H4arYDvCyw4Bekq/NzzGWfm4RHLy6b75G2s1yxLpsOOWtS1vUw=="
	crossorigin="anonymous" />

<link rel="stylesheet" href="/views/Css/admin.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
	integrity="sha512-wJQ+3wkNwJu47M6Nvs+0lvlskozST8XZ71r/H4arYDvCyw4Bekq/NzzGWfm4RHLy6b75G2s1yxLpsOOWtS1vUw=="
	crossorigin="anonymous" />

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
</style>
</head>

<body>
	<header>
		<jsp:include page="/views/admin/layout/header.jsp"></jsp:include>
	</header>

	<div class="container">
		<jsp:include page="/views/admin/layout/menu.jsp"></jsp:include>

		<div style="background-color: whitesmoke;" class="main">
			<ul class="nav nav-tabs mt-4">
				<li class="nav-item"><a class="nav-link active"
					id="room-list-tab" data-bs-toggle="tab" href="#room-list">Room
						List</a></li>
				<li class="nav-item"><a class="nav-link" id="room-edition-tab"
					data-bs-toggle="tab" href="#room-edition">Room Edition</a></li>
			</ul>
			<div class="tab-content mt-4">
				<div class="tab-pane fade show active" id="room-list">
					<h3>Room List</h3>
					<form class="d-flex mb-4" action="/admin/roommanager/" method="get">
						<input type="text" name="keyword" class="form-control"
							value="${keyword}">
						<button type="submit" class="btn btn-primary ms-2">Search</button>
					</form>
					<table class="table">
						<thead>
							<tr>
								<th scope="col"><a
									style="text-decoration: none; color: black;"
									href="?sortBy=roomID&sortOrder=${sortBy == 'roomID' && sortOrder == 'asc' ? 'desc' : 'asc'}">
										RoomID </a> <c:choose>
										<c:when test="${sortBy == 'roomID'}">
											<i
												class="fas fa-${sortOrder == 'asc' ? 'sort-up' : 'sort-down'}"></i>
										</c:when>
										<c:otherwise>
											<i class="fas fa-sort"></i>
										</c:otherwise>
									</c:choose></th>
								<th scope="col"><a
									style="text-decoration: none; color: black;"
									href="?sortBy=roomNumber&sortOrder=${sortBy == 'roomNumber' && sortOrder == 'asc' ? 'desc' : 'asc'}">
										RoomNumber </a> <c:choose>
										<c:when test="${sortBy == 'roomNumber'}">
											<i
												class="fas fa-${sortOrder == 'asc' ? 'sort-up' : 'sort-down'}"></i>
										</c:when>
										<c:otherwise>
											<i class="fas fa-sort"></i>
										</c:otherwise>
									</c:choose></th>
								<th scope="col"><a
									style="text-decoration: none; color: black;"
									href="?sortBy=roomType.roomTypeID&sortOrder=${sortBy == 'roomType.roomTypeID' && sortOrder == 'asc' ? 'desc' : 'asc'}">
										RoomTypeID </a> <c:choose>
										<c:when test="${sortBy == 'roomType.roomTypeID'}">
											<i
												class="fas fa-${sortOrder == 'asc' ? 'sort-up' : 'sort-down'}"></i>
										</c:when>
										<c:otherwise>
											<i class="fas fa-sort"></i>
										</c:otherwise>
									</c:choose></th>
								<th scope="col">Images</th>
								<th scope="col"><a
									style="text-decoration: none; color: black;"
									href="?sortBy=pricePerNight&sortOrder=${sortBy == 'pricePerNight' && sortOrder == 'asc' ? 'desc' : 'asc'}">
										PricePerNight </a> <c:choose>
										<c:when test="${sortBy == 'pricePerNight'}">
											<i
												class="fas fa-${sortOrder == 'asc' ? 'sort-up' : 'sort-down'}"></i>
										</c:when>
										<c:otherwise>
											<i class="fas fa-sort"></i>
										</c:otherwise>
									</c:choose></th>
								<th scope="col"><a
									style="text-decoration: none; color: black;"
									href="?sortBy=status.statusName&sortOrder=${sortBy == 'status.statusName' && sortOrder == 'asc' ? 'desc' : 'asc'}">
										Status </a> <c:choose>
										<c:when test="${sortBy == 'status.statusName'}">
											<i
												class="fas fa-${sortOrder == 'asc' ? 'sort-up' : 'sort-down'}"></i>
										</c:when>
										<c:otherwise>
											<i class="fas fa-sort"></i>
										</c:otherwise>
									</c:choose></th>
								<th scope="col">Edit</th>
							</tr>


						</thead>
						<tbody>
							<c:forEach var="room" items="${rooms}">
								<tr>
									<td>${room.roomID}</td>
									<td>${room.roomNumber}</td>
									<td>${room.roomType.roomTypeID}</td>
									<td><img style="width: 100px; height: 100px;"
										src="/upload/${room.image1}" alt="Student Image" /></td>
									<td>${room.pricePerNight}</td>
									<td>${room.status.statusName}</td>
									<td><button class="btn btn-primary">Edit</button></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<td colspan="7">
						<div class="d-flex justify-content-center button-group">
							<a class="btn btn-secondary me-2"
								href="?page=0&keyword=${keyword}&sortBy=${sortBy}&sortOrder=${sortOrder}"
								${currentPage==0 ? 'disabled' : '' }>First</a> <a
								class="btn btn-secondary me-2"
								href="?page=${currentPage - 1}&keyword=${keyword}&sortBy=${sortBy}&sortOrder=${sortOrder}"
								${currentPage==0 ? 'disabled' : '' }>Previous</a> <a
								class="btn btn-secondary me-2"
								href="?page=${currentPage + 1}&keyword=${keyword}&sortBy=${sortBy}&sortOrder=${sortOrder}"
								${currentPage==totalPages - 1 ? 'disabled' : '' }>Next</a> <a
								class="btn btn-secondary"
								href="?page=${totalPages - 1}&keyword=${keyword}&sortBy=${sortBy}&sortOrder=${sortOrder}"
								${currentPage==totalPages - 1 ? 'disabled' : '' }>Last</a>
						</div>
					</td>


				</div>
				<div class="tab-pane fade" id="room-edition">
					<h3>Room Edition</h3>
					<form:form action="/admin/roommanager/add" method="POST"
						modelAttribute="room" enctype="multipart/form-data">
						<div class="mb-3">
							<label for="roomid" class="form-label">RoomID</label>
							<form:input path="roomID" type="text" class="form-control"
								id="roomid" placeholder="Enter RoomID" />
						</div>
						<div class="mb-3">
							<label for="roomnum" class="form-label">RoomNumber</label>
							<form:input path="roomNumber" type="text" class="form-control"
								id="roomnum" placeholder="Enter RoomNumber" />
						</div>
						<div class="mb-3">
							<label for="roomtypeid" class="form-label">RoomTypeID</label>
							<form:select path="roomType.roomTypeID" cssClass="form-select">
								<form:options items="${roomTypes}" itemValue="roomTypeID"
									itemLabel="roomTypeName" />
							</form:select>
						</div>
						<div class="mb-3">
							<label for="statusid" class="form-label">StatusID</label>
							<form:select path="status.statusID" cssClass="form-select">
								<form:options items="${statuses}" itemValue="statusID"
									itemLabel="statusName" />
							</form:select>
						</div>


						<div class="mb-3">
							<label for="price" class="form-label">PricePerNight</label>
							<form:input path="pricePerNight" type="text" class="form-control"
								id="price" placeholder="Enter PricePerNight" />
						</div>
						<div class="row">
							<label for="images" class="form-label">Images</label>
							<div class="mb-3 col">
								<input type="file" class="form-control-file" id="customFile1"
									name="imageFile1" multiple>
							</div>
							<div class="mb-3 col">
								<input type="file" class="form-control-file" id="customFile2"
									name="imageFile2" multiple>
							</div>
							<div class="mb-3 col">
								<input type="file" class="form-control-file" id="customFile3"
									name="imageFile3" multiple>
							</div>
							<div class="mb-3 col">
								<input type="file" class="form-control-file" id="customFile4"
									name="imageFile4" multiple>
							</div>
							<div class="mb-3 col">
								<input type="file" class="form-control-file" id="customFile5"
									name="imageFile5" multiple>
							</div>
							<div class="mb-3 col">
								<input type="file" class="form-control-file" id="customFile6"
									name="imageFile6" multiple>
							</div>
						</div>


						<div class="mb-3">
							<button type="submit" class="btn btn-success">Create</button>
							<button type="submit" class="btn btn-primary">Update</button>
							<button type="submit" class="btn btn-danger">Delete</button>
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