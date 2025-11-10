<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Successful</title>

<style>
    body {
        font-family: "Segoe UI", Arial, sans-serif;
        background: linear-gradient(to bottom right, #dfe7f2, #b9c7d6);
        text-align: center;
        margin: 0;
        padding-top: 80px;
        animation: fadeIn 1s ease-in-out;
    }

    .success-box {
        background-color: #ffffff;
        color: #155724;
        border-left: 6px solid #28a745;
        border-radius: 12px;
        padding: 40px 50px;
        display: inline-block;
        width: 420px;
        box-shadow: 0 8px 28px rgba(0,0,0,0.15);
        animation: slideUp 1s ease;
    }

    /* Success Icon */
    .success-icon {
        width: 70px;
        height: 70px;
        margin-bottom: 15px;
        stroke: #28a745;
        animation: popIn 0.7s ease;
    }

    h2 {
        font-size: 28px;
        margin-bottom: 10px;
        color: #28a745;
        font-weight: bold;
    }

    p {
        font-size: 16px;
        color: #444;
        margin-bottom: 20px;
    }

    a {
        display: inline-flex;
        align-items: center;
        gap: 8px;
        text-decoration: none;
        background-color: #1e88e5;
        color: white;
        padding: 12px 22px;
        border-radius: 8px;
        font-weight: bold;
        transition: 0.3s;
        box-shadow: 0 4px 10px rgba(30,136,229,0.4);
    }

    a:hover {
        background-color: #1565c0;
        transform: translateY(-3px);
        box-shadow: 0 6px 14px rgba(21,101,192,0.45);
    }

    /* Animations */
    @keyframes fadeIn {
        from { opacity: 0; }
        to { opacity: 1; }
    }

    @keyframes slideUp {
        from { transform: translateY(60px); opacity: 0; }
        to { transform: translateY(0); opacity: 1; }
    }

    @keyframes popIn {
        0% { transform: scale(0.4); opacity: 0; }
        80% { transform: scale(1.1); opacity: 1; }
        100% { transform: scale(1); }
    }
</style>

</head>
<body>

<div class="success-box">

    <!-- Success Icon -->
    <svg class="success-icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
        <circle cx="12" cy="12" r="10"></circle>
        <path d="M8 12l3 3 5-6"></path>
    </svg>

    <h2>Registration Successful!</h2>
    <p>Your account has been created successfully.</p>

    <a href="login.jsp">
        <svg width="20" height="20" fill="none" stroke="white" stroke-width="2" viewBox="0 0 24 24">
            <path d="M15 3h4v18h-4"></path>
            <path d="M10 17l5-5-5-5"></path>
        </svg>
        Click here to Login
    </a>

</div>

</body>
</html>
