<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="/views/Css/homepage2.css">
    <link rel="icon" href="/views/Images/logofooter.png" type="image/png">
    <title>HomePage</title>
    
</head>

<body>
    <div class="search-bar">
        <input style="width: 450px;" type="text" placeholder="Nhập phòng bạn cần tìm?">
        <input type="date" id="checkin" name="checkin" value="2024-06-13">
        <input type="date" id="checkout" name="checkout" value="2024-06-14">
        <select id="adults" name="adults">
            <option value="1">1 người lớn</option>
            <option value="2">2 người lớn</option>
            <option value="3">3 người lớn</option>
            <option value="4">4 người lớn</option>
        </select>
        <button style="width: 150px;" type="button">Tìm kiếm</button>
        <a style="text-decoration: none;color: white;font-weight: bold; margin-left: 200px;" href="#">Log Out</a>
    </div>

    <div class="header"></div>

    <div class="search-container">
        <div class="form-row">
            <input type="date" id="checkin" name="checkin" value="2024-06-13">
            <input type="date" id="checkout" name="checkout" value="2024-06-14">
            <select style="width: 250px;" id="adults" name="adults">
                <option value="1">1 người lớn</option>
                <option value="2">2 người lớn</option>
                <option value="3">3 người lớn</option>
                <option value="4">4 người lớn</option>
            </select>
        </div>
        <div class="calendar">
            <div class="month">
                <div class="prev">&#10094;</div>
                <div class="date">
                    <h2 id="month-year"></h2>
                </div>
                <div class="next">&#10095;</div>
            </div>
            <div class="weekdays">
                <div>Sun</div>
                <div>Mon</div>
                <div>Tue</div>
                <div>Wed</div>
                <div>Thu</div>
                <div>Fri</div>
                <div>Sat</div>
            </div>
            <div class="days" id="days"></div>
        </div>
    </div>
    <br><br><br><br><br>
    <section>
        <div class="container mt-5">


            <div id="productCarousel" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="row">
                             <div class="col-md-3">
                                <a href="" style="text-decoration: none;">
                                <div class="product-card">
                                    <img src="/views/Images/g1.jpg" alt="Product 1">
                                    <div class="product-info">
                                        <h5>Leman Locke</h5>
                                        <div class="rating">
                                            <span class="stars">★★★★☆</span>
                                        </div>
                                        <p class="price">Pernight before
                                            taxes and fees</p>
                                        <p class="price-amount">900.000 VND</p>

                                    </div>
                                </div>
                            </a>
                        </div>
                            <div class="col-md-3">
                                <a href="/DetailsRoom" style="text-decoration: none;">
                                <div class="product-card">
                                    <img  src="/views/Images/g1.jpg" alt="Product 1">
                                    <div class="product-info">
                                        <h5>Leman Locke</h5>
                                        <div class="rating">
                                            <span class="stars">★★★★☆</span>
                                        </div>
                                        <p class="price">Pernight before
                                            taxes and fees</p>
                                        <p class="price-amount">900.000 VND</p>

                                    </div>
                                </div>
                            </a>
                        </div>
                            <div class="col-md-3">
                                <a href="/DetailsRoom" style="text-decoration: none;">
                                <div class="product-card">
                                    <img src="/views/Images/g1.jpg" alt="Product 1">
                                    <div class="product-info">
                                        <h5>Leman Locke</h5>
                                        <div class="rating">
                                            <span class="stars">★★★★☆</span>
                                        </div>
                                        <p class="price">Pernight before
                                            taxes and fees</p>
                                        <p class="price-amount">900.000 VND</p>

                                    </div>
                                </div>
                            </a>
                        </div>
                            <div class="col-md-3">
                                <a href="/DetailsRoom" style="text-decoration: none;">
                                <div class="product-card">
                                    <img src="/views/Images/g1.jpg" alt="Product 1">
                                    <div class="product-info">
                                        <h5>Leman Locke</h5>
                                        <div class="rating">
                                            <span class="stars">★★★★☆</span>
                                        </div>
                                        <p class="price">Pernight before
                                            taxes and fees</p>
                                        <p class="price-amount">900.000 VND</p>

                                    </div>
                                </div>
                            </a>
                        </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="row">
                            <div class="col-md-3">
                                <a href="/DetailsRoom" style="text-decoration: none;">
                                <div class="product-card">
                                    <img src="/views/Images/g1.jpg" alt="Product 1">
                                    <div class="product-info">
                                        <h5>Leman Locke</h5>
                                        <div class="rating">
                                            <span class="stars">★★★★☆</span>
                                        </div>
                                        <p class="price">Pernight before
                                            taxes and fees</p>
                                        <p class="price-amount">900.000 VND</p>

                                    </div>
                                </div>
                            </a>
                        </div>
                            <div class="col-md-3">
                                <a href="/DetailsRoom" style="text-decoration: none;">
                                <div class="product-card">
                                    <img src="/views/Images/g1.jpg" alt="Product 1">
                                    <div class="product-info">
                                        <h5>Leman Locke</h5>
                                        <div class="rating">
                                            <span class="stars">★★★★☆</span>
                                        </div>
                                        <p class="price">Pernight before
                                            taxes and fees</p>
                                        <p class="price-amount">900.000 VND</p>

                                    </div>
                                </div>
                            </a>
                        </div>
                            <div class="col-md-3">
                                <a href="/DetailsRoom" style="text-decoration: none;">
                                <div class="product-card">
                                    <img src="/views/Images/g1.jpg" alt="Product 1">
                                    <div class="product-info">
                                        <h5>Leman Locke</h5>
                                        <div class="rating">
                                            <span class="stars">★★★★☆</span>
                                        </div>
                                        <p class="price">Pernight before
                                            taxes and fees</p>
                                        <p class="price-amount">900.000 VND</p>

                                    </div>
                                </div>
                            </a>
                        </div>
                            <div class="col-md-3">
                                <a href="/DetailsRoom" style="text-decoration: none;">
                                <div class="product-card">
                                    <img src="/views/Images/g1.jpg" alt="Product 1">
                                    <div class="product-info">
                                        <h5>Leman Locke</h5>
                                        <div class="rating">
                                            <span class="stars">★★★★☆</span>
                                        </div>
                                        <p class="price">Pernight before
                                            taxes and fees</p>
                                        <p class="price-amount">900.000 VND</p>

                                    </div>
                                </div>
                            </a>
                        </div>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#productCarousel" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#productCarousel" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>

            <div id="productCarouselMore" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="row">
                            <div class="col-md-3">
                                <a href="" style="text-decoration: none;">
                                <div class="product-card">
                                    <img src="/views/Images/g1.jpg" alt="Product 1">
                                    <div class="product-info">
                                        <h5>Leman Locke</h5>
                                        <div class="rating">
                                            <span class="stars">★★★★☆</span>
                                        </div>
                                        <p class="price">Pernight before
                                            taxes and fees</p>
                                        <p class="price-amount">900.000 VND</p>

                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-md-3">
                                <a href="" style="text-decoration: none;">
                                <div class="product-card">
                                    <img src="/views/Images/g1.jpg" alt="Product 1">
                                    <div class="product-info">
                                        <h5>Leman Locke</h5>
                                        <div class="rating">
                                            <span class="stars">★★★★☆</span>
                                        </div>
                                        <p class="price">Pernight before
                                            taxes and fees</p>
                                        <p class="price-amount">900.000 VND</p>

                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-md-3">
                            <a href="" style="text-decoration: none;">
                            <div class="product-card">
                                <img src="/views/Images/g1.jpg" alt="Product 1">
                                <div class="product-info">
                                    <h5>Leman Locke</h5>
                                    <div class="rating">
                                        <span class="stars">★★★★☆</span>
                                    </div>
                                    <p class="price">Pernight before
                                        taxes and fees</p>
                                    <p class="price-amount">900.000 VND</p>

                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-3">
                        <a href="" style="text-decoration: none;">
                        <div class="product-card">
                            <img src="/views/Images/g1.jpg" alt="Product 1">
                            <div class="product-info">
                                <h5>Leman Locke</h5>
                                <div class="rating">
                                    <span class="stars">★★★★☆</span>
                                </div>
                                <p class="price">Pernight before
                                    taxes and fees</p>
                                <p class="price-amount">900.000 VND</p>

                            </div>
                        </div>
                    </a>
                </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="row">
                            <div class="col-md-3">
                                <a href="" style="text-decoration: none;">
                                <div class="product-card">
                                    <img src="/views/Images/g1.jpg" alt="Product 1">
                                    <div class="product-info">
                                        <h5>Leman Locke</h5>
                                        <div class="rating">
                                            <span class="stars">★★★★☆</span>
                                        </div>
                                        <p class="price">Pernight before
                                            taxes and fees</p>
                                        <p class="price-amount">900.000 VND</p>

                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-md-3">
                            <a href="" style="text-decoration: none;">
                            <div class="product-card">
                                <img src="/views/Images/g1.jpg" alt="Product 1">
                                <div class="product-info">
                                    <h5>Leman Locke</h5>
                                    <div class="rating">
                                        <span class="stars">★★★★☆</span>
                                    </div>
                                    <p class="price">Pernight before
                                        taxes and fees</p>
                                    <p class="price-amount">900.000 VND</p>

                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-3">
                        <a href="" style="text-decoration: none;">
                        <div class="product-card">
                            <img src="/views/Images/g1.jpg" alt="Product 1">
                            <div class="product-info">
                                <h5>Leman Locke</h5>
                                <div class="rating">
                                    <span class="stars">★★★★☆</span>
                                </div>
                                <p class="price">Pernight before
                                    taxes and fees</p>
                                <p class="price-amount">900.000 VND</p>

                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-md-3">
                    <a href="" style="text-decoration: none;">
                    <div class="product-card">
                        <img src="/views/Images/g1.jpg" alt="Product 1">
                        <div class="product-info">
                            <h5>Leman Locke</h5>
                            <div class="rating">
                                <span class="stars">★★★★☆</span>
                            </div>
                            <p class="price">Pernight before
                                taxes and fees</p>
                            <p class="price-amount">900.000 VND</p>

                        </div>
                    </div>
                </a>
            </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#productCarouselMore" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#productCarouselMore" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>



            <div class="row">
                <div class="col-12 text-center mt-4">
                    <button style="color:black;background-color: red;" class="btn btn-danger" data-toggle="collapse"
                        data-target="#moreProducts">See More</button>
                </div>
            </div>
            <div id="moreProducts" class="collapse mt-4">
                <div id="productCarouselMore2" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <div class="row">
                                <div class="col-md-3">
                                    <a href="" style="text-decoration: none;">
                                    <div class="product-card">
                                        <img src="/views/Images/g1.jpg" alt="Product 1">
                                        <div class="product-info">
                                            <h5>Leman Locke</h5>
                                            <div class="rating">
                                                <span class="stars">★★★★☆</span>
                                            </div>
                                            <p class="price">Pernight before
                                                taxes and fees</p>
                                            <p class="price-amount">900.000 VND</p>
    
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-md-3">
                                <a href="" style="text-decoration: none;">
                                <div class="product-card">
                                    <img src="/views/Images/g1.jpg" alt="Product 1">
                                    <div class="product-info">
                                        <h5>Leman Locke</h5>
                                        <div class="rating">
                                            <span class="stars">★★★★☆</span>
                                        </div>
                                        <p class="price">Pernight before
                                            taxes and fees</p>
                                        <p class="price-amount">900.000 VND</p>

                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-md-3">
                            <a href="" style="text-decoration: none;">
                            <div class="product-card">
                                <img src="/views/Images/g1.jpg" alt="Product 1">
                                <div class="product-info">
                                    <h5>Leman Locke</h5>
                                    <div class="rating">
                                        <span class="stars">★★★★☆</span>
                                    </div>
                                    <p class="price">Pernight before
                                        taxes and fees</p>
                                    <p class="price-amount">900.000 VND</p>

                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-3">
                        <a href="" style="text-decoration: none;">
                        <div class="product-card">
                            <img src="/views/Images/g1.jpg" alt="Product 1">
                            <div class="product-info">
                                <h5>Leman Locke</h5>
                                <div class="rating">
                                    <span class="stars">★★★★☆</span>
                                </div>
                                <p class="price">Pernight before
                                    taxes and fees</p>
                                <p class="price-amount">900.000 VND</p>

                            </div>
                        </div>
                    </a>
                </div> 
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="row">
                                <div class="col-md-3">
                                    <a href="" style="text-decoration: none;">
                                    <div class="product-card">
                                        <img src="/views/Images/g1.jpg" alt="Product 1">
                                        <div class="product-info">
                                            <h5>Leman Locke</h5>
                                            <div class="rating">
                                                <span class="stars">★★★★☆</span>
                                            </div>
                                            <p class="price">Pernight before
                                                taxes and fees</p>
                                            <p class="price-amount">900.000 VND</p>
    
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-md-3">
                                <a href="" style="text-decoration: none;">
                                <div class="product-card">
                                    <img src="/views/Images/g1.jpg" alt="Product 1">
                                    <div class="product-info">
                                        <h5>Leman Locke</h5>
                                        <div class="rating">
                                            <span class="stars">★★★★☆</span>
                                        </div>
                                        <p class="price">Pernight before
                                            taxes and fees</p>
                                        <p class="price-amount">900.000 VND</p>

                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-md-3">
                            <a href="" style="text-decoration: none;">
                            <div class="product-card">
                                <img src="/views/Images/g1.jpg" alt="Product 1">
                                <div class="product-info">
                                    <h5>Leman Locke</h5>
                                    <div class="rating">
                                        <span class="stars">★★★★☆</span>
                                    </div>
                                    <p class="price">Pernight before
                                        taxes and fees</p>
                                    <p class="price-amount">900.000 VND</p>

                                </div>
                            </div>
                        </a>
                    </div>
                                <div class="col-md-3">
                                    <a href="" style="text-decoration: none;">
                                    <div class="product-card">
                                        <img src="/views/Images/g1.jpg" alt="Product 1">
                                        <div class="product-info">
                                            <h5>Leman Locke</h5>
                                            <div class="rating">
                                                <span class="stars">★★★★☆</span>
                                            </div>
                                            <p class="price">Pernight before
                                                taxes and fees</p>
                                            <p class="price-amount">900.000 VND</p>
    
                                        </div>
                                    </div>
                                </a>
                            </div>
                            </div>
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#productCarouselMore2" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#productCarouselMore2" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
                <div id="productCarouselMore3" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <div class="row">
                                <div class="col-md-3">
                                    <a href="" style="text-decoration: none;">
                                    <div class="product-card">
                                        <img src="/views/Images/g1.jpg" alt="Product 1">
                                        <div class="product-info">
                                            <h5>Leman Locke</h5>
                                            <div class="rating">
                                                <span class="stars">★★★★☆</span>
                                            </div>
                                            <p class="price">Pernight before
                                                taxes and fees</p>
                                            <p class="price-amount">900.000 VND</p>
    
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-md-3">
                                <a href="" style="text-decoration: none;">
                                <div class="product-card">
                                    <img src="/views/Images/g1.jpg" alt="Product 1">
                                    <div class="product-info">
                                        <h5>Leman Locke</h5>
                                        <div class="rating">
                                            <span class="stars">★★★★☆</span>
                                        </div>
                                        <p class="price">Pernight before
                                            taxes and fees</p>
                                        <p class="price-amount">900.000 VND</p>

                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-md-3">
                            <a href="" style="text-decoration: none;">
                            <div class="product-card">
                                <img src="/views/Images/g1.jpg" alt="Product 1">
                                <div class="product-info">
                                    <h5>Leman Locke</h5>
                                    <div class="rating">
                                        <span class="stars">★★★★☆</span>
                                    </div>
                                    <p class="price">Pernight before
                                        taxes and fees</p>
                                    <p class="price-amount">900.000 VND</p>

                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-3">
                        <a href="" style="text-decoration: none;">
                        <div class="product-card">
                            <img src="/views/Images/g1.jpg" alt="Product 1">
                            <div class="product-info">
                                <h5>Leman Locke</h5>
                                <div class="rating">
                                    <span class="stars">★★★★☆</span>
                                </div>
                                <p class="price">Pernight before
                                    taxes and fees</p>
                                <p class="price-amount">900.000 VND</p>

                            </div>
                        </div>
                    </a>
                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="row">
                                <div class="col-md-3">
                                    <a href="" style="text-decoration: none;">
                                    <div class="product-card">
                                        <img src="/views/Images/g1.jpg" alt="Product 1">
                                        <div class="product-info">
                                            <h5>Leman Locke</h5>
                                            <div class="rating">
                                                <span class="stars">★★★★☆</span>
                                            </div>
                                            <p class="price">Pernight before
                                                taxes and fees</p>
                                            <p class="price-amount">900.000 VND</p>
    
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-md-3">
                                <a href="" style="text-decoration: none;">
                                <div class="product-card">
                                    <img src="/views/Images/g1.jpg" alt="Product 1">
                                    <div class="product-info">
                                        <h5>Leman Locke</h5>
                                        <div class="rating">
                                            <span class="stars">★★★★☆</span>
                                        </div>
                                        <p class="price">Pernight before
                                            taxes and fees</p>
                                        <p class="price-amount">900.000 VND</p>

                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-md-3">
                            <a href="" style="text-decoration: none;">
                            <div class="product-card">
                                <img src="/views/Images/g1.jpg" alt="Product 1">
                                <div class="product-info">
                                    <h5>Leman Locke</h5>
                                    <div class="rating">
                                        <span class="stars">★★★★☆</span>
                                    </div>
                                    <p class="price">Pernight before
                                        taxes and fees</p>
                                    <p class="price-amount">900.000 VND</p>

                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-3">
                        <a href="" style="text-decoration: none;">
                        <div class="product-card">
                            <img src="/views/Images/g1.jpg" alt="Product 1">
                            <div class="product-info">
                                <h5>Leman Locke</h5>
                                <div class="rating">
                                    <span class="stars">★★★★☆</span>
                                </div>
                                <p class="price">Pernight before
                                    taxes and fees</p>
                                <p class="price-amount">900.000 VND</p>

                            </div>
                        </div>
                    </a>
                </div>
                            </div>
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#productCarouselMore3" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#productCarouselMore3" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
    </section>
    <br><br>
    	<jsp:include page="/views/footer.jsp"></jsp:include>
    
    <script>
        const monthYear = document.getElementById('month-year');
        const days = document.getElementById('days');

        const date = new Date();
        let currentMonth = date.getMonth();
        let currentYear = date.getFullYear();

        const months = [
            'January', 'February', 'March', 'April', 'May', 'June',
            'July', 'August', 'September', 'October', 'November', 'December'
        ];

        function renderCalendar(month, year) {
            const firstDay = new Date(year, month, 1).getDay();
            const lastDate = new Date(year, month + 1, 0).getDate();

            monthYear.innerText = `${months[month]} ${year}`;
            days.innerHTML = '';

            for (let i = 0; i < firstDay; i++) {
                const emptyDiv = document.createElement('div');
                days.appendChild(emptyDiv);
            }

            for (let i = 1; i <= lastDate; i++) {
                const dayDiv = document.createElement('div');
                dayDiv.innerText = i;
                if (i === date.getDate() && month === date.getMonth() && year === date.getFullYear()) {
                    dayDiv.classList.add('today');
                }
                days.appendChild(dayDiv);
            }
        }

        document.querySelector('.prev').addEventListener('click', () => {
            if (currentMonth === 0) {
                currentMonth = 11;
                currentYear -= 1;
            } else {
                currentMonth -= 1;
            }
            renderCalendar(currentMonth, currentYear);
        });

        document.querySelector('.next').addEventListener('click', () => {
            if (currentMonth === 11) {
                currentMonth = 0;
                currentYear += 1;
            } else {
                currentMonth += 1;
            }
            renderCalendar(currentMonth, currentYear);
        });

        renderCalendar(currentMonth, currentYear);
    </script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>