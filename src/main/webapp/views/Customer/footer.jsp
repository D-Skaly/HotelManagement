<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Footer Example</title>
<style>
body {
	
}

.footer {
	background-color: #141414;
	padding: 40px 20px;
	text-align: left;
	font-family: Arial, sans-serif;
	background-color: #1b1b1b;
	color: #fff;
	margin: 0;
	padding: 0;
}

.footer .container {
	max-width: 1200px;
	margin: 0 auto;
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
}

.footer .col {
	flex: 1;
	min-width: 200px;
	margin: 10px;
}

.footer h3, .footer p {
	font-size: 16px;
	margin-bottom: 10px;
}

.footer ul {
	list-style: none;
	padding: 0;
}

.footer ul li {
	margin: 8px 0;
}

.footer ul li a {
	color: #fff;
	text-decoration: none;
}

.footer ul li a:hover {
	text-decoration: underline;
}

.footer .newsletter {
	text-align: center;
	margin-bottom: 30px;
}

.footer .newsletter input[type="email"] {
	padding: 10px;
	border: none;
	border-radius: 5px 0 0 5px;
	width: 60%;
	max-width: 300px;
}

.footer .newsletter button {
	padding: 10px 20px;
	border: none;
	background-color: #e50914;
	color: #fff;
	border-radius: 0 5px 5px 0;
	cursor: pointer;
}

.footer .newsletter button:hover {
	background-color: #ff0a16;
}

.footer .contact-info p {
	font-size: 14px;
	line-height: 1.6;
}

.footer .social-links ul, .footer .company-policy ul {
	display: flex;
	flex-direction: column;
}

.footer .social-links ul li, .footer .company-policy ul li {
	display: flex;
	align-items: center;
}

.footer .social-links ul li a {
	display: flex;
	align-items: center;
}

.footer .social-links ul li a img {
	width: 20px;
	height: 20px;
	margin-right: 10px;
}

.footer .social-links ul li a:hover, .footer .company-policy ul li a:hover
	{
	text-decoration: underline;
}
</style>
</head>
<body>
<footer class="footer">
    <div class="newsletter">
        <h3><s:message code="newsletter.title" /></h3>
        <p><s:message code="newsletter.description" /></p>
        <input type="email" placeholder="<s:message code="newsletter.placeholder" />">
        <button><s:message code="newsletter.subscribe" /></button>
    </div>
    <div class="container">
        <div class="col contact-info">
            <img src="/views/Images/logofooter.png" alt="Logo" style="width: 80px">
            <p><s:message code="address" /></p>
            <p><s:message code="email" /></p>
        </div>
        <div class="col">
            <h3><s:message code="pages.title" /></h3>
            <ul>
                <li><a href="#"><s:message code="pages.home" /></a></li>
                <li><a href="#"><s:message code="pages.about" /></a></li>
                <li><a href="#"><s:message code="pages.contact" /></a></li>
                <li><a href="#"><s:message code="pages.gallery" /></a></li>
                <li><a href="#"><s:message code="pages.profile" /></a></li>
            </ul>
        </div>
        <div class="col social-links">
            <h3><s:message code="social.title" /></h3>
            <ul>
                <li><a href="#"><img src="/views/Images/ins.png" alt="Instagram"> <s:message code="social.instagram" /></a></li>
                <li><a href="#"><img src="/views/Images/twitter.png" alt="Twitter"> <s:message code="social.twitter" /></a></li>
                <li><a href="#"><img src="/views/Images/fb.png" alt="Facebook"> <s:message code="social.facebook" /></a></li>
            </ul>
        </div>
        <div class="col company-policy">
            <h3><s:message code="policy.title" /></h3>
            <ul>
                <li><a href="#"><s:message code="policy.privacy" /></a></li>
                <li><a href="#"><s:message code="policy.terms" /></a></li>
            </ul>
        </div>
    </div>
</footer>


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
