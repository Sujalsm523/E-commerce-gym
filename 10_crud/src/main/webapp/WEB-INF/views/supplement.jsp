<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NutriPro Supplements Store</title>
    
    <!-- Favicon -->
    <link rel="icon" href="images/favicon.ico" type="image/x-icon">
    
    <!-- Font Awesome for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    
    <!-- Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <style>
        :root {
            --primary-color: #007bff;
            --secondary-color: #6c757d;
            --dark-bg: #121212;
            --card-bg: #1e1e1e;
            --text-light: #f4f4f4;
        }

        body {
            background: linear-gradient(135deg, var(--dark-bg) 0%, #1a1a2e 100%);
            color: var(--text-light);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .supplements-header {
            background: rgba(0,0,0,0.5);
            padding: 20px 0;
            margin-bottom: 30px;
            border-bottom: 2px solid var(--primary-color);
        }

        .item-card {
            transition: all 0.4s cubic-bezier(0.25, 0.46, 0.45, 0.94);
            border: none;
            background: var(--card-bg);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 15px;
            overflow: hidden;
            position: relative;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        .item-card::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100%;
            height: 4px;
            background: linear-gradient(to right, var(--primary-color), var(--secondary-color));
            transform: scaleX(0);
            transition: transform 0.4s ease-in-out;
        }

        .item-card:hover::after {
            transform: scaleX(1);
        }

        .item-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 12px 16px rgba(0, 0, 0, 0.2);
        }

        .item-card img {
            height: 250px;
            object-fit: cover;
            transition: filter 0.4s ease, transform 0.4s ease;
        }

        .item-card:hover img {
            filter: brightness(110%);
            transform: scale(1.05);
        }

        .product-info {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 15px;
            background: rgba(0,0,0,0.1);
            border-top: 1px solid rgba(255,255,255,0.1);
        }

        .card-title {
            font-weight: 600;
            color: #ffffff;
            margin: 0;
            font-size: 1.1em;
            transition: color 0.3s ease;
        }

        .item-card:hover .card-title {
            color: var(--primary-color);
        }

        .price-tag {
            font-size: 1.2em;
            color: #28a745;
            font-weight: bold;
            margin: 0;
        }

        .btn-supplement {
            background: var(--primary-color);
            border: none;
            transition: all 0.3s ease;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            margin-top: 10px;
        }

        .btn-supplement:hover {
            background: #0056b3;
            transform: translateY(-3px);
        }

        .badge-id {
            position: absolute;
            top: 15px;
            right: 15px;
            background: rgba(0,0,0,0.7);
            color: white;
            padding: 5px 10px;
            border-radius: 20px;
            font-size: 0.8em;
            z-index: 10;
        }

        /* Responsive Adjustments */
        @media (max-width: 768px) {
            .item-card {
                margin-bottom: 20px;
            }
        }
         .btn-back {
            position: absolute;
            left: 20px;
            top: 50%;
            transform: translateY(-50%);
            background: rgba(255,255,255,0.1);
            color: var(--text-light);
            border: 1px solid rgba(255,255,255,0.2);
            padding: 10px 15px;
            border-radius: 8px;
            transition: all 0.3s ease;
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .btn-back:hover {
            background: rgba(255,255,255,0.2);
            color: var(--primary-color);
            transform: translateY(-50%) scale(1.05);
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
        }

        .supplements-header {
            position: relative;
    </style>
</head>
<body>
 

    <div class="container-fluid supplements-header text-center">
        <div class="container">
            <h1 class="display-4">
                <i class="fas fa-dumbbell me-2"></i>NutriPro Supplements
            </h1>
            <p class="lead">Elevate Your Fitness Journey</p>
        </div>
    </div>

    <div class="container">
        <div class="row g-4">
            <% 
            String[][] supplements = {
                {"01", "Protein Powder", "Advanced muscle recovery formula", "images/protein1.jpg", "3999"},
                {"02", "Fish Oil", "Premium Omega-3 supplement", "images/f.jpg", "1499"},
                {"03", "Multivitamins", "Complete daily nutrition", "images/multi.jpg", "999"},
                {"04", "BCAA", "Muscle growth accelerator", "images/bc.jpg", "1299"},
                {"05", "Creatine", "Performance enhancement", "images/creatine.jpg", "989"},
                {"06", "Shilajit", "Natural energy booster", "images/shil.jpg", "599"},
                {"07", "Glutamine", "Recovery and immune support", "images/glut.jpg", "1299"},
                {"08", "ZMA", "Advanced mineral complex", "images/zma.jpg", "499"},
                {"09", "Mass Gainer", "Lean muscle development", "images/ga.jpg", "2999"},
                {"10", "Vitamin Complex", "Comprehensive nutritional support", "images/vitamin.jpg", "899"}
            };

            for (String[] supplement : supplements) {
            %>
            <div class="col-md-3 col-sm-6">
                <div class="item-card h-100">
                    <span class="badge-id"><%= supplement[0] %></span>
                    <img src="<%= supplement[3] %>" class="card-img-top" alt="<%= supplement[1] %>">
                    <div class="card-body text-center">
                        <div class="product-info">
                            <h5 class="card-title"><%= supplement[1] %></h5>
                            <p class="price-tag">₹<%= supplement[4] %></p>
                        </div>
                        <p class="card-text text-muted mt-2"><%= supplement[2] %></p>
                        <button onclick="buySupplement('<%= supplement[0] %>')" 
                                class="btn btn-supplement btn-primary w-100">
                            <i class="fas fa-shopping-cart"></i> Buy Now
                        </button>
                    </div>
                </div>
            </div>
            <% } %>
        </div>
    </div>

    <script>
        function buySupplement(supplementId) {
            try {
                window.location.href = `buy?supplementId=${supplementId}`;
            } catch (error) {
                console.error('Purchase Error:', error);
                alert('Purchase failed. Please try again.');
            }
        }
    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
