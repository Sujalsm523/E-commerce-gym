<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.HashMap, java.util.Map, java.util.Arrays" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Holistic Nutrition Balance | Comprehensive Diet Strategy</title>
    
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
            --primary-color: #2c3e50;
            --secondary-color: #3498db;
            --accent-color: #2ecc71;
            --background-color: #ecf0f1;
            --text-color: #34495e;
            --transition-speed: 0.3s;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, var(--background-color) 0%, #ffffff 100%);
            color: var(--text-color);
            line-height: 1.6;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        .nutrition-container {
            max-width: 1200px;
            width: 100%;
            margin: 50px auto;
            padding: 40px;
            background: white;
            border-radius: 15px;
            box-shadow: 0 20px 50px rgba(0,0,0,0.1);
            perspective: 1000px;
        }

        .nutrition-header {
            text-align: center;
            position: relative;
            margin-bottom: 40px;
        }

        .btn-back {
            position: absolute;
            left: 0;
            top: 50%;
            transform: translateY(-50%);
            text-decoration: none;
            color: var(--primary-color);
            transition: all 0.3s ease;
            padding: 10px;
            border-radius: 8px;
        }

        .btn-back:hover {
            background-color: rgba(0,0,0,0.05);
            transform: translateY(-50%) translateX(-10px);
        }

        .nutrition-header h1 {
            color: var(--accent-color);
            font-size: 2.5rem;
            font-weight: 600;
            position: relative;
            display: inline-block;
        }

        .nutrition-header h1::after {
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

        .nutrition-header:hover h1::after {
            transform: scaleX(1);
        }

        .strategy-details {
            display: flex;
            align-items: center;
            gap: 30px;
            background-color: #f9f9f9;
            padding: 30px;
            border-radius: 15px;
            transition: all 0.4s ease;
        }

        .strategy-details:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 30px rgba(0,0,0,0.1);
        }

        .strategy-icon {
            flex: 0 0 100px;
            text-align: center;
            font-size: 70px;
            color: var(--secondary-color);
            transition: transform 0.4s ease;
        }

        .strategy-details:hover .strategy-icon {
            transform: rotate(15deg);
        }

        .recommended-foods {
            background-color: white;
            border-radius: 10px;
            padding: 20px;
            margin-top: 20px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.05);
        }

        .food-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 15px;
        }

        .food-item {
            background-color: #f4f4f4;
            border-radius: 8px;
            padding: 15px;
            text-align: center;
            transition: all 0.3s ease;
            position: relative;
            overflow: hidden;
        }

        .food-item:hover {
            transform: scale(1.05);
            background-color: var(--accent-color);
            color: white;
        }

        .meal-timing-section {
            margin-top: 30px;
            background-color: white;
            border-radius: 15px;
            padding: 30px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
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
        <div class="nutrition-header">
            <a href="${pageContext.request.contextPath}/diet" class="btn-back">
                <i class="fas fa-arrow-left"></i> Back to Strategies
            </a>
            <h1>Holistic Nutrition Balance</h1>
        </div>

        <%
            // Balanced Diet Strategy Configuration
            Map<String, Object> balancedDietStrategy = new HashMap<>();
            balancedDietStrategy.put("title", "Comprehensive Nutrition Approach");
            balancedDietStrategy.put("description", "A holistic nutrition strategy designed to optimize overall health, balance macronutrients, and support sustained wellness through intelligent food choices and strategic meal planning.");
            balancedDietStrategy.put("icon", "fas fa-balance-scale");
            balancedDietStrategy.put("recommendedFoods", new String[]{
                "Quinoa", "Salmon", "Spinach", 
                "Sweet Potato", "Greek Yogurt", "Eggs", 
                "Berries", "Almonds", "Olive Oil",
                "Lean Chicken", "Brown Rice", "Avocado"
            });
        %>

        <div class="strategy-details">
            <div class="strategy-icon">
                <i class="fas fa-balance-scale"></i>
            </div>
            <div class="strategy-content">
                <h2>Comprehensive Nutrition Approach</h2>
                <p>A holistic nutrition strategy designed to optimize overall health, balance macronutrients, and support sustained wellness through intelligent food choices and strategic meal planning.</p>

                <div class="recommended-foods">
                    <h3>Recommended Foods for Balanced Nutrition</h3>
                    <div class="food-grid">
                        <% 
                        String[] recommendedFoods = (String[]) balancedDietStrategy.get("recommendedFoods");
                        for (String food : recommendedFoods) { 
                        %>
                            <div class="food-item">
                                <%= food %>
                            </div>
                        <% } %>
                    </div>
                </div>
            </div>
        </div>

        <!-- Meal Timing Section -->
        <div class="meal-timing-section">
            <h3>Optimal Meal Timing for Balanced Diet</h3>
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
                        <td>Breakfast</td>
                        <td>7:00 - 8:00 AM</td>
                        <td>Greek Yogurt, Berries, Almonds</td>
                        <td>Balanced Nutrient Intake</td>
                    </tr>
                    <tr>
                        <td>Mid-Morning Snack</td>
                        <td>10:30 - 11:00 AM</td>
                        <td>Apple, Handful of Nuts</td>
                        <td>Sustained Energy</td>
                    </tr>
                    <tr>
                        <td>Lunch</td>
                        <td>12:30 - 1:30 PM</td>
                        <td>Quinoa, Grilled Chicken, Spinach</td>
                        <td>Balanced Macronutrients</td>
                    </tr>
                    <tr>
                        <td>Afternoon Snack</td>
                        <td>4:00 - 4:30 PM</td>
                        <td>Sweet Potato, Hummus</td>
                        <td>Nutrient Replenishment</td>
                    </tr>
                    <tr>
                        <td>Dinner</td>
                        <td>7:00 - 8:00 PM</td>
                        <td>Salmon, Brown Rice, Roasted Vegetables</td>
                        <td>Complete Nutrition</td>
                    </tr>
                </tbody>
            </table>
        </div>

        <div class="cta-section">
            <a href="${pageContext.request.contextPath}/diet" class="cta-button">Explore More Strategies</a>
        </div>
    </div>
</body>
</html>
