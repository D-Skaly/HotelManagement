<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="/views/Css/admin.css">
<title>Room Employee</title>
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
		<jsp:include page="/views/Employee/headerStaff.jsp"></jsp:include>
	</header>
	<div class="container">
		<jsp:include page="/views/Employee/menuStaff.jsp"></jsp:include>
		<div style="background-color: whitesmoke;" class="main">
			<ul class="nav nav-tabs mt-4">
				<li class="nav-item"><a class="nav-link active"
					id="video-list-tab" data-bs-toggle="tab" href="#user-list">Room
						List</a></li>
				<li class="nav-item"><a class="nav-link" id="video-edition-tab"
					data-bs-toggle="tab" href="#user-edition">Room Edition</a></li>
			</ul>
			<div class="tab-content mt-4">
				<div class="tab-pane fade show active" id="user-list">
					<h3>Room List</h3>
					<table class="table">
						<thead>
							<tr>
								<th scope="col">RoomID</th>
								<th scope="col">RoomNumber</th>
								<th scope="col">RoomTypeID</th>
								<th scope="col">Images</th>
								<th scope="col">PricePerNight</th>
								<th scope="col">Status</th>
								<th scope="col">Edit</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>101</td>
								<td>101</td>
								<td>1</td>
								<td>a.jpg</td>
								<td>100</td>
								<td>Available</td>
								<td><button class="btn btn-primary">Edit</button></td>
							</tr>
							<tr>
								<td>102</td>
								<td>102</td>
								<td>2</td>
								<td>a.jpg</td>
								<td>150</td>
								<td>Occupied</td>
								<td><button class="btn btn-primary">Edit</button></td>
							</tr>
							<tr>
								<td colspan="7">
									<button class="btn btn-secondary">First</button>
									<button class="btn btn-secondary">Previous</button>
									<button class="btn btn-secondary">Next</button>
									<button class="btn btn-secondary">Last</button>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="tab-pane fade" id="user-edition">
					<h3>Room Edition</h3>
					<form>
						<div class="mb-3">
							<label for="roomid" class="form-label">RoomID</label> <input
								type="text" class="form-control" id="roomid" name="roomid"
								placeholder="Enter RoomID">
						</div>
						<div class="mb-3">
							<label for="roomnum" class="form-label">RoomNumber</label> <input
								type="text" class="form-control" id="roomnum" name="roomnum"
								placeholder="Enter RoomNumber">
						</div>
						<div class="mb-3">
							<label for="roomtypeid" class="form-label">RoomTypeID</label> <select
								class="form-control" id="roomtypeid" name="roomtypeid">
								<option value="">Select RoomTypeID</option>
								<option value="1">RoomType 1</option>
								<option value="2">RoomType 2</option>
								<option value="3">RoomType 3</option>
								<!-- Add more options as needed -->
							</select>
						</div>
						<div class="row">
							<label for="images" class="form-label">Images</label>
							<div class="mb-3 col">
								<input type="file" class="form-control-file" id="customFile1"
									name="images" multiple>
							</div>
							<div class="mb-3 col">
								<input type="file" class="form-control-file" id="customFile2"
									name="images" multiple>
							</div>
							<div class="mb-3 col">
								<input type="file" class="form-control-file" id="customFile3"
									name="images" multiple>
							</div>
							<div class="mb-3 col">
								<input type="file" class="form-control-file" id="customFile4"
									name="images" multiple>
							</div>
							<div class="mb-3 col">
								<input type="file" class="form-control-file" id="customFile5"
									name="images" multiple>
							</div>
							<div class="mb-3 col">
								<input type="file" class="form-control-file" id="customFile6"
									name="images" multiple>
							</div>
						</div>
						<div class="mb-3">
							<label for="price" class="form-label">PricePerNight</label> <input
								type="text" class="form-control" id="price" name="price"
								placeholder="Enter PricePerNight">
						</div>
						<div class="mb-3">
							<label for="status" class="form-label">Status</label> <select
								class="form-select" id="status" name="status">
								<option value="">Select Status</option>
								<option value="Available">Available</option>
								<option value="Occupied">Occupied</option>
								<option value="Maintenance">Maintenance</option>
								<option value="Booked">Booked</option>
								<!-- Add more options as needed -->
							</select>
						</div>

						<div class="mb-3">
							<button type="submit" class="btn btn-primary">Update</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
