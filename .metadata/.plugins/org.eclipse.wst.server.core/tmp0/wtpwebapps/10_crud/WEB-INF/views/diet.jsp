<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    
    <!-- Font Awesome for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    
    <!-- Animate.css -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
    
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
            margin-bottom: 40px;
            position: relative;
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
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .btn-back:hover {
            background: rgba(0,0,0,0.1);
            transform: translateY(-50%) translateX(-5px);
        }

        .diet-strategy-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 30px;
        }

        .diet-card {
            background: white;
            border-radius: 15px;
            padding: 30px;
            text-align: center;
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.1);
            transition: all var(--transition-speed) ease;
            cursor: pointer;
            border: 2px solid transparent;
            position: relative;
            overflow: hidden;
            transform-style: preserve-3d;
        }

        .diet-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 4px;
            background: linear-gradient(to right, transparent, var(--accent-color));
            transition: all 0.5s ease;
        }

        .diet-card:hover::before {
            left: 0;
        }

        .diet-card:hover {
            transform: translateY(-15px) rotateX(5deg);
            border-color: var(--accent-color);
            box-shadow: 0 20px 50px rgba(0, 0, 0, 0.2);
        }

        .diet-card-icon {
            font-size: 60px;
            color: var(--secondary-color);
            margin-bottom: 20px;
            transition: transform 0.3s ease;
        }

        .diet-card:hover .diet-card-icon {
            transform: scale(1.1) rotate(360deg);
        }

        .diet-card-title {
            font-size: 20px;
            font-weight: 600;
            margin-bottom: 15px;
            color: var(--text-color);
        }

        .diet-card-description {
            color: #6c757d;
            font-size: 14px;
            line-height: 1.6;
        }

        @media (max-width: 768px) {
            .diet-strategy-grid {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>
    <!-- Rest of the existing code remains unchanged -->
     <div class="nutrition-container animate__animated animate__fadeIn">
        <div class="nutrition-header">
            <a href="${pageContext.request.contextPath}/myProfile" class="btn-back">
    <i class="fas fa-arrow-left"></i> Back to Profile
</a>
            
            <h1>Personalized Nutrition Plan</h1>
            <p>Select your ideal diet strategy</p>
        </div>

        <div class="diet-strategy-grid">
            <!-- Weight Loss Card -->
            <div class="diet-card" data-type="weightLoss">
                <div class="diet-card-icon">
                    <i class="fas fa-weight"></i>
                </div>
                <div class="diet-card-title">Weight Loss</div>
                <div class="diet-card-description">
                    Optimize metabolism, create calorie deficit, and achieve sustainable fat loss through strategic nutrition and lifestyle modifications.
                </div>
            </div>

            <!-- Muscle Gain Card -->
            <div class="diet-card" data-type="muscleGain">
                <div class="diet-card-icon">
                    <i class="fas fa-dumbbell"></i>
                </div>
                <div class="diet-card-title">Muscle Gain</div>
                <div class="diet-card-description">
                    Strategic nutrition for muscle hypertrophy, strength development, and optimal protein synthesis with targeted meal planning.
                </div>
            </div>

            <!-- Balanced Diet Card -->
            <div class="diet-card" data-type="balancedDiet">
                <div class="diet-card-icon">
                    <i class="fas fa-balance-scale"></i>
                </div>
                <div class="diet-card-title">Balanced Diet</div>
                <div class="diet-card-description">
                    Comprehensive nutrition plan focusing on whole foods, balanced macronutrients, and overall wellness for sustained health.
                </div>
            </div>
        </div>
    </div>

   <script>
    document.addEventListener('DOMContentLoaded', () => {
        const dietCards = document.querySelectorAll('.diet-card');

        dietCards.forEach(card => {
            card.addEventListener('click', () => {
                const dietType = card.getAttribute('data-type');
                const form = document.createElement('form');
                form.method = 'POST';
                
                switch(dietType) {
                    case 'weightLoss':
                        form.action = 'dietplan';
                        break;
                    case 'muscleGain':
                        form.action = 'Amuscle';
                        break;
                    case 'balancedDiet':
                        form.action = 'Mybalancediet';
                        break;
                    default:
                        form.action = 'default.jsp';
                }

                const input = document.createElement('input');
                input.type = 'hidden';
                input.name = 'dietType';
                input.value = dietType;
                
                form.appendChild(input);
                document.body.appendChild(form);
                form.submit();
            });
        });
    });
</script>
   
</body>
</html>
