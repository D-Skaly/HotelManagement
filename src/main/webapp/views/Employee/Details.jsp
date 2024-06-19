<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <style>
        .product-card {
            transition: transform 0.3s;
        }
        .product-card:hover {
            transform: translateY(-5px);
        }
        .product-card {
            transition: transform 0.3s;
        }
        .product-card:hover {
            transform: translateY(-5px);
        }
        .left-section {
            margin-right: 10px;
        }

        .left-section img {
            width: 650px;
            height: 400px;
            border-radius: 10px;
        }

        .right-section img {
            width: 220px;
            height: 131px;
        }

        .thumbnail-image {
            width: 100%;
            height: calc(100% / 3 - 10px);
            border-radius: 10px;
            object-fit: cover;
            padding-bottom: 4px;
        }

        .details {
            margin-left: 20px;
            text-align: left;
        }

        .hotel-name {
            font-size: 1.5em;
            font-weight: bold;
        }

        .stars {
            color: gold;
            margin: 5px 0;
        }

        .address {
            color: gray;
            margin: 10px 0;
        }

        .address a {
            text-decoration: none;
            color: black;
        }

        .price {
            font-size: 1.5em;
            color: red;
            margin: 10px 0;
        }

        .select-button {
            background-color: red;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 300px;
        }

        .select-button:hover {
            background-color: darkred;
        }

        .info-table {
            width: 60%;
            border-collapse: collapse;
            margin: 20px auto;
            border: 1px solid #ccc;
            border-radius: 8px;
            overflow: hidden;
        }

        .info-table th,
        .info-table td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        .info-table th {
            background-color: #f2f2f2;
        }

        .info-table tr:last-child td {
            border-bottom: none;
        }

        /* Thêm phần CSS để căn giữa container */
        .containerfull {
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Để container căn giữa theo chiều dọc */
        }
    </style>
</head>
<body>

    <div class="containerfull">
        <div class="container" style="display: inline-flex; padding-left: 5%;">
            <div class="left-section">
                <img src="/Images/g1.jpg" alt="Main Image" class="main-image">
                <div style="margin-left: -5px;" class="details">
                    <div class="hotel-name">Cozrum Smart - First Targer</div>
                    <div class="stars">★★★★★</div>
                    <div class="address">
                        56 - 66 Nguyễn Huệ, Bến Nghé, Quận 1, Thành phố Hồ Chí Minh, Việt Nam
                        <br>
                        <a target="_blank"
                            href="https://www.google.com/maps/dir/10.848205,106.6173419/56-66+%C4%90.+Nguy%C3%AA%CC%83n+Hu%C3%AA%CC%A3,+B%E1%BA%BFn+Ngh%C3%A9,+Qu%E1%BA%ADn+1,+Th%C3%A0nh+ph%E1%BB%91+H%E1%BB%93+Ch%C3%AD+Minh,+Vi%E1%BB%87t+Nam/@10.8098078,106.6171553,13z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x31752f46ef079535:0x48a6cdc48bb14ad0!2m2!1d106.7036769!2d10.7744445?hl=vi-VN&entry=ttu">Xem
                            bản đồ</a>
                    </div>
                    <div class="price">1,333,333 VND</div>
                    <button class="select-button">Select room</button>
                </div>
            </div>
            <div class="right-section" style="padding: 0; margin: 0;">
                <img src="/views/Images/g1.jpg" alt="Thumbnail 1" class="thumbnail-image" style="object-fit: cover;">
                <img src="/views/Images/g2.jpg" alt="Thumbnail 2" class="thumbnail-image" style="object-fit: cover;">
                <img src="/views/Images/g3.jpg" alt="Thumbnail 3" class="thumbnail-image" style="object-fit: cover;">
                <img src="/views/Images/g4.jpg" alt="Thumbnail 4" class="thumbnail-image" style="object-fit: cover;">
                <img src="/views/Images/g5.jpg" alt="Thumbnail 5" class="thumbnail-image" style="object-fit: cover;">
                <img src="/views/Images/g1.jpg" alt="Thumbnail 6" class="thumbnail-image" style="object-fit: cover;">
            </div>
    
        </div>
    </div> <!-- Đóng containerfull -->

    <div class="container">
        <h2>More Information</h2>
        <table class="info-table">
            <tr>
                <th>More Information</th>
                <th></th>
            </tr>
            <tr>
                <td>Worth the money</td>
                <td>9.0</td>
            </tr>
            <tr>
                <td>Far from city center</td>
                <td>5km</td>
            </tr>
            <tr>
                <td>Evaluate location</td>
                <td>9.0</td>
            </tr>
            <tr>
                <td>Nearest airport</td>
                <td>Tan Son Nhat International Airport (SGN)</td>
            </tr>
            <tr>
                <td>Away from the airport</td>
                <td>8km</td>
            </tr>
            <tr>
                <td>Overall service</td>
                <td>Very good</td>
            </tr>
        </table>
    </div>

    <div class="container my-5">
        <div class="row">
            <div class="col-md-3 mb-4">
                <div class="card product-card">
                    <img src="https://via.placeholder.com/300x200" class="card-img-top" alt="Product 1">
                    <div class="card-body">
                        <h5 class="card-title">Product 1</h5>
                        <p class="card-text">Description of Product 1</p>
                        <a href="#" class="btn btn-primary">Add to Cart</a>
                    </div>
                </div>
            </div>
            <div class="col-md-3 mb-4">
                <div class="card product-card">
                    <img src="https://via.placeholder.com/300x200" class="card-img-top" alt="Product 2">
                    <div class="card-body">
                        <h5 class="card-title">Product 2</h5>
                        <p class="card-text">Description of Product 2</p>
                        <a href="#" class="btn btn-primary">Add to Cart</a>
                    </div>
                </div>
            </div>
            <div class="col-md-3 mb-4">
                <div class="card product-card">
                    <img src="https://via.placeholder.com/300x200" class="card-img-top" alt="Product 3">
                    <div class="card-body">
                        <h5 class="card-title">Product 3</h5>
                        <p class="card-text">Description of Product 3</p>
                        <a href="#" class="btn btn-primary">Add to Cart</a>
                    </div>
                </div>
            </div>
            <div class="col-md-3 mb-4">
                <div class="card product-card">
                    <img src="https://via.placeholder.com/300x200" class="card-img-top" alt="Product 4">
                    <div class="card-body">
                        <h5 class="card-title">Product 4</h5>
                        <p class="card-text">Description of Product 4</p>
                        <a href="#" class="btn btn-primary">Add to Cart</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>
