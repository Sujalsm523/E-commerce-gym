<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
            align-items: center;
            justify-content: center;
            margin: 0;
            overflow-x: hidden;
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
            width: 600px;
            height: 500px; 
            padding: 60px;
            box-sizing: border-box;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        .login-container h2 {
            font-size: 2.5rem;
            margin-bottom: 2.5rem;
            color: white;
            font-weight: bold;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.3);
        }

        .login-buttons {
            width: 100%;
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        .login-btn {
            background: var(--primary-gradient);
            border: none;
            transition: all 0.3s ease;
            padding: 15px 30px;
            font-size: 1.2rem;
            width: 100%;
            display: flex;
            align-items: center;
            justify-content: center;
            position: relative;
            overflow: hidden;
            border-radius: 10px;
        }

        .login-btn::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: linear-gradient(120deg, transparent, rgba(255,255,255,0.3), transparent);
            transition: all 0.5s ease;
        }

        .login-btn:hover::before {
            left: 100%;
        }

        .login-btn:hover {
            transform: scale(1.05);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
        }

        .admin-login-btn {
            background: var(--secondary-gradient);
        }

        .login-btn i {
            font-size: 1.5rem;
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <div class="login-container text-center">
        <h2 class="mb-4">Gym Management System</h2>
        <div class="login-buttons">
            <a href="userc" class="btn login-btn text-white">
                <i class="bi bi-person-fill"></i>User Login
            </a>
            <a href="admin" class="btn login-btn admin-login-btn text-white">
                <i class="bi bi-shield-lock-fill"></i>Admin Login
            </a>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
