<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Bank Transfer</title>

<style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;600&display=swap');

    body {
        font-family: "Poppins", sans-serif;
        background: linear-gradient(to bottom right, #dfe7f2, #b9c7d6);
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        margin: 0;
        animation: fadeIn 1s ease-in-out;
    }

    .transfer-container {
        background-color: #fff;
        padding: 40px 50px;
        border-radius: 14px;
        box-shadow: 0px 10px 30px rgba(0,0,0,0.2);
        width: 420px;
        animation: slideUp 1s ease;
        text-align: center;
    }

    h2 {
        color: #1e88e5;
        font-size: 28px;
        margin-bottom: 25px;
        font-weight: 600;
    }

    /* Input Group */
    .input-group {
        position: relative;
        margin-bottom: 20px;
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
        top: 38px;
        width: 20px;
        height: 20px;
        stroke: #666;
    }

    /* Inputs */
    input[type="text"],
    input[type="number"],
    input[type="password"] {
        width: 100%;
        padding: 12px 12px 12px 40px;
        border: 1px solid #ccc;
        border-radius: 8px;
        font-size: 15px;
        transition: 0.3s;
        outline: none;
    }

    input:focus {
        border-color: #1e88e5;
        box-shadow: 0 0 6px rgba(30, 136, 229, 0.4);
    }

    /* Button */
    .btn {
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

    .btn:hover {
        background-color: #1565c0;
        transform: translateY(-3px);
        box-shadow: 0 6px 16px rgba(21,101,192,0.45);
    }

    /* Back Link */
    .back-link {
        margin-top: 20px;
    }

    .back-link a {
        text-decoration: none;
        color: #1e88e5;
        font-weight: 600;
        font-size: 15px;
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

<div class="transfer-container">
  <h2>Transfer Money</h2>

  <form action="BankTransfer" method="post">

    <!-- From Account -->
    <div class="input-group">
      <label for="fromAcc">From Account:</label>
      <svg class="input-icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
          <path d="M3 10l9-6 9 6"></path>
          <path d="M4 10h16v8H4z"></path>
      </svg>
      <input type="text" id="fromAcc" name="fromAcc" required>
    </div>

    <!-- PIN -->
    <div class="input-group">
      <label for="pin">PIN:</label>
      <svg class="input-icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
          <path d="M12 17a2 2 0 100-4 2 2 0 000 4z"></path>
          <path d="M6 10V7a6 6 0 0112 0v3"></path>
          <rect x="6" y="10" width="12" height="10" rx="2"></rect>
      </svg>
      <input type="password" id="pin" name="pin" required>
    </div>

    <!-- To Account -->
    <div class="input-group">
      <label for="toAcc">To Account:</label>
      <svg class="input-icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
          <rect x="3" y="4" width="18" height="14" rx="2"></rect>
      </svg>
      <input type="text" id="toAcc" name="toAcc" required>
    </div>

    <!-- Amount -->
    <div class="input-group">
      <label for="amount">Amount:</label>
      <svg class="input-icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
          <path d="M12 1L12 23"></path>
          <path d="M17 5H9.5a3.5 3.5 0 000 7h5a3.5 3.5 0 010 7H6"></path>
      </svg>
      <input type="number" id="amount" name="amount" required>
    </div>

    <input type="submit" value="Transfer" class="btn">

  </form>

  <p class="back-link">
    <a href="dashboard.jsp">⬅ Back to Dashboard</a>
  </p>

</div>

</body>
</html>
