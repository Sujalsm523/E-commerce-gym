<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NutriPro | Supplement Purchase</title>
    
    <!-- Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    
    <style>
        :root {
            --primary-color: #007bff;
            --secondary-color: #6c757d;
            --background-color: #f4f4f6;
            --text-color: #333;
        }

        body {
            background: linear-gradient(135deg, var(--background-color) 0%, #e0e4e8 100%);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color: var(--text-color);
            min-height: 100vh;
            display: flex;
            align-items: center;
        }

        .purchase-container {
            background: white;
            border-radius: 15px;
            box-shadow: 0 20px 40px rgba(0,0,0,0.1);
            padding: 40px;
            animation: fadeIn 0.8s ease-in-out;
            width: 100%;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .form-control {
            transition: all 0.3s ease;
            border-radius: 10px;
        }

        .form-control:focus {
            box-shadow: 0 0 0 0.2rem rgba(0,123,255,0.25);
            border-color: var(--primary-color);
        }

        .btn-primary {
            background-color: var(--primary-color);
            border: none;
            transition: all 0.4s ease;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
        }

        .btn-primary:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(0,123,255,0.3);
        }

        .validation-error {
            color: red;
            font-size: 0.8em;
            margin-top: 5px;
            display: none;
        }

        .success-message {
            animation: slideIn 0.5s ease-out;
        }

        @keyframes slideIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>
<body>
    <div class="container py-5">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="purchase-container">
                    <h2 class="text-center mb-4">
                        <i class="fas fa-shopping-cart me-2"></i>Complete Your Purchase
                    </h2>
                    
                    <form id="purchaseForm" action="submitOrder" method="post" novalidate>
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="itemId" class="form-label">Supplement ID</label>
                                <input type="text" class="form-control" id="itemId" name="itemId" required>
                                <div class="validation-error" id="itemIdError">Please enter a valid Supplement ID</div>
                            </div>
                            
                            <div class="col-md-6 mb-3">
                                <label for="itemName" class="form-label">Supplement Name</label>
                                <input type="text" class="form-control" id="itemName" name="itemName" required>
                                <div class="validation-error" id="itemNameError">Please enter the Supplement Name</div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="name" class="form-label">Full Name</label>
                                <input type="text" class="form-control" id="name" name="name" required>
                                <div class="validation-error" id="nameError">Please enter your full name</div>
                            </div>
                            
                            <div class="col-md-6 mb-3">
                                <label for="contact" class="form-label">Contact Number</label>
                                <input type="tel" class="form-control" id="contact" name="contact" required pattern="[0-9]{10}">
                                <div class="validation-error" id="contactError">Please enter a valid 10-digit contact number</div>
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="address" class="form-label">Delivery Address</label>
                            <textarea class="form-control" id="address" name="address" rows="3" required></textarea>
                            <div class="validation-error" id="addressError">Please enter your delivery address</div>
                        </div>

                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="pincode" class="form-label">Pincode</label>
                                <input type="text" class="form-control" id="pincode" name="pincode" required pattern="[0-9]{6}">
                                <div class="validation-error" id="pincodeError">Please enter a valid 6-digit pincode</div>
                            </div>
                        </div>

                        <div class="d-flex justify-content-between mt-4">
                            <button type="button" class="btn btn-secondary" onclick="window.location.href='supplement'">
                                <i class="fas fa-arrow-left me-2"></i>Back to Items
                            </button>
                            <button type="submit" class="btn btn-primary">
                                Complete Purchase <i class="fas fa-check-circle ms-2"></i>
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script>
        document.getElementById('purchaseForm').addEventListener('submit', function (event) {
            let isValid = true;
            const fields = [
                { id: 'itemId', error: 'itemIdError', message: 'Please enter a valid Supplement ID' },
                { id: 'itemName', error: 'itemNameError', message: 'Please enter the Supplement Name' },
                { id: 'name', error: 'nameError', message: 'Please enter your full name' },
                { id: 'contact', error: 'contactError', message: 'Please enter a valid 10-digit contact number', pattern: /^[0-9]{10}$/ },
                { id: 'address', error: 'addressError', message: 'Please enter your delivery address' },
                { id: 'pincode', error: 'pincodeError', message: 'Please enter a valid 6-digit pincode', pattern: /^[0-9]{6}$/ }
            ];

            fields.forEach(field => {
                const input = document.getElementById(field.id);
                const error = document.getElementById(field.error);
                
                if (!input.value.trim() || (field.pattern && !field.pattern.test(input.value))) {
                    error.textContent = field.message;
                    error.style.display = 'block';
                    input.classList.add('is-invalid');
                    isValid = false;
                } else {
                    error.style.display = 'none';
                    input.classList.remove('is-invalid');
                }
            });

            if (!isValid) {
                event.preventDefault();
            } else {
                event.preventDefault();

                const successMessage = document.createElement('div');
                successMessage.className = 'alert alert-success text-center success-message';
                successMessage.innerHTML = `
                    <h3><i class="fas fa-truck me-2"></i>Thank you for your purchase!</h3>
                    <p>Redirecting to items page...</p>
                `;

                const purchaseContainer = document.querySelector('.purchase-container');
                purchaseContainer.innerHTML = '';
                purchaseContainer.appendChild(successMessage);

                setTimeout(() => {
                    window.location.href = 'supplement';
                }, 3000);
            }
        });
    </script>
</body>
</html>
