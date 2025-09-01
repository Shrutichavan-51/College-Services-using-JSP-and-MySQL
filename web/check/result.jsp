<%-- 
    Document   : result
    Created on : 3 May, 2025, 12:36:08 AM
    Author     : swapn

CollegeSearch/
│
├── check.jsp                 (Main search page)
├── result.jsp                (Shows filtered colleges)---------------|
├── collegeDetails.jsp        (Shows full details after clicking)
├── style.css                 (CSS file)
└── WEB-INF/
    └── web.xml               (Servlet mapping)
├── src/
    └── CollegeSearchServlet.java (Search logic)
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<html>
<head>
    <title>Search Results</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<div class="container">
    <h1>College Search Results</h1>

    <%
        List<Map<String, String>> colleges = (List<Map<String, String>>) request.getAttribute("colleges");
        if (colleges == null || colleges.isEmpty()) {
    %>
        <p>No colleges found matching your criteria.</p>
    <%
        } else {
            for (Map<String, String> college : colleges) {
    %>
        <div class="college-card">
            <h2><%= college.get("name") %></h2>
            <p>Course: <%= college.get("course") %></p>
            <p>Fee: ₹<%= college.get("fee") %></p>
            <p><%= college.get("details") %></p>
            <form action="collegeDetails.jsp" method="get">
                <input type="hidden" name="name" value="<%= college.get("name") %>">
                <input type="submit" value="View Details" class="btn">
            </form>
        </div>
    <%
            }
        }
    %>
</div>
</body>
</html>

