<%-- 
    Document   : check
    Created on : 3 May, 2025, 12:42:19 AM
    Author     : swapn

    http://localhost:8080/College-Services/check/check.jsp = run
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Private Engineering College Search</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f3f7f9;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 500px;
            margin: 50px auto;
            background-color: white;
            padding: 30px 40px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #2c3e50;
        }

        p {
            text-align: center;
            font-size: 14px;
            color: #7f8c8d;
            margin-bottom: 30px;
        }

        label {
            display: block;
            margin-top: 15px;
            font-weight: bold;
            color: #34495e;
        }

        input[type="text"],
        input[type="number"],
        select {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        input[type="checkbox"] {
            margin-right: 10px;
        }

        .btn {
            display: inline-block;
            width: 100%;
            padding: 12px;
            margin-top: 20px;
            background-color: #2980b9;
            border: none;
            border-radius: 5px;
            color: white;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #1c5980;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Private Engineering College Search</h1>
    <p>Find exactly what you want — Fast, Smart, Personalized</p>
    <form action="CollegeSearchServlet" method="post">
        <label>Course:</label>
        <input type="text" name="course" placeholder="e.g., BTech Computer Science" required><br>

        <label>State:</label>
        <input type="text" name="state" placeholder="e.g., Maharashtra" required><br>

        <label>Budget:</label>
        <input type="number" name="budget" placeholder="e.g., 150000"><br>

        <label>Gender Preference:</label>
        <select name="gender">
            <option>Any</option>
            <option>Male</option>
            <option>Female</option>
        </select><br>

        <label>
            <input type="checkbox" name="hostel" value="Yes"> Hostel Required
        </label><br>

        <input type="submit" value="Search" class="btn">
    </form>
</div>
</body>
</html>
