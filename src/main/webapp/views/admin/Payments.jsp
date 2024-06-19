<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
				<li class="nav-item"><a class="nav-link active"
					id="video-list-tab" data-bs-toggle="tab" href="#room-list">Payments
						List</a></li>
				<li class="nav-item"><a class="nav-link" id="video-edition-tab"
					data-bs-toggle="tab" href="#room-edition">Payments Edition</a></li>
			</ul>
			<div class="tab-content mt-4">
				<div class="tab-pane fade show active" id="room-list">
					<h3>Payments List</h3>
					<table class="table">
						<thead>
							<tr>
								<th scope="col">Payments ID</th>
								<th scope="col">Booking ID</th>
								<th scope="col">Payment Date</th>
								<th scope="col">Amount</th>
								<th scope="col">PaymentMethod ID</th>
								<th scope="col">Edit</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>RT001</td>
								<td>Standard Room</td>
								<td>A basic room with standard amenities</td>
								<td>$100</td>
								<td>PM001</td>
								<td><button class="btn btn-primary">Edit</button></td>
							</tr>
							<tr>
								<td>RT002</td>
								<td>Deluxe Room</td>
								<td>A room with additional luxury features</td>
								<td>$200</td>
								<td>PM002</td>
								<td><button class="btn btn-primary">Edit</button></td>
							</tr>
							<tr>
								<td colspan="6">
									<button class="btn btn-secondary">First</button>
									<button class="btn btn-secondary">Previous</button>
									<button class="btn btn-secondary">Next</button>
									<button class="btn btn-secondary">Last</button>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="tab-pane fade" id="room-edition">
					<h3>Payment Edition</h3>
					<form>
						<div class="mb-3">
							<label for="payment-id" class="form-label">Payment ID</label> <input
								type="text" class="form-control" id="payment-id"
								placeholder="Enter Payment ID">
						</div>
						<div class="mb-3">
							<label for="booking-id" class="form-label">Booking ID</label> <select
								class="form-select" id="booking-id">
								<option value="">Select Booking</option>
								<option value="B001">Booking 001</option>
								<option value="B002">Booking 002</option>
								<option value="B003">Booking 003</option>
								<!-- Add more booking options as needed -->
							</select>
						</div>
						<div class="mb-3">
							<label for="payment-date" class="form-label">Payment Date</label>
							<input type="date" class="form-control" id="payment-date"
								placeholder="Enter Payment Date">
						</div>
						<div class="mb-3">
							<label for="amount" class="form-label">Amount</label> <input
								type="number" class="form-control" id="amount"
								placeholder="Enter Amount">
						</div>
						<div class="mb-3">
							<label for="payment-method-id" class="form-label">Payment
								Method ID</label> <select class="form-select" id="payment-method-id">
								<option value="">Select Payment Method</option>
								<option value="PM001">Credit Card</option>
								<option value="PM002">Debit Card</option>
								<option value="PM003">PayPal</option>
								<!-- Add more payment method options as needed -->
							</select>
						</div>
						<div class="mb-3">
							<button type="button" class="btn btn-success">Create</button>
							<button type="button" class="btn btn-primary">Update</button>
							<button type="button" class="btn btn-danger">Delete</button>
						</div>
					</form>
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