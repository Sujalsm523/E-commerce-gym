<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Dashboard | Fitness Companion</title>

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    
    <!-- Font Awesome for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

    <style>
        :root {
            --primary-color: #3498db;
            --secondary-color: #2ecc71;
            --background-color: #f4f6f7;
            --text-color: #2c3e50;
            --hover-color: #2980b9;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background-color: var(--background-color);
            line-height: 1.6;
            color: var(--text-color);
        }

        /* Header Styles */
        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px 50px;
            background-color: white;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            position: sticky;
            top: 0;
            z-index: 100;
        }

        .user-profile {
            display: flex;
            align-items: center;
        }

        .profile-image {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            margin-right: 15px;
            border: 3px solid var(--primary-color);
            object-fit: cover;
        }

        .username {
            font-size: 18px;
            font-weight: 600;
            color: var(--text-color);
        }

        .logout-btn {
            text-decoration: none;
            background-color: var(--primary-color);
            color: white;
            padding: 10px 20px;
            border-radius: 8px;
            transition: all 0.3s ease;
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .logout-btn:hover {
            background-color: var(--hover-color);
            transform: translateY(-3px);
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }

        /* Navbar Styles */
        .navbar {
            display: flex;
            justify-content: center;
            background-color: var(--text-color);
            padding: 15px 0;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .navbar a {
            color: white;
            text-decoration: none;
            padding: 10px 20px;
            font-size: 16px;
            margin: 0 10px;
            position: relative;
            transition: all 0.3s ease;
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .navbar a i {
            transition: transform 0.3s ease;
        }

        .navbar a:hover i {
            transform: scale(1.2) rotate(360deg);
        }

        .navbar a::after {
            content: '';
            position: absolute;
            left: 0;
            bottom: -5px;
            width: 0;
            height: 3px;
            background-color: var(--secondary-color);
            transition: width 0.3s ease;
        }

        .navbar a:hover::after {
            width: 100%;
        }

        .navbar a:hover {
            color: var(--secondary-color);
        }

        .navbar .active {
            background-color: rgba(255, 255, 255, 0.1);
            border-radius: 8px;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .header {
                flex-direction: column;
                padding: 15px;
                gap: 15px;
            }

            .navbar {
                flex-direction: column;
                align-items: center;
            }

            .navbar a {
                margin: 10px 0;
                width: 100%;
                text-align: center;
            }
        }
    </style>
</head>
<body>
    <!-- Header with User Profile and Logout -->
    <div class="header">
        <div class="user-profile">
            
            <div class="username">
                Welcome, ${loginuser.fullname}
            </div>
        </div>
        <a href="logout" class="logout-btn">
            <i class="fas fa-sign-out-alt"></i>
            Logout
        </a>
    </div>

    <!-- Navigation Bar -->
    <div class="navbar">
        <a href="diet" class="${activeTab == 'diet' ? 'active' : ''}">
            <i class="fas fa-utensils"></i>
            Diet Plan
        </a>
        <a href="supplement" class="${activeTab == 'supplement' ? 'active' : ''}">
            <i class="fas fa-pills"></i>
            Supplements
        </a>
        <a href="myworkout" class="${activeTab == 'workout' ? 'active' : ''}">
            <i class="fas fa-dumbbell"></i>
            Workout Plans
        </a>
        <a href="feedback" class="${activeTab == 'contact' ? 'active' : ''}">
            <i class="fas fa-headset"></i>
            Feedback
        </a>
    </div>
    
</body>
</html>
