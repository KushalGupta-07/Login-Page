<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dynamic Login Portal</title>
<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    min-height: 100vh;
    background: linear-gradient(135deg, #0c0c0c 0%, #1a1a2e 25%, #16213e 50%, #0f3460 75%, #533483 100%);
    background-size: 400% 400%;
    animation: gradientShift 15s ease infinite;
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 20px;
    position: relative;
    overflow: hidden;
}

/* Animated background particles */
body::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: 
        radial-gradient(circle at 20% 20%, rgba(120, 119, 198, 0.3) 0%, transparent 50%),
        radial-gradient(circle at 80% 80%, rgba(255, 119, 198, 0.3) 0%, transparent 50%),
        radial-gradient(circle at 40% 40%, rgba(120, 219, 255, 0.3) 0%, transparent 50%);
    animation: particleFloat 20s ease-in-out infinite;
    pointer-events: none;
}

@keyframes gradientShift {
    0% { background-position: 0% 50%; }
    50% { background-position: 100% 50%; }
    100% { background-position: 0% 50%; }
}

@keyframes particleFloat {
    0%, 100% { transform: translate(0, 0) rotate(0deg); }
    33% { transform: translate(30px, -30px) rotate(120deg); }
    66% { transform: translate(-20px, 20px) rotate(240deg); }
}

.container {
    background: rgba(255, 255, 255, 0.05);
    backdrop-filter: blur(20px);
    border: 1px solid rgba(255, 255, 255, 0.1);
    border-radius: 20px;
    padding: 40px;
    box-shadow: 
        0 25px 50px rgba(0, 0, 0, 0.3),
        inset 0 1px 0 rgba(255, 255, 255, 0.1);
    width: 100%;
    max-width: 400px;
    position: relative;
    overflow: hidden;
    transform: perspective(1000px) rotateX(0deg);
    transition: all 0.3s ease;
}

.container:hover {
    transform: perspective(1000px) rotateX(2deg) translateY(-10px);
    box-shadow: 
        0 35px 70px rgba(0, 0, 0, 0.4),
        inset 0 1px 0 rgba(255, 255, 255, 0.2);
}

.container::before {
    content: '';
    position: absolute;
    top: 0;
    left: -100%;
    width: 100%;
    height: 100%;
    background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.1), transparent);
    animation: shimmer 3s infinite;
}

@keyframes shimmer {
    0% { left: -100%; }
    100% { left: 100%; }
}

h1 {
    text-align: center;
    color: #ffffff;
    margin-bottom: 30px;
    font-size: 2.2em;
    font-weight: 300;
    text-shadow: 0 0 20px rgba(255, 255, 255, 0.3);
    animation: textGlow 2s ease-in-out infinite alternate;
}

@keyframes textGlow {
    from { text-shadow: 0 0 20px rgba(255, 255, 255, 0.3); }
    to { text-shadow: 0 0 30px rgba(120, 119, 198, 0.6), 0 0 40px rgba(120, 119, 198, 0.4); }
}

.form-group {
    margin-bottom: 25px;
    position: relative;
}

label {
    display: block;
    color: rgba(255, 255, 255, 0.8);
    margin-bottom: 8px;
    font-size: 0.9em;
    font-weight: 500;
    text-transform: uppercase;
    letter-spacing: 1px;
}

input[type="text"], input[type="password"] {
    width: 100%;
    padding: 15px 20px;
    background: rgba(255, 255, 255, 0.05);
    border: 2px solid rgba(255, 255, 255, 0.1);
    border-radius: 12px;
    color: #ffffff;
    font-size: 16px;
    transition: all 0.3s ease;
    backdrop-filter: blur(10px);
}

input[type="text"]:focus, input[type="password"]:focus {
    outline: none;
    border-color: #7877c6;
    background: rgba(255, 255, 255, 0.1);
    box-shadow: 
        0 0 20px rgba(120, 119, 198, 0.3),
        inset 0 0 20px rgba(120, 119, 198, 0.1);
    transform: translateY(-2px);
}

input[type="text"]::placeholder, input[type="password"]::placeholder {
    color: rgba(255, 255, 255, 0.5);
}

