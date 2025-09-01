<%-- 
    Document   : index
    Created on : 16 Apr, 2025, 1:50:10 AM
    Author     : swapn
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>College Services</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;700&display=swap" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
            box-sizing: border-box;
        }

        body {
            background: url('https://images.unsplash.com/photo-1571260899304-425eee4c7efc?ixlib=rb-4.0.3&auto=format&fit=crop&w=1470&q=80') no-repeat center center fixed;
            background-size: cover;
            color: #fff;
            min-height: 100vh;
        }

        header {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            padding: 20px 0;
            box-shadow: 0 4px 8px rgba(0,0,0,0.3);
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        nav {
            width: 85%;
            margin: auto;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        nav h1 {
            font-size: 32px;
            font-weight: 700;
            color: #fff;
        }

        .nav-links a {
            color: #fff;
            text-decoration: none;
            margin: 0 20px;
            font-size: 18px;
            font-weight: 500;
            position: relative;
            transition: 0.3s;
        }

        .nav-links a::after {
            content: '';
            width: 0%;
            height: 3px;
            background: #fff;
            position: absolute;
            left: 0;
            bottom: -5px;
            transition: 0.4s;
        }

        .nav-links a:hover::after {
            width: 100%;
        }

        .hero {
            height: 90vh;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            padding: 0 20px;
            background: rgba(0, 0, 0, 0.4);
        }

        .hero-content {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(5px);
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
            max-width: 800px;
        }

        .hero-content h2 {
            font-size: 48px;
            margin-bottom: 20px;
            font-weight: 700;
        }

        .hero-content p {
            font-size: 20px;
            margin-bottom: 30px;
            color: #f1f1f1;
        }

        .hero-content .btn {
            padding: 12px 25px;
            font-size: 18px;
            font-weight: 500;
            border: none;
            background: #00d2ff;
            color: #fff;
            border-radius: 30px;
            cursor: pointer;
            transition: 0.4s;
            text-decoration: none;
        }

        .hero-content .btn:hover {
            background: #3a7bd5;
            transform: scale(1.05);
        }

        footer {
            background: rgba(0, 0, 0, 0.6);
            text-align: center;
            padding: 15px;
            font-size: 14px;
            color: #ccc;
        }

        @media (max-width: 768px) {
            nav {
                flex-direction: column;
            }

            .nav-links {
                margin-top: 10px;
            }

            .hero-content h2 {
                font-size: 32px;
            }

            .hero-content p {
                font-size: 16px;
            }
        }
    </style>
</head>
<body>

<header>
    <nav>
        <h1>College Services</h1>
        <div class="nav-links">
            <a href="home.jsp">Home</a>
            <a href="services.jsp">Services</a>
            <a href="check.jsp">Check</a>
            <a href="enquire.jsp">Enquire</a>
        </div>
    </nav>
</header>

<section class="hero">
    <div class="hero-content">
        <h2>Discover Top Private Engineering Colleges</h2>
        <p>Search by course, location, fees, hostel, and preferences. Get detailed info, compare, and connect directly with your dream colleges.</p>
        <a href="home.jsp" class="btn">Get Started</a>
    </div>
</section>

<footer>
    © 2025 College Finder | Designed by Shruti | All rights reserved
</footer>

</body>
</html>

/**
*add 16/04/2025
*/
