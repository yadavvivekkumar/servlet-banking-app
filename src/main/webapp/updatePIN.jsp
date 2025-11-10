<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update PIN</title>

<style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;600&display=swap');

    body {
        font-family: 'Poppins', sans-serif;
        background: linear-gradient(to bottom right, #dfe7f2, #b9c7d6);
        margin: 0;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        animation: fadeIn 1s ease-in-out;
    }

    form {
        background-color: #ffffff;
        padding: 40px 50px;
        border-radius: 14px;
        box-shadow: 0px 10px 30px rgba(0, 0, 0, 0.2);
        width: 380px;
        text-align: center;
        animation: slideUp 1s ease;
    }

    h2 {
        color: #1e88e5;
        margin-bottom: 25px;
        font-size: 26px;
        font-weight: 600;
    }

    /* Input Group (icon + input) */
    .input-group {
        position: relative;
        margin-bottom: 18px;
        text-align: left;
    }

    label {
        font-weight: 600;
        color: #333;
        margin-bottom: 5px;
        display: block;
    }

    /* Icons */
    .input-icon {
        position: absolute;
        left: 10px;
        top: 36px;
        width: 20px;
        height: 20px;
        stroke: #666;
    }

    /* Input Fields */
    input[type="text"],
    input[type="password"] {
        width: 100%;
        padding: 12px 12px 12px 40px;
        border: 1px solid #ccc;
        border-radius: 8px;
        font-size: 15px;
        transition: border-color 0.3s;
        outline: none;
    }

    input:focus {
        border-color: #1e88e5;
        box-shadow: 0 0 6px rgba(30, 136, 229, 0.4);
    }

    /* Submit Button */
    input[type="submit"] {
        width: 100%;
        background-color: #1e88e5;
        color: white;
        padding: 12px;
        border: none;
        border-radius: 8px;
        font-size: 16px;
        font-weight: bold;
        cursor: pointer;
        transition: 0.3s;
        box-shadow: 0 4px 12px rgba(30,136,229,0.4);
    }

    input[type="submit"]:hover {
        background-color: #1565c0;
        transform: translateY(-3px);
        box-shadow: 0 6px 16px rgba(21,101,192,0.45);
    }

    /* Message */
    .message, .error {
        margin-top: 15px;
        font-weight: bold;
        font-size: 15px;
    }

    .message { color: green; }
    .error { color: red; }

    /* Back Link */
    .back-link {
        margin-top: 15px;
    }

    .back-link a {
        text-decoration: none;
        color: #1e88e5;
        font-weight: 600;
        display: inline-flex;
        align-items: center;
        gap: 6px;
        transition: 0.3s;
    }

    .back-link a:hover {
        text-decoration: underline;
        transform: translateX(-3px);
    }

    /* Animations */
    @keyframes fadeIn {
        from { opacity: 0; }
        to { opacity: 1; }
    }

    @keyframes slideUp {
        from { transform: translateY(40px); opacity: 0; }
        to { transform: translateY(0); opacity: 1; }
    }
</style>

</head>
<body>

<form action="updatePIN" method="post">
    <h2>Update PIN</h2>

    <input type="hidden" name="action" value="updatePin">

    <!-- Account Number -->
    <div class="input-group">
        <label>Account Number:</label>
        <svg class="input-icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
            <path d="M3 10l9-6 9 6"></path>
            <path d="M4 10h16v8H4z"></path>
        </svg>
        <input type="text" name="accountNumber" required>
    </div>

    <!-- New PIN -->
    <div class="input-group">
        <label>New PIN:</label>
        <svg class="input-icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
            <path d="M12 17a2 2 0 100-4 2 2 0 000 4z"></path>
            <path d="M6 10V7a6 6 0 0112 0v3"></path>
            <rect x="6" y="10" width="12" height="10" rx="2"></rect>
        </svg>
        <input type="password" name="newPin" required>
    </div>

    <input type="submit" value="Update">

    <div class="message">
        <%= request.getAttribute("message") != null ? request.getAttribute("message") : "" %>
    </div>

    <p class="back-link">
        <a href="dashboard.jsp">⬅ Back to Dashboard</a>
    </p>
</form>

</body>
</html>
