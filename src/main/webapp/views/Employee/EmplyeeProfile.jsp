<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="/views/Css/admin.css">
    <title>My Profile</title>

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
        <jsp:include page="/views/headerStaff.jsp"></jsp:include>
    </header>

    <div class="container">
        <div style="background-color: whitesmoke;" class="main">
                    <form action="/employee/profile/updates" method="post">
    <div class="mb-3">
        <label for="username" class="form-label">Username</label>
        <input type="text" class="form-control" id="username" name="userName" placeholder="Enter Username" value="${em.userName}" readonly>
    </div>
    <div class="mb-3">
        <label for="pass" class="form-label">Password</label>
        <input type="text" class="form-control" id="pass" name="password" placeholder="Enter Password" value="${em.password}">
    </div>
    <div class="mb-3">
        <label for="fullname" class="form-label">Fullname</label>
        <input type="text" class="form-control" id="fullName" name="fullName" placeholder="Enter Fullname" value="${em.fullName}">
    </div>
    <div class="mb-3">
        <label for="phone" class="form-label">Phone Numbers</label>
        <input type="text" class="form-control" id="phone" name="phone" placeholder="Enter Phone Numbers" value="${em.phone}">
    </div>
    <div class="mb-3">
        <label for="email" class="form-label">Email</label>
        <input type="text" class="form-control" id="email" name="email" placeholder="Enter Email" value="${em.email}">
    </div>
    <div class="mb-3">
        <label for="address" class="form-label">Address</label>
        <input type="text" class="form-control" id="address" name="address" placeholder="Enter Address" value="${em.address}">
    </div>
    <div class="mb-3">
        <div class="form-check form-check-inline">
            <input type="radio" class="form-check-input" id="active" name="active" value="true" ${em.active ? 'checked' : ''}>
            <label for="active" class="form-check-label">Active</label>
        </div>
        <div class="form-check form-check-inline">
            <input type="radio" class="form-check-input" id="inactive" name="active" value="false" ${!em.active ? 'checked' : ''}>
            <label for="inactive" class="form-check-label">Inactive</label>
        </div>
    </div>
    <div class="mb-3">
        <button type="submit" class="btn btn-primary">Update</button>
    </div>
</form>

                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
</body>

</html>
