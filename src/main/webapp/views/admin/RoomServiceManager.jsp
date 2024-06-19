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
              <li class="nav-item"><a class="nav-link active" id="video-list-tab" data-bs-toggle="tab" href="#service-list">RoomServiceType List</a></li>
              <li class="nav-item"><a class="nav-link" id="video-edition-tab" data-bs-toggle="tab" href="#service-edition">RoomServiceType Edition</a></li>
            </ul>
            <div class="tab-content mt-4">
              <div class="tab-pane fade show active" id="service-list">
                <h3>RoomServiceType List</h3>
                <table class="table">
                  <thead>
                    <tr>
                      <th scope="col"> Room ID</th>
                      <th scope="col"> Service ID</th>
                      <th scope="col"> Action</th>

                      
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>*****</td>
                      <td>*****</td>
                     
                      <td><button class="btn btn-primary">Edit</button></td>
                    </tr>
                    <tr>
                      <td>*****</td>
                      <td>*****</td>
                      
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
                <h3>Payments Edition</h3>
                <form>
                  <div class="mb-3">
                    <label for="service-id" class="form-label">Room ID</label>
                    <select class="form-select" id="service-name">
                        <option value="payment1">Payment 1</option>
                        <option value="payment2">Payment 2</option>
                        <option value="payment3">Payment 3</option>
                        <!-- Thêm các tùy chọn khác nếu cần thiết -->
                    </select>                  </div>
                  <div class="mb-3">
                    <label for="service-name" class="form-label">Service ID </label>
                    <select class="form-select" id="service-name">
                        <option value="payment1">Payment 1</option>
                        <option value="payment2">Payment 2</option>
                        <option value="payment3">Payment 3</option>
                        <!-- Thêm các tùy chọn khác nếu cần thiết -->
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
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"
        integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V"
        crossorigin="anonymous"></script>
</body>

</html>