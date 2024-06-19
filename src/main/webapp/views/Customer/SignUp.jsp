<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%><%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SignUp</title>
    <link rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="path/to/your/custom/css/style.css">
    <link rel="icon" href="/views/Images/logofooter.png" type="image/png">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .login-container {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 30px;
            margin-top: 50px;
        }
        .login-container h2 {
            text-align: center;
            margin-bottom: 30px;
            color: #333;
        }
        .login-container .form-group {
            margin-bottom: 20px;
        }
        .login-container label {
            font-weight: bold;
        }
        .login-container .btn-primary {
            background-color: #007bff;
            border: none;
        }
        .login-container .btn-primary:hover {
            background-color: #0056b3;
        }
        .login-container .form-group input[type="text"],
        .login-container .form-group input[type="password"] {
            border-radius: 5px;
        }
        .login-container .form-group input[type="text"]:focus,
        .login-container .form-group input[type="password"]:focus {
            box-shadow: none;
        }
        .login-container .form-group input[type="password"]::placeholder,
        .login-container .form-group input[type="text"]::placeholder {
            color: #aaa;
        }
        .login-container .form-group .error-message {
            color: red;
        }
        .login-container .back-to-login {
            margin-top: 20px;
            text-align: center;
        }
        .login-container .back-to-login a {
            color: #007bff;
        }
        .login-container .back-to-login a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="container">
                <div class="text-right mt-3">
            <a href="?lang=en">English</a> | <a href="?lang=vi">Tiếng Việt</a>
        </div>
    <div class="row justify-content-center">
    
        <div class="col-md-8 col-lg-6">

            <div class="login-container">
                <h2><s:message code="signup.title" /></h2>
                <form:form action="/customer/signUp" method="post" modelAttribute="customer">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <form:input type="text" class="form-control" placeholder="Username" path="userName" />
                                <form:errors path="userName" style="color: red;" />
   <%--                              <label style="color: red;">${duplicateUsernameMessage}</label> --%>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <form:input type="text" class="form-control" placeholder="Full Name" path="fullName" />
                                <form:errors path="fullName" style="color: red;" />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <form:input type="text" class="form-control" placeholder="Phone Number" path="phone" />
                        <form:errors path="phone" style="color: red;" />
                    </div>
                    <div class="form-group">
                        <form:input type="text" class="form-control" placeholder="Email" path="email" />
                        <form:errors path="email" style="color: red;" />
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <form:input type="password" class="form-control" placeholder="Password" path="password" />
                                <form:errors path="password" style="color: red;" />
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="password" class="form-control" placeholder="Confirm Password" name="confirmPassword" />
                                <label style="color: red;">${nomatchMessage}</label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-primary btn-block"><s:message code="signup.title" /></button>
                    </div>
                </form:form>
                <div class="back-to-login">
                    <p><s:message code="signup.alreadyaccount" /><a href="/customer/signIn">Sign In</a></p>
                </div>
            </div>
        </div>
    </div>
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
