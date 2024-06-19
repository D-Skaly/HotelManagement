<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
 .navbar {
            background-color: #2c3e50;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            
        }
        .navbar-brand {
            display: flex;
            align-items: center;
        }
        .navbar-brand img {
            height: 50px;
            margin-right: 15px;
        }
        .navbar-brand span {
            font-size: 1.5em;
            font-weight: bold;
            color: white;
        }
        .navbar-nav .nav-link {
            color: white !important;
            font-size: 1.1em;
            margin-right: 15px;
            transition: color 0.3s;
        }
        .navbar-nav .nav-link:hover {
            color: #18bc9c !important;
        }
        .btn-logout {
            background-color: #e74c3c;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 1em;
            border-radius: 5px;
            transition: background-color 0.3s, transform 0.3s;
        }
        .btn-logout:hover {
            background-color: #c0392b;
            transform: scale(1.05);
        }
        
</style>
<nav class="navbar navbar-expand-lg navbar-dark">
    <a class="navbar-brand" href="/employee/home">
        <span>Xian Hotel</span>
    </a>
    <div class="collapse navbar-collapse justify-content-end">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="/employee/profile">My Profile</a>
            </li><li class="nav-item">
                <a class="nav-link" href="/employee/Dashboard">DashBoard</a>
            </li>
            <li class="nav-item">
                <a class="btn btn-logout nav-link" href="/logout">Log Out</a>
            </li>
        </ul>
    </div>
</nav>
