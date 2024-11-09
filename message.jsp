<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Message</title>
</head>
<body>

<%
	String status = (String)request.getAttribute("status");
	String message = (String)request.getAttribute("message");
	String redirectUrl = (String)request.getAttribute("redirectUrl");
	%>

	<h1><%=status%></h1>
	<p><%=message%></p>
	<a href="<%=redirectUrl%>">Click Here To Redirect</a>
</body>
</html>