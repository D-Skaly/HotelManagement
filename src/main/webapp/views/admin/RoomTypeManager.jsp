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
					class="nav-link <c:if test='${activeTab == "room-list"}'>active</c:if>'"
					id="room-list-tab" data-bs-toggle="tab" href="#room-list">Room
						List</a></li>
				<li class="nav-item"><a
					class="nav-link <c:if test='${activeTab == "room-edition"}'>active</c:if>'"
					id="room-edition-tab" data-bs-toggle="tab" href="#room-edition">Room
						Edition</a></li>
			</ul>
			<div class="tab-content mt-4">
				<div
					class="tab-pane fade <c:if test='${activeTab == "room-list"}'>show active</c:if>"
					id="room-list">
					<h3>Room List</h3>
					<table class="table">
						<thead>
							<tr>
								<th scope="col">Room Type ID</th>
								<th scope="col">Room Type Name</th>
								<th scope="col">Description</th>
								<th scope="col">Edit</th>
							</tr>
						</thead>
						<tbody>

							<c:forEach var="roomType" items="${roomTypes}">
								<tr>
									<td>${roomType.roomTypeID}</td>
									<td>${roomType.roomTypeName}</td>
									<td>${roomType.description}</td>
									<td><a
										href="/admin/roomTypeManager/edit/${roomType.roomTypeID}"
										class="btn btn-warning">Edit</a> <a
										href="/admin/roomTypeManager/delete/${roomType.roomTypeID}"
										class="btn btn-danger">Delete</a></td>										
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<div
					class="tab-pane fade <c:if test='${activeTab == "room-edition"}'>show active</c:if>"
					id="room-edition">
					<h3>Room Edition</h3>
					<form:form action="/admin/roomTypeManager/create"
						modelAttribute="roomType" method="post">
						<div class="mb-3">
							<label for="room-type-id" class="form-label">Room Type ID</label>
							<form:input path="roomTypeID" class="form-control"
								id="room-type-id" placeholder="Enter Room Type ID" />
						</div>
						<div class="mb-3">
							<label for="room-type-name" class="form-label">Room Type
								Name</label>
							<form:input path="roomTypeName" class="form-control"
								id="room-type-name" placeholder="Enter Room Type Name" />
						</div>
						<div class="mb-3">
							<label for="description" class="form-label">Description</label>
							<form:input path="description" class="form-control"
								id="description" placeholder="Enter Description" />
						</div>
						<div class="mb-3">
							<button type="submit" class="btn btn-primary">Create</button>
							
							<button formaction="/admin/roomTypeManager/update" class="btn btn-warning">Update</button>
							<a href="/admin/roomTypeManager/new" class="btn btn-success">New</a>
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
	<script>
		document.addEventListener('DOMContentLoaded', function() {
			var activeTab = '<c:out value="${activeTab}"/>';
			if (activeTab === 'room-edition') {
				var roomEditionTab = new bootstrap.Tab(document
						.querySelector('#room-edition-tab'));
				roomEditionTab.show();
			} else {
				var roomListTab = new bootstrap.Tab(document
						.querySelector('#room-list-tab'));
				roomListTab.show();
			}
		});
	</script>
</body>

</html>
