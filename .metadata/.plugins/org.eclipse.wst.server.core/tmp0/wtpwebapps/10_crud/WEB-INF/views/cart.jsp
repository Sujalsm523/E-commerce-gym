<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Your Cart</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: black;
            color: white;
        }
        .container {
            margin-top: 30px;
        }
        .cart-item {
            margin-bottom: 20px;
            border: 1px solid #ddd;
            padding: 15px;
            border-radius: 5px;
            background-color: white;
            color: black;
        }
        .cart-item strong {
            font-size: 18px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 class="text-center">Your Cart</h1>
        <div id="cart-items" class="mb-4"></div>
        <div id="cart-total" class="mb-4"></div>
        <div class="text-center">
            <button onclick="clearCart()" class="btn btn-danger">Clear Cart</button>
            <button onclick="buyNow()" class="btn btn-success">Buy Now</button>
        </div>
    </div>
    <script>
        function loadCart() {
            const cartItems = JSON.parse(localStorage.getItem('cartItems')) || [];
            const cartItemsContainer = document.getElementById('cart-items');
            const cartTotalContainer = document.getElementById('cart-total');

            cartItemsContainer.innerHTML = '';

            if (cartItems.length === 0) {
                cartItemsContainer.innerHTML = '<p>Your cart is empty</p>';
                cartTotalContainer.innerHTML = '';
            } else {
                let totalPrice = 0;

                cartItems.forEach(item => {
                    const itemTotal = item.price * item.quantity;
                    totalPrice += itemTotal;

                    const itemDiv = document.createElement('div');
                    itemDiv.classList.add('cart-item');
                    itemDiv.innerHTML = `
                        <div>
                            <strong>${item.name}</strong> - 
                            Quantity: ${item.quantity} - 
                            Price: ₹${itemTotal}
                            <button class="btn btn-sm btn-danger" onclick="removeItem('${item.id}')">Remove</button>
                        </div>
                    `;
                    cartItemsContainer.appendChild(itemDiv);
                });

                cartTotalContainer.innerHTML = `<h3>Total: ₹${totalPrice}</h3>`;
            }
        }

        function removeItem(id) {
            let cartItems = JSON.parse(localStorage.getItem('cartItems')) || [];
            cartItems = cartItems.filter(item => item.id !== id);
            localStorage.setItem('cartItems', JSON.stringify(cartItems));
            loadCart();
        }

        function clearCart() {
            localStorage.removeItem('cartItems');
            loadCart();
        }

        function buyNow() {
            const cartItems = JSON.parse(localStorage.getItem('cartItems')) || [];
            if (cartItems.length === 0) {
                alert("Your cart is empty!");
            } else {
                alert("Thank you for your purchase!");
                clearCart();
            }
        }

        window.onload = loadCart;
    </script>
</body>
</html>
