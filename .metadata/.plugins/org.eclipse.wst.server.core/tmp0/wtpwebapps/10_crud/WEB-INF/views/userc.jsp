<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Authentication</title>
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

        @keyframes fadeInScale {
            0% {
                opacity: 0;
                transform: scale(0.8);
            }
            100% {
                opacity: 1;
                transform: scale(1);
            }
        }

        .auth-container {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(15px);
            border-radius: 15px;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
            width: 500px;
            padding: 50px;
            text-align: center;
            animation: fadeInScale 0.8s ease-out;
        }

        .auth-container h2 {
            font-size: 2.5rem;
            color: white;
            margin-bottom: 30px;
            font-weight: bold;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.3);
        }

        .auth-container p {
            color: rgba(255,255,255,0.7);
            margin-bottom: 30px;
        }

        .auth-btn {
            width: 100%;
            padding: 15px;
            margin: 15px 0;
            border: none;
            border-radius: 10px;
            font-size: 1.1rem;
            transition: all 0.3s ease;
            position: relative;
            overflow: hidden;
        }

        .register-btn {
            background: var(--primary-gradient);
            color: white;
        }

        .login-btn {
            background: var(--secondary-gradient);
            color: white;
        }

        .auth-btn::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: linear-gradient(120deg, transparent, rgba(255,255,255,0.3), transparent);
            transition: all 0.5s ease;
        }

        .auth-btn:hover::before {
            left: 100%;
        }

        .auth-btn:hover {
            transform: scale(1.05);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
        }

        .auth-btn i {
            margin-right: 10px;
        }

        /* New styles for back button */
        .btn-back {
            background: var(--secondary-gradient);
            color: white;
            margin-top: 20px;
            transition: all 0.3s ease;
        }

        .btn-back:hover {
            transform: scale(1.05);
            box-shadow: 0 5px 15px rgba(0,0,0,0.2);
        }
    </style>
</head>
<body>
    <div class="auth-container">
        <h2>User Authentication</h2>
        <p>Choose your preferred authentication method</p>
        
        <form action="Register" method="GET" class="mb-3">
            <button type="submit" class="auth-btn register-btn">
                <i class="bi bi-person-plus-fill"></i>Register
            </button>
        </form>
        
        <form action="Login" method="GET">
            <button type="submit" class="auth-btn login-btn">
                <i class="bi bi-box-arrow-in-right"></i>Login
            </button>
        </form>

        <!-- New Back to Start Button -->
        <div class="mt-3">
            <a href="start" class="btn btn-back">
                <i class="bi bi-arrow-left me-2"></i>Back
            </a>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
