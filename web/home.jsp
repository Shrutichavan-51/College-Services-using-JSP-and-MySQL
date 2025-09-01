<%-- 
    Document   : home
    Created on : 16 Apr, 2025, 1:51:15 AM
    Author     : swapn
--%>

<<%-- 
    Document   : home
    Created on : 14 Apr, 2025, 7:39:37 AM
    Author     : swapn
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Home - College Finder</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            margin: 0;
            font-family: 'Poppins', sans-serif;
            background: #f2f7fa;
        }

  header {
    background: linear-gradient(90deg, #43cea2, #185a9d); /* vibrant + classy */
    color: white;
    padding: 30px 20px;
    position: relative;
    box-shadow: 0 2px 8px rgba(0,0,0,0.2);
    transition: background 0.4s ease-in-out;
}



        header h1 {
            margin: 0;
            font-size: 28px;
            text-align: center;
        }

        .auth-buttons {
            position: absolute;
            top: 25px;
            right: 30px;
        }

        .auth-buttons a {
            color: white;
            text-decoration: none;
            margin-left: 20px;
            font-weight: 600;
            font-size: 16px;
            transition: color 0.3s ease;
        }

        .auth-buttons a:hover {
            color: #ffdd57;
        }

        .college-section {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 50px 80px;
            background: white;
            border-radius: 16px;
            margin: 40px auto;
            width: 85%;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.05);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .college-section:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.08);
        }

        .college-section:nth-child(even) {
            flex-direction: row-reverse;
        }

        .college-section img {
            width: 420px;
            height: 260px;
            object-fit: cover;
            border-radius: 14px;
            box-shadow: 0 4px 20px rgba(0,0,0,0.15);
        }

        .college-info {
            flex: 1;
            padding: 0 40px;
        }

        .college-info h2 {
            color: #003366;
            font-size: 24px;
            margin-bottom: 12px;
        }

        .college-info p {
            color: #555;
            font-size: 16px;
            line-height: 1.7;
        }

        .form-popup {
            display: none;
            position: fixed;
            top: 10%;
            left: 50%;
            transform: translateX(-50%);
            background-color: white;
            border-radius: 12px;
            width: 400px;
            z-index: 10001;
            padding: 30px;
            box-shadow: 0 8px 30px rgba(0,0,0,0.25);
        }

        .form-popup h3 {
            text-align: center;
            margin-top: 0;
            color: #203a43;
        }

        .form-popup input,
        .form-popup select {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 15px;
        }

        .form-popup button {
            width: 100%;
            padding: 12px;
            background: linear-gradient(135deg, #00b4db, #0083b0);
            color: white;
            border: none;
            margin-top: 15px;
            cursor: pointer;
            font-weight: 600;
            font-size: 16px;
            border-radius: 6px;
            transition: background 0.3s ease;
        }

        .form-popup button:hover {
            background: linear-gradient(135deg, #0083b0, #005f73);
        }

        .close-btn {
            text-align: right;
            cursor: pointer;
            font-weight: bold;
            font-size: 18px;
            color: #888;
        }

        #overlay {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            height: 100%;
            width: 100%;
            backdrop-filter: blur(6px);
            background-color: rgba(0, 0, 0, 0.4);
            z-index: 10000;
        }
    </style>

    <script>
        function showForm(formId) {
            document.getElementById('overlay').style.display = 'block';
            document.getElementById(formId).style.display = 'block';
        }

        function closeForm(formId) {
            document.getElementById('overlay').style.display = 'none';
            document.getElementById(formId).style.display = 'none';
        }
    </script>
</head>

<body>

<header>
    <h1>Welcome to College Finder - Explore India's Top Engineering Colleges</h1>
    <div class="auth-buttons">
        <a href="javascript:void(0);" onclick="showForm('loginForm')">Login</a>
        <a href="javascript:void(0);" onclick="showForm('signupForm')">Sign Up</a>
    </div>
</header>

<!-- College Sections -->
<div class="college-section">
    <img src="images/IIT-Mombay.jpg" alt="IIT Bombay" />
    <div class="college-info">
        <h2>IIT Bombay</h2>
        <p>IIT Bombay stands as one of the top institutes in India, renowned for its academic excellence and world-class research facilities. Known for its rigorous programs and elite placements.</p>
    </div>
</div>

<div class="college-section">
    <img src="images/VIT Vellore.jpg" alt="VIT Vellore" />
    <div class="college-info">
        <h2>VIT Vellore</h2>
        <p>VIT is one of India’s premier private engineering institutions. With strong industry links, excellent infrastructure, and a diverse student body, it provides a global learning environment.</p>
    </div>
</div>

<div class="college-section">
    <img src="images/BITS Pilani.jpg" alt="BITS Pilani" />
    <div class="college-info">
        <h2>BITS Pilani</h2>
        <p>BITS Pilani offers top-notch engineering courses, innovation-driven research, and a flexible academic structure. Its alumni are leaders in tech, entrepreneurship, and research across the world.</p>
    </div>
</div>

<div class="college-section">
    <img src="images/NIT Trichy.jpg" alt="NIT Trichy" />
    <div class="college-info">
        <h2>NIT Trichy</h2>
        <p>NIT Trichy consistently ranks among the top NITs. It offers robust academic programs, a vibrant campus life, and strong placement opportunities in both core and tech sectors.</p>
    </div>
</div>

<!-- Overlay -->
<div id="overlay" onclick="closeForm('loginForm'); closeForm('signupForm');"></div>

<!-- Login Form -->
<div id="loginForm" class="form-popup">
    <div class="close-btn" onclick="closeForm('loginForm')">✖</div>
    <h3>Login</h3>
    <form method="post" action="LoginServlet">
        <input type="text" name="username" placeholder="Username" required/>
        <input type="password" name="password" placeholder="Password" required/>
        <button type="submit">Login</button>
    </form>
</div>

<!-- Signup Form -->
<div id="signupForm" class="form-popup">
    <div class="close-btn" onclick="closeForm('signupForm')">✖</div>
    <h3>Sign Up</h3>
    <form method="post" action="SignupServlet">
        <input type="text" name="name" placeholder="Full Name" required/>
        <input type="text" name="userid" placeholder="User ID" required/>
        <input type="number" name="contact" placeholder="Contact Number" required/>
        <input type="text" name="state" placeholder="State" required/>
        <select name="gender" required>
            <option value="">Select Gender</option>
            <option value="Male">Male</option>
            <option value="Female">Female</option>
        </select>
        <input type="email" name="email" placeholder="Email" required/>
        <input type="password" name="password" placeholder="Password" required/>
        <button type="submit">Sign Up</button>
    </form>
</div>

</body>
</html>

