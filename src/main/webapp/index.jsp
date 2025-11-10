<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<title>Banking App</title>

<style>
    body {
        margin: 0;
        padding: 0;
        font-family: "Segoe UI", Arial, sans-serif;
        background: linear-gradient(to bottom right, #e8eef5, #cfd9e3);
        height: 100vh;
        display: flex;
        flex-direction: column;
    }

    /* Navbar */
    .navbar {
        background-color: #1a2b3c;
        color: #ffffff;
        padding: 15px 30px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        box-shadow: 0 4px 10px rgba(0,0,0,0.2);
        animation: slideDown 0.8s ease;
    }

    .navbar-title {
        font-size: 24px;
        font-weight: bold;
        display: flex;
        align-items: center;
        gap: 10px;
    }

    /* Logo Icon */
    .bank-icon {
        width: 28px;
        height: 28px;
    }

    /* Main container card */
    .container {
        background: #ffffff;
        padding: 50px 60px;
        border-radius: 16px;
        width: 420px;
        text-align: center;
        margin: auto;
        box-shadow: 0 8px 25px rgba(0,0,0,0.15);
        animation: fadeIn 1.2s ease;
    }

    h1 {
        font-size: 32px;
        font-weight: 700;
        margin-bottom: 10px;
        color: #1a2b3c;
        animation: slideUp 1.3s ease;
    }

    p {
        color: #555;
        font-size: 16px;
        margin-bottom: 30px;
        animation: slideUp 1.4s ease;
    }

    /* Buttons */
    .btn {
        display: flex;
        justify-content: center;
        align-items: center;
        gap: 10px;
        width: 100%;
        padding: 14px 0;
        font-size: 17px;
        font-weight: 600;
        background-color: #1e88e5;
        color: #fff;
        text-decoration: none;
        border-radius: 10px;
        margin-bottom: 18px;
        transition: transform 0.25s, background-color 0.3s;
        animation: slideUp 1.5s ease;
    }

    .btn:hover {
        background-color: #1565c0;
        transform: translateY(-4px) scale(1.03);
    }

    /* Button Icons */
    .icon {
        width: 20px;
        height: 20px;
    }

    /* Animations */
    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(10px); }
        to { opacity: 1; transform: translateY(0); }
    }

    @keyframes slideUp {
        from { opacity: 0; transform: translateY(40px); }
        to { opacity: 1; transform: translateY(0); }
    }

    @keyframes slideDown {
        from { transform: translateY(-50px); opacity: 0; }
        to { transform: translateY(0); opacity: 1; }
    }
</style>

</head>
<body>

    <!-- Header / Navbar -->
    <div class="navbar">
        <div class="navbar-title">
            <svg class="bank-icon" viewBox="0 0 24 24" stroke="white" fill="none" stroke-width="2">
                <path d="M3 10l9-6 9 6"></path>
                <path d="M4 10h16v8H4z"></path>
                <path d="M2 18h20"></path>
            </svg>
            MyBank
        </div>
    </div>

    <!-- Main Content -->
    <div class="container">
        <h1>Welcome to MyBank</h1>
        <p>Your Secure Online Banking Portal</p>

        <!-- Login Button with Icon -->
        <a class="btn" href="login.jsp">
            <svg class="icon" fill="none" stroke="white" viewBox="0 0 24 24" stroke-width="1.8">
                <path d="M15 3h4v18h-4"></path>
                <path d="M10 17l5-5-5-5"></path>
            </svg>
            Login
        </a>

        <!-- Create Account Button with Icon -->
        <a class="btn" href="signup.jsp">
            <svg class="icon" fill="none" stroke="white" viewBox="0 0 24 24" stroke-width="1.8">
                <circle cx="12" cy="8" r="4"></circle>
                <path d="M6 21c0-4 3-7 6-7s6 3 6 7"></path>
            </svg>
            Create Account
        </a>

    </div>

</body>
</html>
