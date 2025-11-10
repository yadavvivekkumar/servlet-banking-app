<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Deposit Money</title>

<style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;600&display=swap');

    body {
        font-family: 'Poppins', sans-serif;
        background: linear-gradient(to bottom right, #d7f9e7, #b3e6c0);
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
        animation: fadeIn 1s ease-in-out;
    }

    .card {
        background-color: #ffffff;
        padding: 40px 45px;
        border-radius: 14px;
        box-shadow: 0 10px 30px rgba(0,0,0,0.2);
        width: 420px;
        animation: slideUp 1s ease;
    }

    h2 {
        text-align: center;
        margin-bottom: 25px;
        color: #2e7d32;
        font-size: 28px;
        font-weight: 600;
    }

    /* Input group */
    .input-group {
        position: relative;
        margin-bottom: 20px;
        text-align: left;
    }

    label {
        font-weight: 600;
        color: #333;
        margin-bottom: 6px;
        display: block;
    }

    /* Icons */
    .input-icon {
        position: absolute;
        left: 10px;
        top: 38px;
        width: 20px;
        height: 20px;
        stroke: #555;
    }

    /* Inputs */
    input[type="text"],
    input[type="number"] {
        width: 100%;
        padding: 12px 12px 12px 40px;
        border: 1px solid #ccc;
        border-radius: 8px;
        font-size: 15px;
        outline: none;
        transition: 0.3s;
        box-sizing: border-box;
    }

    input:focus {
        border-color: #43a047;
        box-shadow: 0 0 6px rgba(67, 160, 71, 0.4);
    }

    /* Submit button */
    input[type="submit"] {
        width: 100%;
        padding: 12px;
        background-color: #43a047;
        border: none;
        border-radius: 8px;
        color: white;
        font-size: 17px;
        font-weight: 600;
        cursor: pointer;
        transition: 0.3s;
        box-shadow: 0 4px 12px rgba(67,160,71,0.4);
    }

    input[type="submit"]:hover {
        background-color: #2e7d32;
        transform: translateY(-3px);
        box-shadow: 0 6px 16px rgba(46,125,50,0.45);
    }

    /* Back link */
    .back-link {
        text-align: center;
        margin-top: 20px;
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
        transform: translateX(-3px);
        text-decoration: underline;
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

<div class="card">
    <h2>Deposit Money</h2>

    <form action="deposit" method="post">
        <input type="hidden" name="action" value="deposit">

        <!-- Account Number -->
        <div class="input-group">
            <label>Account Number:</label>
            <svg class="input-icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
                <path d="M3 10l9-6 9 6"></path>
                <path d="M4 10h16v8H4z"></path>
            </svg>
            <input type="text" name="accountNumber" required>
        </div>

        <!-- Amount -->
        <div class="input-group">
            <label>Amount:</label>
            <svg class="input-icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
                <path d="M12 1L12 23"></path>
                <path d="M17 5H9.5a3.5 3.5 0 000 7h5a3.5 3.5 0 010 7H6"></path>
            </svg>
            <input type="number" step="0.01" name="amount" required>
        </div>

        <input type="submit" value="Deposit">
    </form>

    <p class="back-link">
        <a href="dashboard.jsp">⬅ Back to Dashboard</a>
    </p>
</div>

</body>
</html>
