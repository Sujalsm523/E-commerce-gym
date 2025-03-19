<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Professional Workout Strategy</title>
    
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
    transition: all 0.3s ease;
}

body {
    font-family: 'Poppins', sans-serif;
    background: linear-gradient(135deg, var(--background-color) 0%, #ffffff 100%);
    color: var(--text-color);
    line-height: 1.6;
    perspective: 1000px;
}

.workout-container {
    max-width: 1200px;
    margin: 40px auto;
    padding: 30px;
    background: white;
    border-radius: 15px;
    box-shadow: 0 20px 50px rgba(0,0,0,0.1);
    transform-style: preserve-3d;
}

.workout-header {
    text-align: center;
    margin-bottom: 40px;
    position: relative;
    transform: translateZ(50px);
}

.workout-header h1 {
    color: var(--accent-color);
    font-size: 2.5rem;
    font-weight: 600;
    position: relative;
    display: inline-block;
}

.workout-header h1::after {
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

.workout-header:hover h1::after {
    transform: scaleX(1);
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
    transition: all 0.3s ease;
}

.btn-back:hover {
    background: rgba(0,0,0,0.1);
    transform: translateY(-50%) translateX(-5px);
}

.workout-strategy-grid {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 30px;
    transform-style: preserve-3d;
}

.workout-card {
    background: white;
    border-radius: 15px;
    padding: 30px;
    text-align: center;
    box-shadow: 0 15px 40px rgba(0, 0, 0, 0.1);
    transition: all 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.275);
    cursor: pointer;
    transform-style: preserve-3d;
    position: relative;
    overflow: hidden;
}

.workout-card::before {
    content: '';
    position: absolute;
    top: 0;
    left: -100%;
    width: 100%;
    height: 4px;
    background: linear-gradient(to right, transparent, var(--accent-color));
    transition: all 0.5s ease;
}

.workout-card:hover::before {
    left: 0;
}

.workout-card:hover {
    transform: translateY(-15px) scale(1.05);
    box-shadow: 0 20px 50px rgba(0, 0, 0, 0.2);
}

.workout-card-icon {
    font-size: 60px;
    color: var(--secondary-color);
    margin-bottom: 20px;
    transition: all 0.4s cubic-bezier(0.68, -0.55, 0.265, 1.55);
}

.workout-card:hover .workout-card-icon {
    transform: translateY(-10px) scale(1.1);
    color: var(--accent-color);
}

.workout-card-title {
    font-size: 20px;
    font-weight: 600;
    margin-bottom: 15px;
    color: var(--text-color);
    transition: color 0.3s ease;
}

.workout-card:hover .workout-card-title {
    color: var(--secondary-color);
}

.workout-card-description {
    color: #6c757d;
    font-size: 14px;
    line-height: 1.6;
    transition: color 0.3s ease;
}

.workout-card:hover .workout-card-description {
    color: var(--primary-color);
}

@media (max-width: 768px) {
    .workout-strategy-grid {
        grid-template-columns: 1fr;
    }
}

/* Additional Subtle Animations */
@keyframes subtleFloat {
    0% {
        transform: translateY(0);
    }
    50% {
        transform: translateY(-5px);
    }
    100% {
        transform: translateY(0);
    }
}

.workout-card {
    animation: subtleFloat 4s ease-in-out infinite;
}
      
    </style>
</head>
<body>
    <div class="workout-container animate__animated animate__fadeIn">
        <div class="workout-header">
            <a href="${pageContext.request.contextPath}/myProfile" class="btn-back">
                <i class="fas fa-arrow-left"></i> Back to Profile
            </a>
            <h1>Professional Workout Strategy</h1>
            <p>Select your personalized fitness approach</p>
        </div>

        <div class="workout-strategy-grid">
            <!-- Strength Training Card -->
            <form action="${pageContext.request.contextPath}/strength" method="POST">
                <div class="workout-card animate__animated animate__zoomIn" onclick="this.closest('form').submit()">
                    <div class="workout-card-icon">
                        <i class="fas fa-dumbbell"></i>
                    </div>
                    <div class="workout-card-title">Strength Training</div>
                    <div class="workout-card-description">
                        Develop muscle strength, enhance power, and improve overall body composition through targeted resistance exercises.
                    </div>
                    <input type="hidden" name="workoutType" value="strengthTraining">
                </div>
            </form>

            <!-- Weight Loss Card -->
            <form action="${pageContext.request.contextPath}/weightloss" method="POST">
                <div class="workout-card animate__animated animate__zoomIn" onclick="this.closest('form').submit()">
                    <div class="workout-card-icon">
                        <i class="fas fa-weight"></i>
                    </div>
                    <div class="workout-card-title">Weight Loss Training</div>
                    <div class="workout-card-description">
                        Optimize metabolism, burn calories, and achieve sustainable fat loss through high-intensity and strategic workouts.
                    </div>
                    <input type="hidden" name="workoutType" value="weightLoss">
                </div>
            </form>

            <!-- Flexibility Card -->
            <form action="${pageContext.request.contextPath}/flex" method="POST">
                <div class="workout-card animate__animated animate__zoomIn" onclick="this.closest('form').submit()">
                    <div class="workout-card-icon">
                        <i class="fas fa-wind"></i>
                    </div>
                    <div class="workout-card-title">Flexibility Traning</div>
                    <div class="workout-card-description">
                        Improve mobility, reduce injury risk, and enhance overall physical performance through comprehensive stretching routines.
                    </div>
                    <input type="hidden" name="workoutType" value="flexibility">
                </div>
            </form>
        </div>
    </div>
</body>
</html>