.btn {
    width: 100%;
    padding: 15px;
    background: linear-gradient(135deg, #7877c6, #ff77c6, #77dbff);
    background-size: 200% 200%;
    border: none;
    border-radius: 12px;
    color: #ffffff;
    font-size: 16px;
    font-weight: 600;
    text-transform: uppercase;
    letter-spacing: 1px;
    cursor: pointer;
    transition: all 0.3s ease;
    position: relative;
    overflow: hidden;
    box-shadow: 0 10px 30px rgba(120, 119, 198, 0.3);
}

.btn:hover {
    background-position: 100% 100%;
    transform: translateY(-3px);
    box-shadow: 0 15px 40px rgba(120, 119, 198, 0.5);
}

.btn:active {
    transform: translateY(-1px);
}

.btn::before {
    content: '';
    position: absolute;
    top: 0;
    left: -100%;
    width: 100%;
    height: 100%;
    background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.2), transparent);
    transition: left 0.5s;
}

.btn:hover::before {
    left: 100%;
}

.divider {
    text-align: center;
    margin: 30px 0;
    position: relative;
    color: rgba(255, 255, 255, 0.6);
}

.divider::before {
    content: '';
    position: absolute;
    top: 50%;
    left: 0;
    right: 0;
    height: 1px;
    background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.3), transparent);
}

.divider span {
    background: rgba(255, 255, 255, 0.05);
    padding: 0 20px;
    backdrop-filter: blur(10px);
    border-radius: 20px;
}

.secondary-btn {
    width: 100%;
    padding: 12px;
    background: rgba(255, 255, 255, 0.05);
    border: 2px solid rgba(255, 255, 255, 0.2);
    border-radius: 12px;
    color: rgba(255, 255, 255, 0.9);
    font-size: 14px;
    font-weight: 500;
    cursor: pointer;
    transition: all 0.3s ease;
    backdrop-filter: blur(10px);
}

.secondary-btn:hover {
    background: rgba(255, 255, 255, 0.1);
    border-color: rgba(255, 255, 255, 0.4);
    transform: translateY(-2px);
    box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
}

.floating-shapes {
    position: absolute;
    width: 100%;
    height: 100%;
    overflow: hidden;
    pointer-events: none;
}

.shape {
    position: absolute;
    opacity: 0.1;
    animation: float 15s infinite linear;
}

.shape:nth-child(1) {
    left: 10%;
    width: 80px;
    height: 80px;
    background: linear-gradient(45deg, #7877c6, #ff77c6);
    border-radius: 50%;
    animation-delay: 0s;
}

.shape:nth-child(2) {
    left: 70%;
    width: 60px;
    height: 60px;
    background: linear-gradient(45deg, #ff77c6, #77dbff);
    border-radius: 50%;
    animation-delay: 5s;
}

.shape:nth-child(3) {
    left: 40%;
    width: 40px;
    height: 40px;
    background: linear-gradient(45deg, #77dbff, #7877c6);
    transform: rotate(45deg);
    animation-delay: 10s;
}

@keyframes float {
    0% {
        transform: translateY(100vh) rotate(0deg);
    }
    100% {
        transform: translateY(-100px) rotate(360deg);
    }
}

@media (max-width: 480px) {
    .container {
        padding: 30px 25px;
        margin: 10px;
    }
    
    h1 {
        font-size: 1.8em;
    }
    
    input[type="text"], input[type="password"], .btn {
        padding: 12px 15px;
    }
}
</style>
</head>
<body>
    <div class="floating-shapes">
        <div class="shape"></div>
        <div class="shape"></div>
        <div class="shape"></div>
    </div>
    
    <div class="container">
        <h1>Welcome Back</h1>
        
        <form action="login" method="post">
            <div class="form-group">
                <label for="uname">Username</label>
                <input type="text" id="uname" name="uname" placeholder="Enter your username" required>
            </div>
            
            <div class="form-group">
                <label for="pass">Password</label>
                <input type="password" id="pass" name="pass" placeholder="Enter your password" required>
            </div>
            
            <button type="submit" class="btn">Sign In</button>
        </form>
        
        <div class="divider">
            <span>OR</span>
        </div>
        
        <form action="Signin" method="post">
            <button type="submit" class="secondary-btn">Create New Account</button>
        </form>
    </div>
</body>
</html>