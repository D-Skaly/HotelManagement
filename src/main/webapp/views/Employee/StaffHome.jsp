<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Homepage</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
        }

        .container {
            max-width: 1200px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        }
        .container {
            max-width: 1200px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        }
        .jumbotron {
            background-image: linear-gradient(to right, #ffefba, #ffffff);
            color: #343a40;
            padding: 100px 0;
            text-align: center;
            border-radius: 10px;
            margin-bottom: 50px;
            position: relative;
        }

        .jumbotron h1 {
            font-size: 3em;
            margin-bottom: 20px;
            color: #343a40; /* Màu chữ */
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3); /* Hiệu ứng bóng chữ */
        }

        .jumbotron p {
            font-size: 1.2em;
            color: #555; /* Màu chữ */
        }


        .overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            border-radius: 10px;
        }

        .features {
            display: flex;
            justify-content: space-between;
            align-items: center;
            flex-wrap: wrap;
        }

        .feature {
            flex-basis: 30%;
            text-align: center;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 30px;
            transition: transform 0.3s ease;
            background-color: #f8f9fa;
        }

        .feature:hover {
            transform: translateY(-5px);
            background-color: #ffffff;
        }

        .feature i {
            font-size: 3em;
            margin-bottom: 20px;
            color: #007bff;
        }

        .feature h3 {
            font-size: 1.5em;
            margin-bottom: 10px;
            color: #343a40;
        }

        .feature p {
            font-size: 1.1em;
            color: #555;
        }
    </style>
</head>
<body>
<header>
        <jsp:include page="/views/Employee/headerStaff.jsp"></jsp:include>

</header>
    <div class="container">
        <div class="jumbotron">
            <div class="overlay"></div>
            <h1>Welcome to Employee Homepage</h1>
            <p>Stay productive, stay connected.</p>
        </div>

        <div class="features">
            <div class="feature">
                <i class="fas fa-tasks" style="color: #ff5722;"></i>
                <h3>Task Management</h3>
                <p>Stay organized by managing your tasks efficiently.</p>
            </div>
            <div class="feature">
                <i class="fas fa-calendar-alt" style="color: #4caf50;"></i>
                <h3>Calendar</h3>
                <p>Keep track of important events and deadlines.</p>
            </div>
            <div class="feature">
                <i class="fas fa-comments" style="color: #ff9800;"></i>
                <h3>Messages</h3>
                <p>Communicate easily with your team members.</p>
            </div>
        </div>
    </div>

    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
</body>
</html>
