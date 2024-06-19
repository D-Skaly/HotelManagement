<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css?family=Inter&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/views/Css/room.css">
    <title>Hotel Booking</title>
    <link rel="icon" href="/views/Images/logofooter.png" type="image/png">
</head>

<body>
    <jsp:include page="/views/Customer/header.jsp"></jsp:include>
    <div class="search-section">
        <div class="search-item">
            <label for="check-in">Check In</label>
            <input type="date" id="check-in" value="2024-05-23">
        </div>
        <div class="search-item">
            <label for="check-out">Check Out</label>
            <input type="date" id="check-out" value="2024-05-24">
        </div>
        <div class="search-item">
            <label for="adults">Adults</label>
            <div class="input-group">
                <button>-</button>
                <input type="number" id="adults" value="2" min="1">
                <button>+</button>
            </div>
        </div>
        <div class="search-item">
            <label for="children">Children</label>
            <div class="input-group">
                <button>-</button>
                <input type="number" id="children" value="0" min="0">
                <button>+</button>
            </div>
        </div>
        <div class="search-item">
            <p>Need Help: 01840998765</p>
            <button class="check-availability">Check Availability</button>
        </div>
    </div>
<div class="container">
    <div class="room-card">
        <img src="/views/Images/g1.jpg" alt="Room Image">
        <div class="room-details">
            <h2>Twin Room</h2>
            <p>Non-refundable, Breakfast included</p>
            <div class="rating">
                <span>★★★★★</span>
                <span>(5)</span>
            </div>
            <p>2 Adults Children</p>
            <p>450 Presidential</p>
            <div class="buttons">
                <button class="details-button">Details <span>&#9660;</span></button>
                <button class="reserve-button">Reserve Condition <span>&#9660;</span></button>
            </div>
        </div>
        <div class="price-section">
            <span class="price">$2000.00</span><span>/Night</span>
            <p>Free cancellation</p>
            <button class="select-button">Select</button>
        </div>
    </div>

    <div class="room-card">
        <img src="/views/Images/g2.jpg" alt="Room Image">
        <div class="room-details">
            <h2>Twin Room</h2>
            <p>Non-refundable, Breakfast included</p>
            <div class="rating">
                <span>★★★★★</span>
                <span>(5)</span>
            </div>
            <p>2 Adults Children</p>
            <p>450 Presidential</p>
            <div class="buttons">
                <button class="details-button">Details <span>&#9660;</span></button>
                <button class="reserve-button">Reserve Condition <span>&#9660;</span></button>
            </div>
        </div>
        <div class="price-section">
            <span class="price">$2000.00</span><span>/Night</span>
            <p>Free cancellation</p>
            <button class="select-button">Select</button>
        </div>
    </div>

    <div class="room-card">
        <img src="/views/Images/g3.jpg" alt="Room Image">
        <div class="room-details">
            <h2>Twin Room</h2>
            <p>Non-refundable, Breakfast included</p>
            <div class="rating">
                <span>★★★★★</span>
                <span>(5)</span>
            </div>
            <p>2 Adults Children</p>
            <p>450 Presidential</p>
            <div class="buttons">
                <button class="details-button">Details <span>&#9660;</span></button>
                <button class="reserve-button">Reserve Condition <span>&#9660;</span></button>
            </div>
        </div>
        <div class="price-section">
            <span class="price">$2000.00</span><span>/Night</span>
            <p>Free cancellation</p>
            <button class="select-button">Select</button>
        </div>
    </div>

    <div class="room-card">
        <img src="/views/Images/g4.jpg" alt="Room Image">
        <div class="room-details">
            <h2>Twin Room</h2>
            <p>Non-refundable, Breakfast included</p>
            <div class="rating">
                <span>★★★★★</span>
                <span>(5)</span>
            </div>
            <p>2 Adults Children</p>
            <p>450 Presidential</p>
            <div class="buttons">
                <button class="details-button">Details <span>&#9660;</span></button>
                <button class="reserve-button">Reserve Condition <span>&#9660;</span></button>
            </div>
        </div>
        <div class="price-section">
            <span class="price">$2000.00</span><span>/Night</span>
            <p>Free cancellation</p>
            <button class="select-button">Select</button>
        </div>
    </div>

    <div class="room-card">
        <img src="/views/Images/g5.jpg" alt="Room Image">
        <div class="room-details">
            <h2>Twin Room</h2>
            <p>Non-refundable, Breakfast included</p>
            <div class="rating">
                <span>★★★★★</span>
                <span>(5)</span>
            </div>
            <p>2 Adults Children</p>
            <p>450 Presidential</p>
            <div class="buttons">
                <button class="details-button">Details <span>&#9660;</span></button>
                <button class="reserve-button">Reserve Condition <span>&#9660;</span></button>
            </div>
        </div>
        <div class="price-section">
            <span class="price">$2000.00</span><span>/Night</span>
            <p>Free cancellation</p>
            <button class="select-button">Select</button>
        </div>
    </div>
</div>
<footer>
    <section class="subscribe">
        <h3>Get updates & exclusive offers</h3>
        <p>Sign up for our newsletter to stay updated</p>
        <div class="subscribe-form">
            <input type="email" placeholder="Enter email here">
            <button>Subscribe</button>
        </div>
    </section>
    <div class="footer-content">
        <div class="footer-logo">
            <img style="width: 200px;height: 200px;margin-right: 300px;" src="/views/Images/hotel-removebg-preview.png" alt="Footer Logo">
        </div>
        <div class="footer-links">
            <div class="footer-link-column">
                <h4>Pages</h4>
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Contact Us</a></li>
                    <li><a href="#">Gallery</a></li>
                    <li><a href="#">My Profile</a></li>
                </ul>
            </div>
            <div class="footer-link-column">
                <h4>Social Links</h4>
                <ul>
                    <li><a href="#">Facebook</a></li>
                    <li><a href="#">Twitter</a></li>
                    <li><a href="#">Instagram</a></li>
                    <li><a href="#">LinkedIn</a></li>
                </ul>
            </div>
            <div class="footer-link-column">
                <h4>Company Policy</h4>
                <ul>
                    <li><a href="#">Privacy</a></li>
                    <li><a href="#">Terms & Conditions</a></li>
                </ul>
            </div>
        </div>
    </div>
</footer>
</body>

</html>