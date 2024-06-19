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
            <li class="nav-item">
                <a class="nav-link ${activeTab == 'user-list' ? 'active' : ''}" id="video-list-tab" data-bs-toggle="tab" href="#service-list">Payments List</a>
            </li>
            <li class="nav-item">
                <a class="nav-link ${activeTab == 'user-edition' ? 'active' : ''}" id="video-edition-tab" data-bs-toggle="tab" href="#service-edition">Payments Edition</a>
            </li>
        </ul>
        <div class="tab-content mt-4">
            <div class="tab-pane fade ${activeTab == 'user-list' ? 'show active' : ''}" id="service-list">
                <h3>Payments List</h3>
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">PaymentMethodID</th>
                            <th scope="col">MethodName</th>
                            <th scope="col">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="PaymentMethod" items="${paymentMethods}">
                            <tr>
                                <td>${PaymentMethod.paymentMethodID}</td>
                                <td>${PaymentMethod.methodName}</td>
                                <td>
                                    <a href="/admin/paymentmethodsmanager/edit/${PaymentMethod.paymentMethodID}" class="btn btn-primary">Edit</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <div class="tab-pane fade ${activeTab == 'user-edition' ? 'show active' : ''}" id="service-edition">
                <h3>Payments Edition</h3>
                <form action="/admin/paymentmethodsmanager/save" method="post">
                    <div class="mb-3">
                        <label for="service-id" class="form-label">Payments ID</label>
                        <input type="text" class="form-control" name="paymentMethodID" value="${paymentMethod.paymentMethodID}" placeholder="Enter Service ID">
                    </div>
                    <div class="mb-3">
                        <label for="service-name" class="form-label">Payments Name</label>
                        <input class="form-control" type="text" name="methodName" value="${paymentMethod.methodName}" placeholder="Enter Service Name">
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
</div>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
</body>

</html>
