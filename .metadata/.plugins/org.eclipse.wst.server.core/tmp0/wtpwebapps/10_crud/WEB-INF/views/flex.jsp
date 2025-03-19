<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Flexibility Training Program</title>
    
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
            <h1>Flexibility Training Program</h1>
            <p>6-Day Mobility and Stretching Routine</p>
        </div>

        <div class="workout-days">
            <!-- Day 1: Full Body Flexibility -->
            <div class="workout-day">
                <h2>Day 1: Full Body Mobility</h2>
                <ul class="exercise-list">
                    <li>
                        <span class="exercise-name">Dynamic Warm-Up</span>
                        <span class="exercise-details">15 min</span>
                    </li>
                    <li>
                        <span class="exercise-name">Standing Forward Fold</span>
                        <span class="exercise-details">3 x 30 sec</span>
                    </li>
                    <li>
                        <span class="exercise-name">Lunging Hip Flexor Stretch</span>
                        <span class="exercise-details">3 x 30 sec each side</span>
                    </li>
                    <li>
                        <span class="exercise-name">Shoulder Mobility Drill</span>
                        <span class="exercise-details">3 x 15 reps</span>
                    </li>
                </ul>
            </div>

            <!-- Day 2: Lower Body Flexibility -->
            <div class="workout-day">
                <h2>Day 2: Lower Body Flexibility</h2>
                <ul class="exercise-list">
                    <li>
                        <span class="exercise-name">Hamstring Stretch</span>
                        <span class="exercise-details">3 x 45 sec</span>
                    </li>
                    <li>
                        <span class="exercise-name">Pigeon Pose</span>
                        <span class="exercise-details">3 x 30 sec each side</span>
                    </li>
                    <li>
                        <span class="exercise-name">Calf Stretch</span>
                        <span class="exercise-details">3 x 30 sec each leg</span>
                    </li>
                    <li>
                        <span class="exercise-name">Deep Squat Hold</span>
                        <span class="exercise-details">3 x 45 sec</span>
                    </li>
                </ul>
            </div>

            <!-- Day 3: Upper Body Mobility -->
            <div class="workout-day">
                <h2>Day 3: Upper Body Mobility</h2>
                <ul class="exercise-list">
                    <li>
                        <span class="exercise-name">Chest Opener Stretch</span>
                        <span class="exercise-details">3 x 30 sec</span>
                    </li>
                    <li>
                        <span class="exercise-name">Triceps Stretch</span>
                        <span class="exercise-details">3 x 30 sec each arm</span>
                    </li>
                    <li>
                        <span class="exercise-name">Shoulder Dislocates</span>
                        <span class="exercise-details">3 x 12 reps</span>
                    </li>
                    <li>
                        <span class="exercise-name">Wall Angels</span>
                        <span class="exercise-details">3 x 10 reps</span>
                    </li>
                </ul>
            </div>

            <!-- Day 4: Spine and Core Flexibility -->
            <div class="workout-day">
                <h2>Day 4: Spine and Core Mobility</h2>
                <ul class="exercise-list">
                    <li>
                        <span class="exercise-name">Cat-Cow Stretch</span>
                        <span class="exercise-details">3 x 10 reps</span>
                    </li>
                    <li>
                        <span class="exercise-name">Cobra Pose</span>
                        <span class="exercise-details">3 x 30 sec</span>
                    </li>
                    <li>
                        <span class="exercise-name">Seated Spinal Twist</span>
                        <span class="exercise-details">3 x 30 sec each side</span>
                    </li>
                    <li>
                        <span class="exercise-name">Child's Pose</span>
                        <span class="exercise-details">3 x 45 sec</span>
                    </li>
                </ul>
            </div>

            <!-- Day 5: Dynamic Flexibility -->
            <div class="workout-day">
                <h2>Day 5: Dynamic Flexibility</h2>
                <ul class="exercise-list">
                    <li>
                        <span class="exercise-name">Leg Swings</span>
                        <span class="exercise-details">3 x 15 each leg</span>
                    </li>
                    <li>
                        <span class="exercise-name">Arm Circles</span>
                        <span class="exercise-details">3 x 15 each direction</span>
                    </li>
                    <li>
                        <span class="exercise-name">Walking Lunges</span>
                        <span class="exercise-details">3 x 20 steps</span>
                    </li>
                    <li>
                        <span class="exercise-name">Torso Rotations</span>
                        <span class="exercise-details">3 x 15 each side</span>
                    </li>
                </ul>
            </div>

            <!-- Day 6: Advanced Flexibility -->
            <div class="workout-day">
                <h2>Day 6: Advanced Mobility</h2>
                <ul class="exercise-list">
                    <li>
                        <span class="exercise-name">Advanced Yoga Flow</span>
                        <span class="exercise-details">45 min</span>
                    </li>
                    <li>
                        <span class="exercise-name">Split Progression</span>
                        <span class="exercise-details">3 x 30 sec</span>
                    </li>
                    <li>
                        <span class="exercise-name">Bridge Pose</span>
                        <span class="exercise-details">3 x 30 sec</span>
                    </li>
                    <li>
                        <span class="exercise-name">Advanced Stretching</span>
                        <span class="exercise-details">20 min</span>
                    </li>
                </ul>
            </div>
        </div>

        <div class="guidelines">
            <h3>Flexibility Training Guidelines</h3>
            <ul>
                <li>Always warm up before stretching</li>
                <li>Never stretch to the point of pain</li>
                <li>Breathe deeply and consistently</li>
                <li>Hold stretches for 20-30 seconds</li>
                <li>Stay hydrated</li>
                <li>Be consistent with your practice</li>
                <li>Listen to your body</li>
                <li>Progress gradually</li>
            </ul>
        </div>
    </div>
</body>
</html>
