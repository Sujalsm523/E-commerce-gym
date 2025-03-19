<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.HashMap, java.util.Map, java.util.Arrays" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Personalized Nutrition Strategy</title>
    
    <!-- Performance Optimization -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preload" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" as="style">
    
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    
    <!-- Animate.css for animations -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    
    <style>
        :root {
            --primary-color: #2c3e50;
            --secondary-color: #3498db;
            --background-color: #ecf0f1;
            --text-color: #34495e;
            --accent-color: #e74c3c;
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
            overflow-x: hidden;
        }

        .result-container {
            max-width: 1200px;
            margin: 50px auto;
            background: white;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 20px 50px rgba(0, 0, 0, 0.1);
            perspective: 1000px;
            position: relative;
        }

        .header {
            text-align: center;
            margin-bottom: 40px;
            position: relative;
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

        .strategy-details {
            display: flex;
            align-items: center;
            gap: 30px;
            background-color: #f9f9f9;
            padding: 30px;
            border-radius: 15px;
            transition: all var(--transition-speed) ease;
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

        .food-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(120px, 1fr));
            gap: 15px;
        }

        .food-item {
            background-color: white;
            border: 1px solid #e0e0e0;
            border-radius: 8px;
            padding: 15px;
            text-align: center;
            transition: all 0.3s ease;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
        }

        .food-item:hover {
            transform: scale(1.05);
            box-shadow: 0 8px 15px rgba(0,0,0,0.15);
            background-color: var(--secondary-color);
            color: white;
        }

        .meal-timing-table {
            width: 100%;
            border-collapse: separate;
            border-spacing: 0;
            margin-top: 20px;
        }

        .meal-timing-table th {
            background-color: var(--primary-color);
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
        }
    </style>
</head>
<body>
    <!-- Rest of the existing code remains the same -->
     <div class="result-container animate__animated animate__fadeIn">
        <div class="header">
            <a href="diet" class="btn-back">
                <i class="fas fa-arrow-left"></i> Back to Diet Selection
            </a>
            <h1>Your Nutrition Strategy</h1>
        </div>

        <%
            // Comprehensive Diet Strategies
            Map<String, Map<String, Object>> dietStrategies = new HashMap<>();
            
            // Weight Loss Strategy
            Map<String, Object> weightLossStrategy = new HashMap<>();
            weightLossStrategy.put("title", "Weight Loss Optimization");
            weightLossStrategy.put("description", "A comprehensive approach focusing on calorie deficit, nutrient-dense foods, and metabolic boost.");
            weightLossStrategy.put("icon", "fas fa-weight");
            weightLossStrategy.put("recommendedFoods", new String[]{
                "Chicken Breast", "Salmon", "Spinach", 
                "Broccoli", "Greek Yogurt", "Eggs", 
                "Quinoa", "Berries", "Almonds"
            });

            // Muscle Gain Strategy
            Map<String, Object> muscleGainStrategy = new HashMap<>();
            muscleGainStrategy.put("title", "Muscle Growth Acceleration");
            muscleGainStrategy.put("description", "High-protein nutrition plan designed to support muscle hypertrophy and strength development.");
            muscleGainStrategy.put("icon", "fas fa-dumbbell");
            muscleGainStrategy.put("recommendedFoods", new String[]{
                "Lean Beef", "Whey Protein", "Brown Rice", 
                "Sweet Potato", "Eggs", "Oats", 
                "Salmon", "Nuts", "Avocado"
            });

            // Balanced Diet Strategy
            Map<String, Object> balancedDietStrategy = new HashMap<>();
            balancedDietStrategy.put("title", "Holistic Nutrition Balance");
            balancedDietStrategy.put("description", "Comprehensive nutrition approach focusing on balanced macronutrients and overall wellness.");
            balancedDietStrategy.put("icon", "fas fa-balance-scale");
            balancedDietStrategy.put("recommendedFoods", new String[]{
                "Quinoa", "Salmon", "Spinach", 
                "Sweet Potato", "Greek Yogurt", "Eggs", 
                "Berries", "Almonds", "Olive Oil"
            });

            dietStrategies.put("weightLoss", weightLossStrategy);
            dietStrategies.put("muscleGain", muscleGainStrategy);
            dietStrategies.put("balancedDiet", balancedDietStrategy);

            // Retrieve selected diet type with fallback
            String dietType = request.getParameter("dietType");
            if (dietType == null) {
                dietType = "weightLoss"; // Default strategy
            }

            Map<String, Object> selectedStrategy = dietStrategies.get(dietType);
        %>

        <% if (selectedStrategy != null) { %>
            <div class="strategy-details">
                <div class="strategy-icon">
                    <i class="<%= selectedStrategy.get("icon") %>"></i>
                </div>
                <div class="strategy-content">
                    <h2><%= selectedStrategy.get("title") %></h2>
                    <p><%= selectedStrategy.get("description") %></p>

                    <div class="recommended-foods">
                        <h3>Recommended Foods</h3>
                        <div class="food-grid">
                            <% 
                            String[] recommendedFoods = (String[]) selectedStrategy.get("recommendedFoods");
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
                <h3>Optimal Meal Timing</h3>
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
                            <td>Eggs, Oatmeal, Greek Yogurt</td>
                            <td>Metabolism Kickstart</td>
                        </tr>
                        <tr>
                            <td>Mid-Morning Snack</td>
                            <td>10:30 - 11:00 AM</td>
                            <td>Almonds, Apple</td>
                            <td>Sustained Energy</td>
                        </tr>
                        <tr>
                            <td>Lunch</td>
                            <td>12:30 - 1:30 PM</td>
                            <td>Grilled Chicken, Quinoa, Vegetables</td>
                            <td>Protein Intake</td>
                        </tr>
                        <tr>
                            <td>Afternoon Snack</td>
                            <td>4:00 - 4:30 PM</td>
                            <td>Protein Shake, Berries</td>
                            <td>Metabolism Boost</td>
                        </tr>
                        <tr>
                            <td>Dinner</td>
                            <td>7:00 - 8:00 PM</td>
                            <td>Salmon, Roasted Vegetables</td>
                            <td>Light Protein</td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <div class="cta-section">
                <a href="diet" class="cta-button">Explore More Strategies</a>
            </div>
        <% } else { %>
            <div class="error-message">
                <p>No strategy found. Please select a valid diet type.</p>
            </div>
        <% } %>
    </div>

    <script>
        // Optional: Add any client-side interactions or validations
        document.addEventListener('DOMContentLoaded', () => {
            console.log('Nutrition Strategy Page Loaded');
        });
    </script>
</body>
</html>
