<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Logout</title>

<style>
    body {
        font-family: "Segoe UI", Arial, sans-serif;
        background: linear-gradient(to bottom right, #dfe7f2, #b9c7d6);
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        margin: 0;
        animation: fadeIn 1s ease-in-out;
    }

    .logout-container {
        background-color: #ffffff;
        padding: 45px 55px;
        border-radius: 14px;
        box-shadow: 0 8px 28px rgba(0,0,0,0.15);
        text-align: center;
        width: 420px;
        animation: slideUp 1s ease;
    }

    /* Success Icon */
    .success-icon {
        width: 60px;
        height: 60px;
        margin-bottom: 20px;
        stroke: #28a745;
        animation: popIn 0.7s ease;
    }

    h2 {
        color: #28a745;
        font-size: 26px;
        font-weight: bold;
        margin-bottom: 15px;
    }

    p {
        color: #444;
        font-size: 16px;
        margin-bottom: 25px;
    }

    .back-link a {
        background-color: #1e88e5;
        color: white;
        text-decoration: none;
        padding: 12px 24px;
        border-radius: 8px;
        font-weight: bold;
        font-size: 16px;
        transition: 0.3s;
        box-shadow: 0 4px 10px rgba(30, 136, 229, 0.4);
        display: inline-flex;
        align-items: center;
        gap: 8px;
    }

    .back-link a:hover {
        background-color: #1565c0;
        transform: translateY(-3px);
        box-shadow: 0 6px 14px rgba(21, 101, 192, 0.45);
    }

    /* Animations */
    @keyframes fadeIn {
        from { opacity: 0; }
        to { opacity: 1; }
    }

    @keyframes slideUp {
        from { transform: translateY(50px); opacity: 0; }
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

<div class="logout-container">

    <!-- Success Icon -->
    <svg class="success-icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
        <circle cx="12" cy="12" r="10"></circle>
        <path d="M8 12l3 3 5-6"></path>
    </svg>

    <h2>You have been logged out successfully</h2>
    <p>Thank you for using our banking services.</p>

    <p class="back-link">
        <a href="index.jsp">
            <svg width="20" height="20" fill="none" stroke="white" stroke-width="2" viewBox="0 0 24 24">
                <path d="M15 3h4v18h-4"></path>
                <path d="M10 17l5-5-5-5"></path>
            </svg>
            Login Again
        </a>
    </p>

</div>

</body>
</html>
