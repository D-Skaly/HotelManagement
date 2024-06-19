<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
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
              <li class="nav-item"><a class="nav-link active" id="video-list-tab" data-bs-toggle="tab" href="#service-list">Service List</a></li>
              <li class="nav-item"><a class="nav-link" id="video-edition-tab" data-bs-toggle="tab" href="#service-edition">Service Edition</a></li>
            </ul>
            <div class="tab-content mt-4">
              <div class="tab-pane fade show active" id="service-list">
                <h3>Service List</h3>
                <table class="table">
                  <thead>
                    <tr>
                      <th scope="col">Service ID</th>
                      <th scope="col">Service Name</th>
                      <th scope="col">Description</th>
                      <th scope="col">Price</th>
                      <th scope="col">Edit</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>S001</td>
                      <td>Room Service</td>
                      <td>24-hour in-room dining</td>
                      <td>$20</td>
                      <td><button class="btn btn-primary">Edit</button></td>
                    </tr>
                    <tr>
                      <td>S002</td>
                      <td>Spa Package</td>
                      <td>Relaxing spa treatments</td>
                      <td>$100</td>
                      <td><button class="btn btn-primary">Edit</button></td>
                    </tr>
                    <tr>
                      <td colspan="5">
                        <button class="btn btn-secondary">First</button>
                        <button class="btn btn-secondary">Previous</button>
                        <button class="btn btn-secondary">Next</button>
                        <button class="btn btn-secondary">Last</button>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>
              <div class="tab-pane fade" id="service-edition">
                <h3>Service Edition</h3>
                <form action="/admin/servicemanager/add">
                  <div class="mb-3">
                    <label for="service-id" class="form-label">Service ID</label>
                    <input type="text" class="form-control" name="${serviceID}" value="${service.serviceID}" placeholder="Enter Service ID">
                  </div>
                  <div class="mb-3">
                    <label for="service-name" class="form-label">Service Name</label>
                    <input type="text" class="form-control" name="${serviceName}" value="${service.serviceName}" placeholder="Enter Service Name">
                  </div>
                  <div class="mb-3">
                    <label for="description" class="form-label">Description</label>
                    <input type="text" class="form-control" name="${description}" value="${service.description}" placeholder="Enter Description">
                  </div>
                  <div class="mb-3">
                    <label for="price" class="form-label">Price</label>
                    <input type="number" class="form-control" name="${price}" value="${service.price}" placeholder="Enter Price">
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
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"
        integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V"
        crossorigin="anonymous"></script>
</body>

</html>