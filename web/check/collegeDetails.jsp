<%-- 
    Document   : collegeDetails
    Created on : 3 May, 2025, 12:40:14 AM
    Author     : swapn
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>College Details</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<div class="container">
    <h1>College Details</h1>
    <p>College Name: <%= request.getParameter("name") %></p>
    <p>More details can be loaded dynamically from DB or shown statically here.</p>
    <a href="check.jsp" class="btn">Back to Search</a>
</div>
</body>
</html>

