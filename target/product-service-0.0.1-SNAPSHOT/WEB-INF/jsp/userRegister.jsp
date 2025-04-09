<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Registration</title>
    <style>
   /* General Reset */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Arial', sans-serif;
    background-color: #4b0082; /* Purple background */
    color: white;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

.register-container {
    display: flex;
    justify-content: center;
    align-items: center;
    width: 100%;
}

.register-form {
    background: linear-gradient(145deg, #5c2d91, #7b47b7); /* Gradient background for form */
    padding: 2rem 3rem;
    border-radius: 15px;
    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
    width: 100%;
    max-width: 450px;
}

.register-form h1 {
    text-align: center;
    font-size: 2rem;
    margin-bottom: 1.5rem;
}

.input-group {
    margin-bottom: 1.5rem;
}

.input-group label {
    display: block;
    margin-bottom: 0.5rem;
    font-size: 1.1rem;
}

.input-group input {
    width: 100%;
    padding: 0.8rem;
    font-size: 1rem;
    border: 2px solid #ccc;
    border-radius: 5px;
    background-color: #f9f9f9;
    color: #333;
    transition: border-color 0.3s ease;
}

.input-group input:focus {
    border-color: #8a2be2; /* Purple border on focus */
    outline: none;
}

.register-btn {
    width: 100%;
    padding: 1rem;
    background-color: #8a2be2; /* Purple button */
    color: white;
    border: none;
    border-radius: 5px;
    font-size: 1.1rem;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.register-btn:hover {
    background-color: #6a1db4; /* Darker purple on hover */
}

.register-btn:active {
    background-color: #5c1b99; /* Even darker purple on click */
}
   
    </style>
</head>
<body>
    <div class="register-container">
        <div class="register-form">
            <h1>Create Account</h1>
            <form action="saveUser" method="POST">
                 <div class="input-group">
                    <label for="uid">User Id</label>
                    <input type="text" id="uid" name="uid" placeholder="Enter new user id" required>
                </div>
                <div class="input-group">
                    <label for="name">Full Name</label>
                    <input type="text" id="name" name="name" placeholder="Enter your full name" required>
                </div>
                <div class="input-group">
                    <label for="mobile">Mobile Number</label>
                    <input type="tel" id="mobile" name="mobile" placeholder="Enter your mobile number" required>
                </div>
                <div class="input-group">
                    <label for="email">Email Address</label>
                    <input type="email" id="email" name="email" placeholder="Enter your email" required>
                </div>
                <div class="input-group">
                    <label for="username">Username</label>
                    <input type="text" id="username" name="username" placeholder="Choose a username" required>
                </div>
                <div class="input-group">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" placeholder="Choose a password" required>
                </div>
                <button type="submit" class="register-btn">Register</button>
            </form>
        </div>
    </div>
</body>
</html>
