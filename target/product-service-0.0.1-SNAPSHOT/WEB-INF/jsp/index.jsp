<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
    <style type="text/css">
    /* General Reset */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Arial', sans-serif;
    background-color: #4b0082; /* Dark purple background */
    color: white;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

.container {
    text-align: center;
    padding: 2rem;
    border-radius: 12px;
    background: linear-gradient(145deg, #5c2d91, #7b47b7);
    box-shadow: 0 10px 15px rgba(0, 0, 0, 0.2);
}

.content h1 {
    font-size: 3rem;
    margin-bottom: 1rem;
}

.content p {
    font-size: 1.2rem;
    margin-bottom: 2rem;
}

.button-group {
    display: flex;
    justify-content: center;
    gap: 1.5rem;
}

.btn {
    text-decoration: none;
    font-size: 1.2rem;
    padding: 0.8rem 2rem;
    border-radius: 25px;
    border: 2px solid white;
    transition: background-color 0.3s ease, color 0.3s ease;
}

/* Login Button Style */
.btn.login {
    background-color: #8a2be2;
    color: white;
}

.btn.login:hover {
    background-color: white;
    color: #8a2be2;
}

/* Register Button Style */
.btn.register {
    background-color: transparent;
    color: white;
}

.btn.register:hover {
    background-color: white;
    color: #8a2be2;
}
    </style>
</head>
<body>
    <div class="container">
        <div class="content">
            <h1>Welcome to Complete Java Classes Pune</h1>
            <p>Join us and experience the best!</p>
            <div class="button-group">
                <a href="logPage" class="btn login">Login</a>
                <a href="userRegPage" class="btn register">Register</a>
            </div>
        </div>
    </div>
</body>
</html>
