<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SignIn</title>
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet"
        href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="path/to/your/custom/css/style.css">
    <link rel="icon" href="/views/Images/logofooter.png" type="image/png">
    <style>
    </style>
</head>

<body class="bg-light">
    <div class="container mt-5">
        <div class="text-right mt-3">
            <a href="?lang=en">English</a> | <a href="?lang=vi">Tiếng Việt</a>
        </div>
        <div class="row justify-content-center">
            <!-- Sử dụng justify-content-center để căn giữa phần tử col-md-6 -->
            <div class="col-md-5">
                <div class="card shadow-lg p-4 login-card">
                    <h2 class="text-center mb-4"><s:message code="signin.title" /></h2>
                    <form action="/customer/signIn" method="post">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="<s:message code="signin.username" />"
                                name="username">
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control"
                                placeholder="<s:message code="signin.password" />" name="password">
                        </div>
                        <div class="form-group form-check">
                            <input type="checkbox" class="form-check-input" id="rememberMe">
                            <label class="form-check-label" for="rememberMe"><s:message code="signin.remember" /></label>
                        </div>
                        <button type="submit" class="btn btn-primary btn-block"><s:message code="signin.title" /></button>
                    </form>
                    <div class="text-center mt-3">
                        <a href="/Customer/VerifyUsername" class="text-muted"><s:message code="signin.forgot" /></a>
                    </div>
                    <div class="text-center mt-3">
                        <span><s:message code="signin.signup" /> <a href="/customer/signUp"
                            class="text-primary"><s:message code="signin.ahref" /></a></span>
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
