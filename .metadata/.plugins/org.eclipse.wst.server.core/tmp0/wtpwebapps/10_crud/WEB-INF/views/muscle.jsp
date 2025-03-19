<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.HashMap, java.util.Map, java.util.Arrays" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Muscle Gain Nutrition Strategy</title>
    
    <!-- Performance Optimization -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preload" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" as="style">
    
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    
    <!-- Animate.css -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    
    <style>
        :root {
            --primary-color: #4a90e2;
            --secondary-color: #2ecc71;
            --background-color: #f4f6f9;
            --text-color: #2c3e50;
            --card-bg: #ffffff;
            --transition-speed: 0.3s;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, var(--background-color) 0%, #e9ecef 100%);
            color: var(--text-color);
            line-height: 1.6;
        }

        .nutrition-container {
            max-width: 1200px;
            margin: 50px auto;
            padding: 30px;
            perspective: 1000px;
        }

        .strategy-header {
            text-align: center;
            margin-bottom: 40px;
            position: relative;
        }

        .strategy-header h1 {
            font-size: 2.5rem;
            color: var(--primary-color);
            position: relative;
            display: inline-block;
        }

        .strategy-header h1::after {
            content: '';
            position: absolute;
            bottom: -10px;
            left: 0;
            width: 100%;
            height: 4px;
            background: linear-gradient(to right, var(--primary-color), var(--secondary-color));
            transform: scaleX(0);
            transition: transform 0.5s ease;
        }

        .strategy-header:hover h1::after {
            transform: scaleX(1);
        }

        .nutrition-card {
            background: var(--card-bg);
            border-radius: 15px;
            box-shadow: 0 20px 40px rgba(0,0,0,0.1);
            padding: 30px;
            margin-bottom: 30px;
            transition: all var(--transition-speed) ease;
            transform-style: preserve-3d;
        }

        .nutrition-card:hover {
            transform: translateY(-15px) rotateX(5deg);
            box-shadow: 0 30px 60px rgba(0,0,0,0.15);
        }

        .strategy-details {
            display: flex;
            align-items: center;
            gap: 30px;
        }

        .strategy-icon {
            flex: 0 0 120px;
            text-align: center;
            font-size: 80px;
            color: var(--primary-color);
            transition: transform var(--transition-speed) ease;
        }

        .nutrition-card:hover .strategy-icon {
            transform: rotate(360deg) scale(1.1);
        }

        .strategy-content h2 {
            color: var(--primary-color);
            margin-bottom: 15px;
            transition: color var(--transition-speed) ease;
        }

        .nutrition-card:hover .strategy-content h2 {
            color: var(--secondary-color);
        }

        .recommended-foods {
            background-color: #f9f9f9;
            border-radius: 10px;
            padding: 20px;
            margin-top: 20px;
        }

        .food-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 15px;
        }

        .food-item {
            background-color: white;
            border: 1px solid #e0e0e0;
            border-radius: 8px;
            padding: 15px;
            text-align: center;
            transition: all 0.3s ease;
            transform-style: preserve-3d;
        }

        .food-item:hover {
            transform: translateZ(20px) scale(1.05);
            box-shadow: 0 10px 20px rgba(0,0,0,0.1);
            background-color: var(--primary-color);
            color: white;
        }

        .meal-timing-section {
            background: var(--card-bg);
            border-radius: 15px;
            padding: 30px;
            box-shadow: 0 20px 40px rgba(0,0,0,0.1);
        }

        .meal-timing-table {
            width: 100%;
            border-collapse: separate;
            border-spacing: 0;
        }

        .meal-timing-table th {
            background: linear-gradient(to right, var(--primary-color), var(--secondary-color));
            color: white;
            padding: 15px;
            text-align: left;
        }

        .meal-timing-table td {
            padding: 15px;
            border-bottom: 1px solid #e0e0e0;
            transition: background-color 0.3s ease;
        }

        .meal-timing-table tr:hover {
            background-color: rgba(52, 152, 219, 0.05);
        }

        .cta-section {
            text-align: center;
            margin-top: 30px;
        }

        .cta-button {
            display: inline-block;
            padding: 15px 30px;
            background: linear-gradient(to right, var(--primary-color), var(--secondary-color));
            color: white;
            text-decoration: none;
            border-radius: 8px;
            transition: all 0.4s ease;
            position: relative;
            overflow: hidden;
        }

        .cta-button:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(0,0,0,0.2);
        }

        @media (max-width: 768px) {
            .strategy-details {
                flex-direction: column;
                text-align: center;
            }

            .food-grid {
                grid-template-columns: repeat(2, 1fr);
            }
        }
    </style>
