
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
body {
    font-family: Arial, sans-serif;zz
    margin: 0;
    padding: 0;
}

.header {
    position: relative;
    width: 100%;
    height: 400px;
    background: url('/views/Images/slide1.jpg') no-repeat center center;
    background-size: cover;
}

.search-bar {
    display: flex;
    justify-content: center;
    align-items: center;
    background-color: #002D62;
    padding: 10px;
}

.search-bar input,
.search-bar select,
.search-bar button {
    padding: 10px;
    font-size: 16px;
    border: 1px solid #ccc;
    border-radius: 4px;
    margin: 0 5px;
}

.search-bar button {
    background-color: #007bff;
    color: white;
    border: none;
    cursor: pointer;
}

.search-bar button:hover {
    background-color: #0056b3;
}

.search-container {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    background: rgba(255, 255, 255, 0.9);
    padding: 20px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    border-radius: 8px;
    width: 80%;
    max-width: 800px;
}

.option-buttons {
    display: flex;
    justify-content: center;
    margin-bottom: 20px;
}

.option-buttons button {
    background-color: #ffffff;
    border: 1px solid #ccc;
    padding: 10px 20px;
    font-size: 16px;
    cursor: pointer;
    border-radius: 4px;
    margin: 0 10px;
}

.option-buttons button.active {
    border-radius: 50px;

    color: black;
    border: none;
}

.search-container input,
.search-container select {
    width: calc(33.33% - 20px);
    margin: 5px 10px;
    padding: 10px;
    font-size: 16px;
    border: 1px solid #ccc;
    border-radius: 4px;
}

.search-container button {
    border-radius: 50px;
    color: black;
    border: none;
    cursor: pointer;
}

.search-container button:hover {
    background-color: tomato;
}

.form-row {
    display: flex;
    align-items: center;
}

.form-row input[type="date"],
.form-row select {
    margin-right: 0px;
}

.form-row input[type="date"]:last-of-type,
.form-row select {
    margin-right: 0;
}

.product-card {
    width: 250px;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    overflow: hidden;
    text-align: center;
    font-family: Arial, sans-serif;
    margin: 20px;
}

.product-card img {
    width: 100%;
    height: auto;
}

.product-info {
    padding: 16px;
}

.product-info h5 {
    font-weight: bold;
    font-size: 1.2rem;
    margin-right: 95px;
}

.rating {
    display: flex;
    justify-content: center;
    align-items: center;
    margin: 8px 0;
}

.stars {
    color: red;
    font-size: 17px;
    margin-right: 150px;
    margin-top: -12px;
}



.price {
    font-size: 14px;
    color: #555;
    margin-right: 25px;
    margin-top: -10px;
}

.price-amount {
    font-size: 18px;
    color: red;
    font-weight: bold;
    margin-right: 107px;
    margin-top: -10px;
}

.calendar {
    text-align: center;
    margin-left: 220px;
    width: 300px;
    max-width: 300px;
    background-color: white;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    border-radius: 10px;
    overflow: hidden;
    transition: transform 0.3s ease-in-out;
}

.calendar:hover {
    transform: scale(1.02);
}

.month {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 20px 30px;
    background-color: #007bff;
    color: white;
}

.month .prev,
.month .next {
    cursor: pointer;
    font-size: 1.5em;
    transition: color 0.3s;
}

.month .prev:hover,
.month .next:hover {
    color: #dcdcdc;
}

.date h2 {
    margin: 0;
}

.weekdays,
.days {
    display: flex;
    flex-wrap: wrap;
}

.weekdays div,
.days div {
    width: 14.28%;
    text-align: center;
    padding: 10px 0;
    box-sizing: border-box;
}

.weekdays {
    background-color: #ddd;
    font-weight: bold;
}

.days div {
    cursor: pointer;
    transition: background-color 0.3s, transform 0.3s;
}

.days div:hover {
    background-color: #f1f1f1;
    transform: scale(1.1);
}

.days .today {
    background-color: #007bff;
    color: white;
    border-radius: 50%;
}
</style>
<div class="search-bar">
        <input style="width: 450px;" type="text" placeholder="Nhập phòng bạn cần tìm?">
        <input type="text" id="minprice" name="minprice" value="">
        <input type="text" id="maxprice" name="maxprice" value="">
        <select id="adults" name="adults">
            <option value="1">Phòng Đơn</option>
            <option value="2">Phòng Đôi</option>
            <option value="3">3 người lớn</option>
            <option value="4">4 người lớn</option>
        </select>
        <button style="width: 150px;" type="button">Tìm kiếm</button>
                <a style="text-decoration: none;color: white;font-weight: bold; margin-left: 200px;" href="#">My Profile</a>
        
        <a style="text-decoration: none;color: white;font-weight: bold; margin-left: 200px;" href="/logout">Log Out</a>
    </div>

    