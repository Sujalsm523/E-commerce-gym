<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Professional Strength Training Program</title>
    
    <!-- Performance Optimization -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preload" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" as="style">
    
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    
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
        }

        .workout-container {
            max-width: 1400px;
            margin: 40px auto;
            padding: 30px;
            background: white;
            border-radius: 15px;
            box-shadow: 0 20px 50px rgba(0,0,0,0.1);
        }

        .workout-header {
            text-align: center;
            margin-bottom: 30px;
            position: relative;
        }

        .workout-header h1 {
            color: var(--accent-color);
            font-size: 2.5rem;
            font-weight: 600;
        }

        .btn-back {
            position: absolute;
            left: 0;
            top: 50%;
            transform: translateY(-50%);
            background: rgba(0,0,0,0.05);
            color: var(--text-color);
            padding: 10px 15px;
            border-radius: 8px;
            text-decoration: none;
        }

        .workout-days {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
        }

        .workout-day {
            background: #f9f9f9;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
            transition: transform 0.3s ease;
        }

        .workout-day:hover {
            transform: translateY(-10px);
        }

        .workout-day h2 {
            color: var(--secondary-color);
            margin-bottom: 15px;
            border-bottom: 2px solid var(--accent-color);
            padding-bottom: 10px;
        }

        .exercise-list {
            list-style-type: none;
        }

        .exercise-list li {
            display: flex;
            justify-content: space-between;
            margin-bottom: 10px;
            padding: 10px;
            background: white;
            border-radius: 5px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.05);
        }

        .exercise-name {
            font-weight: 500;
        }

        .exercise-details {
            color: #6c757d;
            font-size: 0.8rem;
        }

        .guidelines {
            margin-top: 30px;
            background: #f1f8ff;
            padding: 20px;
            border-radius: 10px;
        }

        .guidelines h3 {
            color: var(--secondary-color);
            margin-bottom: 15px;
        }

        @media (max-width: 768px) {
            .workout-days {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>
    <div class="workout-container">
        <div class="workout-header">
            <a href="${pageContext.request.contextPath}/myworkout" class="btn-back">
                <i class="fas fa-arrow-left"></i> Back
            </a>
            <h1>Professional Strength Training Program</h1>
        </div>

        <div class="workout-days">
            <!-- Day 1: Chest and Shoulders -->
            <div class="workout-day">
                <h2>Day 1: Chest and Shoulders</h2>
                <ul class="exercise-list">
                    <li>
                        <span class="exercise-name">Barbell Bench Press</span>
                        <span class="exercise-details">4 x 6-8 reps</span>
                    </li>
                    <li>
                        <span class="exercise-name">Overhead Press</span>
                        <span class="exercise-details">3 x 8-10 reps</span>
                    </li>
                    <li>
                        <span class="exercise-name">Incline Dumbbell Press</span>
                        <span class="exercise-details">3 x 10-12 reps</span>
                    </li>
                    <li>
                        <span class="exercise-name">Lateral Raises</span>
                        <span class="exercise-details">3 x 12-15 reps</span>
                    </li>
                </ul>
            </div>

            <!-- Day 2: Back and Biceps -->
            <div class="workout-day">
                <h2>Day 2: Back and Biceps</h2>
                <ul class="exercise-list">
                    <li>
                        <span class="exercise-name">Deadlifts</span>
                        <span class="exercise-details">4 x 5-6 reps</span>
                    </li>
                    <li>
                        <span class="exercise-name">Pull-Ups/Lat Pulldowns</span>
                        <span class="exercise-details">3 x 8-10 reps</span>
                    </li>
                    <li>
                        <span class="exercise-name">Barbell Rows</span>
                        <span class="exercise-details">3 x 8-10 reps</span>
                    </li>
                    <li>
                        <span class="exercise-name">Bicep Curls</span>
                        <span class="exercise-details">3 x 10-12 reps</span>
                    </li>
                </ul>
            </div>

            <!-- Day 3: Legs -->
            <div class="workout-day">
                <h2>Day 3: Legs</h2>
                <ul class="exercise-list">
                    <li>
                        <span class="exercise-name">Back Squats</span>
                        <span class="exercise-details">4 x 6-8 reps</span>
                    </li>
                    <li>
                        <span class="exercise-name">Romanian Deadlifts</span>
                        <span class="exercise-details">3 x 8-10 reps</span>
                    </li>
                    <li>
                        <span class="exercise-name">Leg Press</span>
                        <span class="exercise-details">3 x 10-12 reps</span>
                    </li>
                    <li>
                        <span class="exercise-name">Calf Raises</span>
                        <span class="exercise-details">4 x 15-20 reps</span>
                    </li>
                </ul>
            </div>

            <!-- Day 4: Arms and Core -->
            <div class="workout-day">
                <h2>Day 4: Arms and Core</h2>
                <ul class="exercise-list">
                    <li>
                        <span class="exercise-name">Close-Grip Bench Press</span>
                        <span class="exercise-details">3 x 8-10 reps</span>
                    </li>
                    <li>
                        <span class="exercise-name">Tricep Pushdowns</span>
                        <span class="exercise-details">3 x 10-12 reps</span>
                    </li>
                    <li>
                        <span class="exercise-name">Hammer Curls</span>
                        <span class="exercise-details">3 x 10-12 reps</span>
                    </li>
                    <li>
                        <span class="exercise-name">Plank Variations</span>
                        <span class="exercise-details">3 x 45-60 sec</span>
                    </li>
                </ul>
            </div>

            <!-- Day 5: Shoulders and Accessory -->
            <div class="workout-day">
                <h2>Day 5: Shoulders and Accessory</h2>
                <ul class="exercise-list">
                    <li>
                        <span class="exercise-name">Standing Military Press</span>
                        <span class="exercise-details">4 x 6-8 reps</span>
                    </li>
                    <li>
                        <span class="exercise-name">Face Pulls</span>
                        <span class="exercise-details">3 x 12-15 reps</span>
                    </li>
                    <li>
                        <span class="exercise-name">Dumbbell Lateral Raises</span>
                        <span class="exercise-details">3 x 12-15 reps</span>
                    </li>
                    <li>
                        <span class="exercise-name">Rear Delt Flyes</span>
                        <span class="exercise-details">3 x 10-12 reps</span>
                    </li>
                </ul>
            </div>

            <!-- Day 6: Full Body and Conditioning -->
            <div class="workout-day">
                <h2>Day 6: Full Body and Conditioning</h2>
                <ul class="exercise-list">
                    <li>
                        <span class="exercise-name">Barbell Complex</span>
                        <span class="exercise-details">4 rounds</span>
                    </li>
                    <li>
                        <span class="exercise-name">Kettlebell Swings</span>
                        <span class="exercise-details">3 x 15-20 reps</span>
                    </li>
                    <li>
                        <span class="exercise-name">Box Jumps</span>
                        <span class="exercise-details">3 x 10 reps</span>
                    </li>
                    <li>
                        <span class="exercise-name">Core Circuit</span>
                        <span class="exercise-details">3 rounds</span>
                    </li>
                </ul>
            </div>
        </div>

        <div class="guidelines">
            <h3>Advanced Training Guidelines</h3>
            <ul>
                <li>Rest 90-180 seconds between main exercises</li>
                <li>Choose weights allowing 2-3 reps in reserve</li>
                <li>Focus on progressive overload</li>
                <li>Maintain proper form and technique</li>
                <li>Stay hydrated and ensure adequate nutrition</li>
                <li>Listen to your body and adjust intensity as needed</li>
            </ul>
        </div>
    </div>
</body>
</html>
