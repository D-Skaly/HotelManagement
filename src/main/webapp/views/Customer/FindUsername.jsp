<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<link rel="icon" href="/views/Images/logofooter.png" type="image/png">
<title>Quên mật khẩu</title>
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
}

p {
    color: #666;
    margin-bottom: 20px;
}

label {
    display: block;
    text-align: left;
    margin-bottom: 5px;
    font-weight: bold;
}

input[type="text"] {
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
}

button[type="submit"]:hover {
    background-color: #E91E63;
}

.error {
    color: red;
    margin-top: 5px; /* Giảm khoảng cách từ phần error đến input */
    font-size: 14px; /* Giảm kích thước font chữ */
}

.lang-switch {
    position: absolute;
    top: 10px;
    right: 10px;
}

.lang-switch a {
    color: #fff;
    text-decoration: none;
    margin-left: 10px;
}
</style>
</head>
<body>

<div class="container">
    <h2>Quên mật khẩu</h2>
    <p>Vui lòng nhập địa chỉ Username của bạn.</p>
    <form action="/Customer/VerifyUsername" method="POST">
        <label for="username">Username:</label> <input type="text"
            id="username" name="username" required>
        <c:if test="${not empty error}">
            <p class="error">${error}</p>
        </c:if>
        <button type="submit">
            Tiếp theo <i class="fas fa-arrow-right"></i>
        </button>
    </form>
</div>
<script>
    $(document).ready(function() {
        $("a[href*=lang]").on("click", function() {
            var param = $(this).attr("href");
            $.ajax({
                url : "/home/index" + param,
                success : function() {
                    location.reload();
                }
            });
            return false;
        })
    })
</script>
</body>
</html>
