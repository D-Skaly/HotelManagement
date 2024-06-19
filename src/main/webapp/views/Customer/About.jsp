<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://fonts.googleapis.com/css?family=Inter&display=swap"
	rel="stylesheet">
<link href="/views/Css/about.css" rel="stylesheet">
<link rel="icon" href="/views/Images/logofooter.png" type="image/png">
<title>Small Team, Big Hearts</title>
<style>
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
	<jsp:include page="/views/Customer/header.jsp"></jsp:include>

	<main>
		<section class="intro">
			<h1>
				<s:message code="team.section.title" />
			</h1>
			<p>
				<s:message code="team.section.description" />
			</p>
		</section>

		<section class="gallery">
			<div class="gallery-item">
				<img src="/views/Images/v115_98.png" alt="Gallery Image 1">
			</div>
			<div class="gallery-item">
				<img src="/views/Images/v115_99.png" alt="Gallery Image 2">
			</div>
			<div class="gallery-item">
				<img src="/views/Images/v115_100.png" alt="Gallery Image 3">
			</div>
			<div class="gallery-item">
				<img src="/views/Images/v115_101.png" alt="Gallery Image 4">
			</div>
			<div class="gallery-item">
				<img src="/views/Images/v115_102.png" alt="Gallery Image 5">
			</div>
			<div class="gallery-item">
				<img src="/views/Images/v115_103.png" alt="Gallery Image 6">
			</div>
		</section>

        <section class="stats">
            <div class="stat-item">
                <h2><s:message code="team.stat1.value" /></h2>
                <p><s:message code="team.stat1.label" /></p>
            </div>
            <div class="stat-item">
                <h2><s:message code="team.stat2.value" /></h2>
                <p><s:message code="team.stat2.label" /></p>
            </div>
            <div class="stat-item">
                <h2><s:message code="team.stat3.value" /></h2>
                <p><s:message code="team.stat3.label" /></p>
            </div>
            <div class="stat-item">
                <h2><s:message code="team.stat4.value" /></h2>
                <p><s:message code="team.stat4.label" /></p>
            </div>
        </section>
        
        
        <section class="team">
            <h3><s:message code="team.members.title" /></h3>
            <p><s:message code="team.members.description" /></p>
            <div class="team-members">
                <div class="team-member">
                    <img src="/views/Images/1.jpg" alt="<s:message code="team.member1.alt" />">
                    <h4><s:message code="team.member1.name" /></h4>
                    <p><s:message code="team.member1.position" /></p>
                </div>
                <div class="team-member">
                    <img src="/views/Images/2.jpg" alt="<s:message code="team.member2.alt" />">
                    <h4><s:message code="team.member2.name" /></h4>
                    <p><s:message code="team.member2.position" /></p>
                </div>
                <div class="team-member">
                    <img src="/views/Images/3.jpg" alt="<s:message code="team.member3.alt" />">
                    <h4><s:message code="team.member3.name" /></h4>
                    <p><s:message code="team.member3.position" /></p>
                </div>
                <div class="team-member">
                    <img src="/views/Images/4.jpg" alt="<s:message code="team.member4.alt" />">
                    <h4><s:message code="team.member4.name" /></h4>
                    <p><s:message code="team.member4.position" /></p>
                </div>
            </div>
        </section>



	</main>

	<jsp:include page="/views/Customer/footer.jsp"></jsp:include>

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
