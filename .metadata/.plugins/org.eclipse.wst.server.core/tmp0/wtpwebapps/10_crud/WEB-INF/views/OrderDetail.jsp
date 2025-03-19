<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Gym Management System</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
    <style>
        body {
            background-color: #f8f9fa;
            transition: background-color 0.3s ease, color 0.3s ease;
        }
        .navbar {
            background-color: #007bff;
        }
        .navbar a {
            color: white;
        }
        .card-header {
            background-color: #007bff;
            color: white;
        }
        table {
            background-color: white;
            color: black;
        }
        .dark-mode {
            background-color: black;
            color: white;
        }
        .dark-mode .navbar {
            background-color: #000000;
        }
        .dark-mode .navbar a {
            color: white;
        }
        .dark-mode .card-header {
            background-color: #000000;
            color: white;
        }
        .dark-mode table {
            background-color: black;
            color: white;
        }
        .dark-mode th,
        .dark-mode td {
            border-color: #444444;
            color: white;
        }
        .dark-mode thead th {
            background-color: #333333;
            color: white;
        }

        /* Message animation */
        .admin-message {
            font-size: 2rem;
            font-weight: bold;
            position: absolute;
            left: 0;
            opacity: 0;
            white-space: nowrap;
            animation: slideIn 4s forwards;
        }

        @keyframes slideIn {
            0% {
                left: -100%;
                opacity: 0;
            }
            50% {
                opacity: 1;
            }
            100% {
                left: 50%;
                transform: translateX(-50%);
                opacity: 1;
            }
        }
    </style>
</head>
<body onload="checkDarkMode()">

<nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Gym Management System</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Home</a>
                </li>
               
                <li class="nav-item">
                    <a class="nav-link" href="orderD">Orders</a>
                </li>
            </ul>
            <div class="d-flex">
                <button id="darkModeToggle" class="btn btn-outline-light me-2">Dark Mode</button>
                <a href="logoutt" class="btn btn-outline-danger">Logout</a>
            </div>
        </div>
    </div>
</nav>

<div class="container mt-4">
    <!-- Message container -->
    <div id="adminMessageContainer" class="text-center position-relative" style="height: 50px;">
        <div class="admin-message">Hello Admin</div>
    </div>

    <div class="row mt-5">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h4>All Order Details</h4>
                    <c:if test="${not empty msg }">
                        <h5 class="success-message">${msg}</h5>
                        <c:remove var="msg"/>
                    </c:if>
                </div>

                <div class="card-body">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col">Id</th>
                                <th scope="col">ItemId</th>
                                <th scope="col">Item Name</th>
                                <th scope="col">Name</th>
                                <th scope="col">Address</th>
                                <th scope="col">Pincode</th>
                                <th scope="col">Contact</th>
                                <th scope="col">Action</th>
                                
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${orderList}" var="order">
                                <tr>
                                    <th scope="row">${order.id}</th>
                                    <td>${order.itemId}</td>
                                    <td>${order.itemName}</td>
                                    <td>${order.name}</td>
                                    <td>${order.address}</td>
                                    <td>${order.pincode}</td>
                                    <td>${order.contact}</td>
                                    
                                    <td>
                                        
                                        <a href="deleteOrder/${order.id}" class="btn btn-sm btn-danger">Delete</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Include Bootstrap JS and Popper.js -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" crossorigin="anonymous"></script>

<script>
// Check local storage for dark mode preference
function checkDarkMode() {
    if (localStorage.getItem('darkMode') === 'enabled') {
        document.body.classList.add('dark-mode');
    }
}

// JavaScript for dark mode toggle
document.getElementById('darkModeToggle').onclick = function() {
    document.body.classList.toggle('dark-mode');
    
    // Save the current state to local storage
    if (document.body.classList.contains('dark-mode')) {
        localStorage.setItem('darkMode', 'enabled');
    } else {
        localStorage.setItem('darkMode', 'disabled');
    }
};
</script>

</body>
</html>
