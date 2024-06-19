<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Contact Us</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	    <link rel="icon" href="/views/Images/logofooter.png" type="image/png">
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f8f9fa;
    }
    .container {
        margin-top: 50px;
    }
    .section-title {
        margin-bottom: 30px;
    }
    .info-title {
        color: #dc3545; /* Thay đổi màu của các phần tử chữ thành màu đỏ đô */
    }
    .form-group {
        margin-bottom: 20px;
    }
    .btn-primary {
        background-color: #dc3545; /* Thay đổi màu nút thành màu đỏ */
        border-color: #dc3545; /* Thay đổi màu viền nút thành màu đỏ */
    }
    .btn-primary:hover {
        background-color: #c82333; /* Màu khi di chuột qua */
        border-color: #bd2130; /* Màu viền khi di chuột qua */
    }
</style>
</head>
<body>
<jsp:include page="/views/Customer/header.jsp"></jsp:include>
    <div class="container" style="margin-top: 120px; margin-bottom: 200px">
        <div class="row">
            <div class="col-md-10 offset-md-1">
                <div class="section-title text-center mb-5">
                    <h2 class="block-title fs-25 mb-2 font-weight-bold">Let us hear from you directly!</h2>
                    <div class="sub-title fs-18">Our guests always travel the world in style. Mention @Kempinski on Instagram for a chance to be featured!</div>
                </div>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="row">
                    <div class="col-md-12 mb-4">
                        <div class="contact-info">
                            <h3 class="info-title link-title fs-18 mb-3 font-weight-bold">Address</h3>
                            <p>Tô ký Quận 12</p>
                                                    <div style="border: 1px solid #ccc; padding: 10px; margin-top: 10px;">
                            <iframe
                                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.905442963396!2d106.62420041480092!3d10.854035785658722!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317529efb885b04b%3A0xe66ae0a3a29c60a1!2zUXXhuq1uIDEyLCBUw7QgeSwgUXXhuq1uIDEyLCBUaOG7jSBI4buNYywgVmnhu4d0IE5hbQ!5e0!3m2!1sen!2s!4v1599692958670!5m2!1sen!2s"
                                width="100%" height="200" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false"
                                tabindex="0"></iframe>
                        </div>
                        </div>
                    </div>
                    <div class="col-md-12 mb-4">
                        <div class="contact-info">
                            <h3 class="info-title link-title fs-18 mb-3 font-weight-bold">Phone Number</h3>
                            <p>0968831064</p>
                        </div>
                    </div>
                    <div class="col-md-12 mb-4">
                        <div class="contact-info">
                            <h3 class="info-title link-title fs-18 mb-3 font-weight-bold">Email</h3>
                            <p>hanmtnps32454@fpt.edu.vn</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <form action="" method="post">
                    <div class="form-group">
                        <input type="text" class="form-control" id="fullname" name="fullname" placeholder="Full Name">
                    </div>
                    <div class="form-group">
                        <input type="email" class="form-control" id="email" name="email" placeholder="Email">
                    </div>
                    <div class="form-group">
                        <input type="tel" class="form-control" id="phoneNumber" name="phoneNumber" placeholder="Phone Number">
                    </div>
                    <div class="form-group">
                        <textarea class="form-control" id="message" rows="5" name="message" placeholder="Message"></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Send Message</button>
                </form>
            </div>
        </div>
    </div>
    <jsp:include page="/views/Customer/footer.jsp"></jsp:include>
</body>
</html>
