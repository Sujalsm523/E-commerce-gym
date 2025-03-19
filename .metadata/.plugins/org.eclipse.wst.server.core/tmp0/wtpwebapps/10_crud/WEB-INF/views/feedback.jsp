<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fitness Feedback</title>
    
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

        .feedback-container {
            max-width: 800px;
            margin: 50px auto;
            background: white;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 20px 50px rgba(0,0,0,0.1);
        }

        .feedback-header {
            text-align: center;
            margin-bottom: 30px;
        }

        .feedback-header h1 {
            color: var(--secondary-color);
            font-size: 2.5rem;
        }

        .feedback-form {
            display: grid;
            gap: 20px;
        }

        .form-group {
            display: flex;
            flex-direction: column;
        }

        .form-group label {
            margin-bottom: 10px;
            color: var(--primary-color);
            font-weight: 600;
        }

        .form-control {
            padding: 12px;
            border: 1px solid #ddd;
            border-radius: 8px;
            transition: all 0.3s ease;
        }

        .form-control:focus {
            outline: none;
            border-color: var(--secondary-color);
            box-shadow: 0 0 0 3px rgba(52, 152, 219, 0.1);
        }

        .submit-btn {
            background-color: var(--secondary-color);
            color: white;
            border: none;
            padding: 15px;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .submit-btn:hover {
            background-color: var(--primary-color);
        }

        @media (max-width: 600px) {
            .feedback-container {
                padding: 20px;
                margin: 20px auto;
            }
        }
    </style>
</head>
<body>
    <div class="feedback-container">
        <div class="feedback-header">
            <h1>Fitness Journey Feedback</h1>
            <p>Share your experience and help us improve</p>
        </div>

        <form class="feedback-form" action="/submit-feedback" method="POST">
            <!-- Personal Details -->
            <div class="form-group">
                <label>Your Name</label>
                <input 
                    type="text" 
                    class="form-control" 
                    name="name" 
                    placeholder="Enter your full name"
                    required
                >
            </div>

            <div class="form-group">
                <label>Email Address</label>
                <input 
                    type="email" 
                    class="form-control" 
                    name="email" 
                    placeholder="Enter your email address"
                    required
                >
            </div>

            <div class="form-group">
                <label>Contact Number</label>
                <input 
                    type="tel" 
                    class="form-control" 
                    name="contact" 
                    placeholder="Enter your contact number"
                    required
                >
            </div>

            <!-- Detailed Feedback -->
            <div class="form-group">
                <label>Detailed Feedback</label>
                <textarea 
                    class="form-control" 
                    name="detailed_feedback" 
                    rows="6" 
                    placeholder="Share your thoughts, suggestions, and experiences..."
                    required
                ></textarea>
            </div>

            <!-- Submit Button -->
            <button type="submit" class="submit-btn">
                Submit Feedback
            </button>
        </form>
    </div>
</body>
</html>
