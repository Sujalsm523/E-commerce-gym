<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Members</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
    <style>
        body {
            background-color: #f8f9fa; /* Light background color */
            transition: background-color 0.3s ease, color 0.3s ease; /* Smooth transition */
        }
        .navbar {
            background-color: #007bff; /* Light mode navbar color */
        }
        .navbar a {
            color: white; /* Light mode navbar text color */
        }
        .card-header {
            background-color: #007bff; /* Blue color for header */
            color: white; /* White text */
        }
        .success-message {
            color: green; /* Success message color */
        }
        .error-message {
            color: red; /* Error message color */
        }

        /* Dark Mode Styles */
        .dark-mode {
            background-color: black; /* Dark mode background */
            color: white; /* White text for body */
        }
        .dark-mode .navbar {
            background-color: #000000; /* Black navbar for dark mode */
        }
        .dark-mode .navbar a {
            color: white; /* White text for navbar links in dark mode */
        }
        .dark-mode .card-header {
            background-color: #000000; /* Black header for dark mode */
            color: white; /* White text for header in dark mode */
        }

        .dark-mode table {
            background-color: black; /* Black table background in dark mode */
            color: white; /* White text in table for dark mode */
        }

        .dark-mode th, 
        .dark-mode td {
            border-color: #444444; /* Darker border for table cells in dark mode */
            color: white; /* Ensure all text in table cells is white */
        }

        .dark-mode thead th {
            background-color: #333333; /* Darker header background for thead in dark mode */
            color: white; /* White text for header cells in dark mode */
        }

        label {
            color: black; /* Black text for labels in both modes */
        }

        .dark-mode label {
            color: black; /* Ensure labels are black even in dark mode */
        }

        .form-control {
            background-color: white; /* Light input fields in light mode */
            color: black; /* Black text in input fields in light mode */
        }

        .dark-mode .form-control {
            background-color: #495057; /* Dark input fields */
            color: black; /* Black text in input fields in dark mode */
            border: 1px solid #444444; /* Dark border for input fields */
        }

        .dark-mode .form-control::placeholder {
            color: #cccccc; /* Placeholder text color in dark mode */
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
                    <a class="nav-link active" aria-current="page" href="home">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Add Members</a>
                </li>
            </ul>
            <button id="darkModeToggle" class="btn btn-outline-light">Dark Mode</button> <!-- Dark mode toggle button -->
        </div>
    </div>
</nav>

<div class="container">
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <div class="card">
                <div class="card-header text-center"> 
                    <h2>Add Employee</h2>
                    <c:if test="${not empty msg }">
                        <h5>${msg}</h5>
                        <c:remove var="msg"/>
                    </c:if>
                    
                </div>
                <div class="card-body">
                    <form action="createEmp" method="post">
                        <div class="mb-3">
                            <label for="fullname">Enter Full Name</label>
                            <input type="text" id="fullname" name="fullname" class="form-control" placeholder="">
                        </div>
                        <div class="mb-3">
                            <label for="address">Enter Address</label>
                            <input type="text" id="address" name="address" class="form-control" placeholder="">
                        </div>
                        <div class="mb-3">
                            <label for="email">Enter Email</label>
                            <input type="text" id="email" name="email" class="form-control" placeholder="">
                        </div>
                        <div class="mb-3">
                            <label for ="password">Enter Password</label>
                            <input type ="password"id ="password"name =" password"class ="form-control"> 
                        </div> 
                        
                        <button type ="submit"class ="btn btn-primary">Submit</button> 
                    </form> 
                </div> 
            </div> 
        </div> 
    </div> 
</div>

<!-- Include Bootstrap JS and Popper.js -->
<script src=https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js crossorigin=anonymous></script> 
<script src=https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js crossorigin=anonymous></script>

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

