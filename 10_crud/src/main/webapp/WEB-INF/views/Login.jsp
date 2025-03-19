<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gym Management System - Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        :root {
            --primary-gradient: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            --secondary-gradient: linear-gradient(135deg, #43e97b 0%, #38f9d7 100%);
            --background-gradient: linear-gradient(-45deg, #3494E6, #2C3E50, #4CA1AF, #1A2980);
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: var(--background-gradient);
            background-size: 400% 400%;
            animation: gradientBG 15s ease infinite;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            margin: 0;
        }

        @keyframes gradientBG {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        .login-container {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(15px);
            border-radius: 15px;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
            padding: 40px;
            width: 100%;
            max-width: 500px;
            margin: auto;
            margin-top: 50px;
        }

        .form-control {
            background: rgba(255,255,255,0.2);
            border: none;
            color: white;
            transition: all 0.3s ease;
        }

        .form-control:focus {
            background: rgba(255,255,255,0.3);
            box-shadow: 0 0 10px rgba(0,0,0,0.2);
            color: white;
        }

        .form-control::placeholder {
            color: rgba(255,255,255,0.7);
        }

        .btn-login {
            background: var(--primary-gradient);
            border: none;
            transition: all 0.3s ease;
            position: relative;
            overflow: hidden;
        }

        .btn-login:hover {
            transform: scale(1.05);
            box-shadow: 0 10px 20px rgba(0,0,0,0.3);
        }

        .btn-login::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: linear-gradient(120deg, transparent, rgba(255,255,255,0.3), transparent);
            transition: all 0.5s ease;
        }

        .btn-login:hover::before {
            left: 100%;
        }

        .form-label {
            color: white;
            font-weight: 500;
        }

        .card-header {
            background: rgba(0,0,0,0.2);
            color: white;
            text-align: center;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .form-group {
            animation: fadeIn 0.5s ease forwards;
            opacity: 0;
        }

        .form-group:nth-child(1) { animation-delay: 0.1s; }
        .form-group:nth-child(2) { animation-delay: 0.2s; }
    </style>
</head>
<body>

    <div class="container">
        <div class="login-container">
            <div class="card-header mb-4">
                <h2>Please Login</h2>
                <c:if test="${not empty msg}">
                    <div class="alert alert-info">${msg}</div>
                    <c:remove var="msg"/>
                </c:if>
            </div>
            <form action="userlogin" method="post">
                <div class="form-group mb-3">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" id="email" name="email" class="form-control" placeholder="Enter your email" required>
                </div>
                <div class="form-group mb-4">
                    <label for="password" class="form-label">Password</label>
                    <input type="password" id="password" name="password" class="form-control" placeholder="Enter your password" required>
                </div>
                
                <button type="submit" class="btn btn-login btn-lg w-100 text-white">
                    Login
                </button>
            </form>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
