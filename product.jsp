<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Project </title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Link to external CSS -->
    <link rel="stylesheet" href="styles.css">
</head>
<body>

<div class="container">
    <div class="contact-form">
        <h2 class="form-title">Add Product </h2>
        <form id="contactForm">
            <div class="mb-3">
            <form action="Product" method="post">
                 <img style="height: 100%; src="images/Lead Generation Landing page (Images)/pexels-brett-sayles-2881232.svg" class="img-fluid rounded-start" alt="Client Photo" id="clientPhoto">
            </div>
            <div class="mb-3">
                <label for="id" class="form-label" name="id">Name</label>
                <input type="id" class="form-control" id="name" placeholder="Enter your id" required>
            </div>
            
            <div class="mb-3">
                <label for="name" class="form-label" name="name">Name</label>
                <input type="name" class="form-control" id="name" placeholder="Enter your name" required>
            </div>
            <div class="mb-3">
                <label for="price" class="form-label" name="price">Designation</label>
                <input type="tel" class="form-control" id="peice" placeholder="Enter your price"  required>
            </div>
            <div class="mb-3">
                <label for="image" class="form-label" name="image">Designation</label>
                <input type="tel" class="form-control" id="peice" placeholder="Enter image"  required>
            </div>
           
            <button type="submit" class="btn btn-primary w-100">Add</button>
        </form>
    </div>
</div>

<!-- Bootstrap JS and Popper.js -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<!-- Link to external JavaScript -->
<script src="script.js"></script>

</body>
</htmjl>
jsp