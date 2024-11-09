<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="styles.css">
    <script src="scripts.js"></script>
</head>
<body onload="showPopup()">
    <div class="content">
        <!-- Your main page content here -->
    </div>

    <!-- Popup modal -->
    <div id="paymentSuccessModal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closePopup()">&times;</span>
            <h1>Payment Successful</h1>
            <p>Thank you for your purchase, <c:out value="" />!</p>
            <p>Total Amount Payble: <c:out value="{totalAmount}" /></p>
            <a href="home.jsp">Return to Home</a>
        </div>
    </div>
    </body>
</body>
</html>