<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Supplement</title>
</head>
<body>
    <h2>Add Supplement</h2>
    <form action="<%= request.getContextPath() %>/addSupplement" method="post">
        <label for="name">Supplement Name:</label>
        <input type="text" id="name" name="name" required><br><br>

        <label for="description">Description:</label>
        <textarea id="description" name="description" required></textarea><br><br>

        <label for="price">Price:</label>
        <input type="number" id="price" name="price" required><br><br>

        <label for="stockQuantity">Stock Quantity:</label>
        <input type="number" id="stockQuantity" name="stockQuantity" required><br><br>

        <label for="imageUrl">Image URL:</label>
        <input type="text" id="imageUrl" name="imageUrl" required><br><br>

        <button type="submit">Add Supplement</button>
    </form>
</body>
</html>
