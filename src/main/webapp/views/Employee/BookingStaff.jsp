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

<title>Booking Employee</title>

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
        <jsp:include page="/views/Employee/headerStaff.jsp"></jsp:include>
    </header>
    <div class="container">
        <jsp:include page="/views/Employee/menuStaff.jsp"></jsp:include>
        <div style="background-color: whitesmoke;" class="main">
            <ul class="nav nav-tabs mt-4">
                <li class="nav-item"><a class="nav-link active"
                    id="video-list-tab" data-bs-toggle="tab" href="#rental-list">Rental
                        List</a></li>
                <li class="nav-item"><a class="nav-link" id="video-edition-tab"
                    data-bs-toggle="tab" href="#rental-edition">Booking Edition</a></li>
            </ul>
            <div class="tab-content mt-4">
                <div class="tab-pane fade show active" id="rental-list">
                    <h3>Booking List</h3>

                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">RentalID</th>
                                <th scope="col">RoomID</th>
                                <th scope="col">CustomerID</th>
                                <th scope="col">EmployeeID</th>
                                <th scope="col">RentalDate</th>
                                <th scope="col">ReturnDate</th>
                                <th scope="col">TotalAmount</th>
                                <th scope="col">Edit</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1001</td>
                                <td>101</td>
                                <td>201</td>
                                <td>301</td>
                                <td>2023-05-01</td>
                                <td>2023-05-05</td>
                                <td>400</td>
                                <td><button class="btn btn-primary">Edit</button></td>
                            </tr>
                            <tr>
                                <td>1002</td>
                                <td>102</td>
                                <td>202</td>
                                <td>302</td>
                                <td>2023-05-10</td>
                                <td>2023-05-15</td>
                                <td>750</td>
                                <td><button class="btn btn-primary">Edit</button></td>
                            </tr>
                            <tr>
                                <td colspan="8">
                                    <button class="btn btn-secondary">First</button>
                                    <button class="btn btn-secondary">Previous</button>
                                    <button class="btn btn-secondary">Next</button>
                                    <button class="btn btn-secondary">Last</button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="tab-pane fade" id="rental-edition">
                    <h3>Booking Edition</h3>

                    <form>
                        <div class="mb-3">
                            <label for="rentalid" class="form-label">Booking ID</label>
                            <input type="text" class="form-control" id="rentalid" name="rentalid" placeholder="Enter Booking ID">
                        </div>

                        <div class="mb-3">
                            <label for="customerid" class="form-label">Customer ID</label>
                            <input type="text" class="form-control" id="customerid" name="customerid" placeholder="Enter Customer ID">
                        </div>

                        <div class="mb-3">
                            <label for="roomid" class="form-label">Room ID</label>
                            <select class="form-select" id="roomid" name="roomid">
                                <option value="">Select Room ID</option>
                                <option value="room1">Room 1</option>
                                <option value="room2">Room 2</option>
                                <option value="room3">Room 3</option>
                                <!-- Thêm các tùy chọn khác nếu cần -->
                            </select>
                        </div>

                        <div class="mb-3">
                            <label for="checkindate" class="form-label">Checkin Date</label>
                            <input type="date" class="form-control" id="checkindate" name="checkindate" placeholder="Select Checkin Date">
                        </div>

                        <div class="mb-3">
                            <label for="checkoutdate" class="form-label">Checkout Date</label>
                            <input type="date" class="form-control" id="checkoutdate" name="checkoutdate" placeholder="Select Checkout Date">
                        </div>

                        <div class="mb-3">
                            <label for="bookingdate" class="form-label">Booking Date</label>
                            <input type="date" class="form-control" id="bookingdate" name="bookingdate" placeholder="Select Booking Date">
                        </div>

                        <div class="mb-3">
                            <label for="statusid" class="form-label">Status Name</label>
                            <select class="form-select" id="statusid" name="statusid">
                                <option value="">Select Status Name</option>
                                <option value="status1">Status 1</option>
                                <option value="status2">Status 2</option>
                                <option value="status3">Status 3</option>
                                <!-- Thêm các tùy chọn khác nếu cần -->
                            </select>
                        </div>

                        <div class="mb-3">
                            <button type="button" class="btn btn-primary">Update</button>
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
