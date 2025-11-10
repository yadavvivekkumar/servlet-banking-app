<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Login</title>

<style>
    body {
        font-family: "Segoe UI", Arial, sans-serif;
        background: linear-gradient(to bottom right, #dfe7f2, #b9c7d6);
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
        animation: fadeIn 1s ease-in-out;
    }

    .login-container {
        background-color: #ffffff;
        padding: 40px 45px;
        border-radius: 14px;
        box-shadow: 0 8px 25px rgba(0,0,0,0.15);
        width: 350px;
        text-align: center;
        animation: slideUp 0.9s ease;
    }

    h2 {
        font-size: 30px;
        font-weight: bold;
        color: #1a2b3c;
        margin-bottom: 25px;
    }

    form p {
        display: flex;
        align-items: center;
        margin: 18px 0;
        position: relative;
    }

    /* Icons for Input Fields */
    .input-icon {
        position: absolute;
        left: 10px;
        width: 18px;
        height: 18px;
        stroke: #666;
        top: 50%;
        transform: translateY(-50%);
    }

    input[type="text"],
    input[type="password"] {
        width: 100%;
        padding: 10px 12px 10px 36px;
        border: 1px solid #ccc;
        border-radius: 8px;
        font-size: 14px;
        transition: border-color 0.3s;
    }

    input:focus {
        outline: none;
        border-color: #1e88e5;
        box-shadow: 0 0 5px rgba(30, 136, 229, 0.4);
    }

    .btn {
        background-color: #1e88e5;
        color: white;
        padding: 10px 18px;
        width: 100%;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        font-weight: 600;
        font-size: 16px;
        margin-top: 10px;
        transition: 0.3s;
        box-shadow: 0 4px 10px rgba(30, 136, 229, 0.4);
    }

    .btn:hover {
        background-color: #1565c0;
        transform: translateY(-3px);
        box-shadow: 0 6px 14px rgba(21, 101, 192, 0.45);
    }

    .signup-link {
        margin-top: 20px;
        font-size: 15px;
    }

    .signup-link a {
        color: #1e88e5;
        text-decoration: none;
        font-weight: bold;
    }

    .signup-link a:hover {
        text-decoration: underline;
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
</style>

</head>
<body>

<div class="login-container">
    <h2>Login</h2>

    <form action="LoginServlet" method="post">

        <p>
            <!-- Account Number Icon -->
            <svg class="input-icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
                <path d="M3 10l9-6 9 6"></path>
                <path d="M4 10h16v8H4z"></path>
            </svg>
            <input type="text" id="accountNumber" name="accountNumber" placeholder="Account Number" required>
        </p>

        <p>
            <!-- Lock Icon -->
            <svg class="input-icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
                <path d="M12 17a2 2 0 100-4 2 2 0 000 4z"></path>
                <path d="M6 10V7a6 6 0 0112 0v3"></path>
                <rect x="6" y="10" width="12" height="10" rx="2"></rect>
            </svg>
            <input type="password" id="pin" name="pin" placeholder="Enter PIN" required>
        </p>

        <p>
            <input type="submit" value="Login" class="btn">
        </p>
    </form>

    <p class="signup-link">
        Don’t have an account? <a href="signup.jsp">Create New Account</a>
    </p>
</div>

</body>
</html>
