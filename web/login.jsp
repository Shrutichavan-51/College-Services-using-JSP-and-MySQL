<%-- 
    Document   : login
    Created on : 17 Apr, 2025, 3:46:57 PM
    Author     : swapn
--%>
<!-- File: login.jsp -->
<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #e8f0fe;
            text-align: center;
            padding-top: 100px;
        }
        .login-box {
            background: white;
            display: inline-block;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px #aaa;
        }
        input[type="text"], input[type="password"] {
            padding: 10px;
            width: 80%;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 25px;
            border-radius: 5px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="login-box">
        <h2>Login</h2>
        <form action="LoginServlet" method="post">
            <input type="text" name="userid" placeholder="User ID" required><br>
            <input type="password" name="password" placeholder="Password" required><br>
            <input type="submit" value="Login">
        </form>
    </div>
</body>
</html>
