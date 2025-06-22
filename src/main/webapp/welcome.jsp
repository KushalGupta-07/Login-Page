<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
/* Modern Dark Theme with Gradients and Animations */

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background: linear-gradient(135deg, #0c0c0c 0%, #1a1a2e 25%, #16213e 50%, #0f3460 75%, #533483 100%);
    background-size: 400% 400%;
    animation: gradientShift 15s ease infinite;
    min-height: 100vh;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    color: #ffffff;
    position: relative;
    overflow-x: hidden;
}

/* Animated Background Gradient */
@keyframes gradientShift {
    0% { background-position: 0% 50%; }
    50% { background-position: 100% 50%; }
    100% { background-position: 0% 50%; }
}

/* Floating Particles Background Effect */
body::before {
    content: '';
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-image: 
        radial-gradient(circle at 20% 80%, rgba(120, 119, 198, 0.3) 0%, transparent 50%),
        radial-gradient(circle at 80% 20%, rgba(255, 119, 198, 0.3) 0%, transparent 50%),
        radial-gradient(circle at 40% 40%, rgba(120, 219, 255, 0.2) 0%, transparent 50%);
    animation: floatingParticles 20s ease-in-out infinite;
    z-index: -1;
}

@keyframes floatingParticles {
    0%, 100% { transform: translateY(0px) rotate(0deg); }
    50% { transform: translateY(-20px) rotate(180deg); }
}

/* Welcome Header Styling */
h2 {
    font-size: 3rem;
    font-weight: 700;
    background: linear-gradient(45deg, #ff6b6b, #4ecdc4, #45b7d1, #96ceb4, #feca57);
    background-size: 300% 300%;
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
    animation: textGradient 8s ease infinite, fadeInUp 1s ease-out, textGlow 3s ease-in-out infinite alternate;
    text-align: center;
    margin-bottom: 2rem;
    text-shadow: 0 0 30px rgba(255, 255, 255, 0.1);
    position: relative;
}

@keyframes textGradient {
    0% { background-position: 0% 50%; }
    50% { background-position: 100% 50%; }
    100% { background-position: 0% 50%; }
}

@keyframes textGlow {
    from { filter: drop-shadow(0 0 10px rgba(255, 107, 107, 0.5)); }
    to { filter: drop-shadow(0 0 20px rgba(78, 205, 196, 0.8)); }
}

@keyframes fadeInUp {
    from {
        opacity: 0;
        transform: translateY(30px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}

/* Navigation Links */
a {
    display: inline-block;
    color: #ffffff;
    text-decoration: none;
    font-size: 1.2rem;
    font-weight: 500;
    padding: 15px 30px;
    margin: 10px;
    background: linear-gradient(45deg, rgba(255, 255, 255, 0.1), rgba(255, 255, 255, 0.05));
    border: 2px solid transparent;
    border-radius: 50px;
    position: relative;
    overflow: hidden;
    transition: all 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.275);
    backdrop-filter: blur(10px);
    box-shadow: 0 8px 32px rgba(0, 0, 0, 0.3);
}

a::before {
    content: '';
    position: absolute;
    top: 0;
    left: -100%;
    width: 100%;
    height: 100%;
    background: linear-gradient(45deg, #ff6b6b, #4ecdc4, #45b7d1);
    transition: left 0.5s ease;
    z-index: -1;
}

a:hover {
    transform: translateY(-5px) scale(1.05);
    box-shadow: 0 15px 40px rgba(0, 0, 0, 0.4);
    border-color: rgba(255, 255, 255, 0.3);
}

a:hover::before {
    left: 0;
}

/* Form Styling */
form {
    margin-top: 2rem;
    animation: fadeInUp 1s ease-out 0.5s both;
}

/* Button Styling */
input[type="submit"] {
    background: linear-gradient(45deg, #e74c3c, #c0392b);
    color: white;
    border: none;
    padding: 15px 35px;
    font-size: 1.1rem;
    font-weight: 600;
    border-radius: 50px;
    cursor: pointer;
    transition: all 0.3s ease;
    box-shadow: 0 8px 25px rgba(231, 76, 60, 0.3);
    position: relative;
    overflow: hidden;
    text-transform: uppercase;
    letter-spacing: 1px;
}

input[type="submit"]::before {
    content: '';
    position: absolute;
    top: 0;
    left: -100%;
    width: 100%;
    height: 100%;
    background: linear-gradient(45deg, #c0392b, #e74c3c, #ff6b6b);
    transition: left 0.5s ease;
    z-index: -1;
}

input[type="submit"]:hover {
    transform: translateY(-3px);
    box-shadow: 0 15px 35px rgba(231, 76, 60, 0.4);
}

input[type="submit"]:hover::before {
    left: 0;
}

input[type="submit"]:active {
    transform: translateY(-1px);
    box-shadow: 0 10px 25px rgba(231, 76, 60, 0.3);
}

/* Container for better organization */
.container {
    text-align: center;
    padding: 2rem;
    background: rgba(255, 255, 255, 0.05);
    border-radius: 20px;
    backdrop-filter: blur(15px);
    border: 1px solid rgba(255, 255, 255, 0.1);
    box-shadow: 0 25px 50px rgba(0, 0, 0, 0.2);
    animation: containerFloat 6s ease-in-out infinite;
    max-width: 500px;
    margin: 2rem;
}

@keyframes containerFloat {
    0%, 100% { transform: translateY(0px); }
    50% { transform: translateY(-10px); }
}

/* Responsive Design */
@media (max-width: 768px) {
    h2 {
        font-size: 2rem;
    }
    
    a, input[type="submit"] {
        font-size: 1rem;
        padding: 12px 25px;
    }
    
    .container {
        margin: 1rem;
        padding: 1.5rem;
    }
}

@media (max-width: 480px) {
    h2 {
        font-size: 1.5rem;
    }
    
    a, input[type="submit"] {
        font-size: 0.9rem;
        padding: 10px 20px;
    }
}
</style>
<body>

		<%
		
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		
		if(session.getAttribute("username")==null){
			response.sendRedirect("login.jsp");
		}
		%>
        <h2>Welcome, ${username}</h2>
        <a href="aboutus.jsp">About us</a>
        <form action="Logout" method="post">
        	<input type="submit" value="Logout">
        </form>
</body>
</html>