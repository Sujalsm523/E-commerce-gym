<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Existing head content remains the same -->
     <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Weight Loss Workout Program</title>
    
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
            --accent-color: #e74c3c;
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
            max-width: 1200px;
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

        .workout-days {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
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
            <h1>Weight Loss Workout Program</h1>
            <p>6-Day High-Intensity Fat Burning Workout Plan</p>
        </div>

        <div class="workout-days">
            <!-- Day 1: High-Intensity Interval Training (HIIT) -->
            <div class="workout-day">
                <h2>Day 1: HIIT Cardio</h2>
                <ul class="exercise-list">
                    <li>
                        <span class="exercise-name">Burpees</span>
                        <span class="exercise-details">4 x 30 sec</span>
                    </li>
                    <li>
                        <span class="exercise-name">Mountain Climbers</span>
                        <span class="exercise-details">4 x 45 sec</span>
                    </li>
                    <li>
                        <span class="exercise-name">Jump Squats</span>
                        <span class="exercise-details">3 x 20 reps</span>
                    </li>
                    <li>
                        <span class="exercise-name">High Knees</span>
                        <span class="exercise-details">3 x 30 sec</span>
                    </li>
                </ul>
            </div>

            <!-- Day 2: Full Body Strength Training -->
            <div class="workout-day">
                <h2>Day 2: Full Body Strength</h2>
                <ul class="exercise-list">
                    <li>
                        <span class="exercise-name">Bodyweight Squats</span>
                        <span class="exercise-details">3 x 15 reps</span>
                    </li>
                    <li>
                        <span class="exercise-name">Push-Ups</span>
                        <span class="exercise-details">3 x 12 reps</span>
                    </li>
                    <li>
                        <span class="exercise-name">Lunges</span>
                        <span class="exercise-details">3 x 12 each leg</span>
                    </li>
                    <li>
                        <span class="exercise-name">Plank</span>
                        <span class="exercise-details">3 x 45 sec</span>
                    </li>
                </ul>
            </div>

            <!-- Day 3: Cardio and Core -->
            <div class="workout-day">
                <h2>Day 3: Cardio and Core</h2>
                <ul class="exercise-list">
                    <li>
                        <span class="exercise-name">Running/Jogging</span>
                        <span class="exercise-details">30 min</span>
                    </li>
                    <li>
                        <span class="exercise-name">Bicycle Crunches</span>
                        <span class="exercise-details">3 x 20 reps</span>
                    </li>
                    <li>
                        <span class="exercise-name">Russian Twists</span>
                        <span class="exercise-details">3 x 15 reps</span>
                    </li>
                    <li>
                        <span class="exercise-name">Leg Raises</span>
                        <span class="exercise-details">3 x 12 reps</span>
                    </li>
                </ul>
            </div>

            <!-- Day 4: Resistance and Strength -->
            <div class="workout-day">
                <h2>Day 4: Resistance Training</h2>
                <ul class="exercise-list">
                    <li>
                        <span class="exercise-name">Dumbbell Rows</span>
                        <span class="exercise-details">3 x 12 reps</span>
                    </li>
                    <li>
                        <span class="exercise-name">Dumbbell Shoulder Press</span>
                        <span class="exercise-details">3 x 10 reps</span>
                    </li>
                    <li>
                        <span class="exercise-name">Step-Ups</span>
                        <span class="exercise-details">3 x 15 each leg</span>
                    </li>
                    <li>
                        <span class="exercise-name">Tricep Dips</span>
                        <span class="exercise-details">3 x 12 reps</span>
                    </li>
                </ul>
            </div>

            <!-- Day 5: Advanced HIIT -->
            <div class="workout-day">
                <h2>Day 5: Advanced HIIT</h2>
                <ul class="exercise-list">
                    <li>
                        <span class="exercise-name">Box Jumps</span>
                        <span class="exercise-details">4 x 15 reps</span>
                    </li>
                    <li>
                        <span class="exercise-name">Kettlebell Swings</span>
                        <span class="exercise-details">3 x 20 reps</span>
                    </li>
                    <li>
                        <span class="exercise-name">Battle Rope Waves</span>
                        <span class="exercise-details">3 x 30 sec</span>
                    </li>
                    <li>
                        <span class="exercise-name">Sprint Intervals</span>
                        <span class="exercise-details">6 x 100m</span>
                    </li>
                </ul>
            </div>

            <!-- Day 6: Full Body Circuit -->
            <div class="workout-day">
                <h2>Day 6: Full Body Circuit</h2>
                <ul class="exercise-list">
                    <li>
                        <span class="exercise-name">Burpee Pull-Ups</span>
                        <span class="exercise-details">3 x 10 reps</span>
                    </li>
                    <li>
                        <span class="exercise-name">Wall Balls</span>
                        <span class="exercise-details">3 x 15 reps</span>
                    </li>
                    <li>
                        <span class="exercise-name">Jumping Lunges</span>
                        <span class="exercise-details">3 x 20 reps</span>
                    </li>
                    <li>
                        <span class="exercise-name">Plank to Push-Up</span>
                        <span class="exercise-details">3 x 12 reps</span>
                    </li>
                </ul>
            </div>
        </div>

        <div class="guidelines">
            <h3>Advanced Weight Loss Workout Guidelines</h3>
            <ul>
                <li>Maintain a consistent calorie deficit</li>
                <li>Stay hydrated throughout the day</li>
                <li>Get 7-8 hours of quality sleep</li>
                <li>Focus on proper form and technique</li>
                <li>Combine with balanced, protein-rich nutrition</li>
                <li>Listen to your body and rest when needed</li>
                <li>Track progress and adjust intensity</li>
                <li>Consider supplementing with protein and multivitamins</li>
            </ul>
        </div>
    </div>
</body>
</html>
