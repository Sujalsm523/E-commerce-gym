<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
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
            width: 500px;
            padding: 40px;
            animation: fadeInScale 0.8s ease-out;
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
            margin-bottom: 20px;
        }

        .card-header h2 {
            text-shadow: 2px 2px 4px rgba(0,0,0,0.3);
        }

        .form-group {
            animation: fadeIn 0.5s ease forwards;
            opacity: 0;
        }

        .form-group:nth-child(1) { animation-delay: 0.1s; }
        .form-group:nth-child(2) { animation-delay: 0.2s; }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .btn-back {
            background: var(--secondary-gradient);
            color: white;
            margin-top: 15px;
            transition: all 0.3s ease;
        }

        .btn-back:hover {
            transform: scale(1.05);
            box-shadow: 0 5px 15px rgba(0,0,0,0.2);
        }
    </style>
</head>
<body>
    <div class="login-container">
        <div class="card-header">
            <h2>Admin Login</h2>
            <c:if test="${not empty msg}">
                <div class="alert alert-danger mt-3">${msg}</div>
            </c:if>
        </div>
        <form action="adminlogin" method="post">
            <div class="form-group mb-3">
                <label class="form-label">Username</label>
                <input type="text" name="username" class="form-control" placeholder="Enter admin username" required>
            </div>
            <div class="form-group mb-4">
                <label class="form-label">Password</label>
                <input type="password" name="password" class="form-control" placeholder="Enter admin password" required>
            </div>
            <button type="submit" class="btn btn-login w-100 text-white">
                Login
            </button>
        </form>
        <div class="text-center">
            <a href="start" class="btn btn-back">
                <i class="bi bi-arrow-left me-2"></i>Back
            </a>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