</head>
<body>
    <div class="nutrition-container animate__animated animate__fadeIn">
        <div class="strategy-header">
            <h1>Muscle Gain Nutrition Strategy</h1>
        </div>

        <div class="nutrition-card">
            <div class="strategy-details">
                <div class="strategy-icon">
                    <i class="fas fa-dumbbell"></i>
                </div>
                <div class="strategy-content">
                    <h2>Muscle Growth Acceleration</h2>
                    <p>High-protein nutrition plan designed to support muscle hypertrophy, strength development, and optimal protein synthesis through strategic meal planning and targeted nutrient intake.</p>

                    <div class="recommended-foods">
                        <h3>Recommended Foods for Muscle Growth</h3>
                        <div class="food-grid">
                            <div class="food-item">Lean Beef</div>
                            <div class="food-item">Whey Protein</div>
                            <div class="food-item">Chicken Breast</div>
                            <div class="food-item">Salmon</div>
                            <div class="food-item">Eggs</div>
                            <div class="food-item">Greek Yogurt</div>
                            <div class="food-item">Brown Rice</div>
                            <div class="food-item">Quinoa</div>
                            <div class="food-item">Oats</div>
                            <div class="food-item">Almonds</div>
                            <div class="food-item">Avocado</div>
                            <div class="food-item">Sweet Potato</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="meal-timing-section">
            <h3>Optimal Meal Timing for Muscle Gain</h3>
            <table class="meal-timing-table">
                <thead>
                    <tr>
                        <th>Meal</th>
                        <th>Time</th>
                        <th>Recommended Foods</th>
                        <th>Purpose</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Pre-Workout Meal</td>
                        <td>6:30 - 7:00 AM</td>
                        <td>Oatmeal, Whey Protein, Banana</td>
                        <td>Energy and Protein Preparation</td>
                    </tr>
                    <tr>
                        <td>Post-Workout Meal</td>
                        <td>8:30 - 9:00 AM</td>
                        <td>Chicken Breast, Brown Rice, Vegetables</td>
                        <td>Muscle Recovery and Growth</td>
                    </tr>
                    <tr>
                        <td>Mid-Morning Meal</td>
                        <td>10:30 - 11:00 AM</td>
                        <td>Greek Yogurt, Almonds, Berries</td>
                        <td>Sustained Protein Intake</td>
                    </tr>
                    <tr>
                        <td>Lunch</td>
                        <td>1:00 - 2:00 PM</td>
                        <td>Lean Beef, Quinoa, Avocado</td>
                        <td>Protein and Healthy Fats</td>
                    </tr>
                    <tr>
                        <td>Afternoon Snack</td>
                        <td>4:00 - 4:30 PM</td>
                        <td>Protein Shake, Sweet Potato</td>
                        <td>Muscle Maintenance</td>
                    </tr>
                    <tr>
                        <td>Dinner</td>
                        <td>7:30 - 8:30 PM</td>
                        <td>Salmon, Roasted Vegetables, Brown Rice</td>
                        <td>Protein Synthesis</td>
                    </tr>
                </tbody>
            </table>
        </div>

        <div class="cta-section">
            <a href="diet" class="cta-button">Back to Diet Strategies</a>
        </div>
    </div>
</body>
</html>
