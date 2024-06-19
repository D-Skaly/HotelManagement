<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Quên mật khẩu - Quản lý khách sạn</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<link rel="icon" href="/views/Images/logofooter.png" type="image/png">
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background: linear-gradient(135deg, #4fc3f7, #ff4081);
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .container {
        max-width: 400px;
        padding: 20px;
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.1);
        text-align: center;
    }

    h2 {
        color: #333;
        margin-bottom: 20px;
    }

    p {
        color: #666;
        margin-bottom: 30px;
    }

    label {
        display: block;
        text-align: left;
        margin-bottom: 5px;
        font-weight: bold;
    }

    input[type="email"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    button[type="submit"] {
        background-color: #FF4081;
        color: #fff;
        border: none;
        border-radius: 4px;
        padding: 10px 20px;
        cursor: pointer;
        font-size: 16px;
        transition: background-color 0.3s ease;
    }

    button[type="submit"]:hover {
        background-color: #E91E63;
    }

    .error {
        color: red;
        margin-top: 10px;
        text-align: center;
    }
</style>
</head>
<body>
    <div class="container">
        <h2>Quên mật khẩu</h2>
        <p>Vui lòng nhập địa chỉ email của bạn. Chúng tôi sẽ gửi hướng dẫn đặt lại mật khẩu đến email của bạn.</p>
        <form action="/Customer/ForgotPassword" method="POST">
            <input type="hidden" name="username" value="${username}">
            <label for="email">Địa chỉ email:</label>
            <input type="email" id="email" name="email" required>
            <button type="submit">Gửi liên kết đặt lại mật khẩu <i class="fas fa-arrow-right"></i></button>
        </form>
        <c:if test="${not empty error}">
            <p class="error">${error}</p>
        </c:if>
    </div>
</body>
</html>