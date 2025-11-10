<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Create Account</title>

<style>
    body {
        font-family: "Segoe UI", Arial, sans-serif;
        background: linear-gradient(to bottom right, #dfe7f2, #b9c7d6);
        margin: 0;
        padding: 40px 0;
        text-align: center;
        animation: fadeIn 1s ease;
    }

    h2 {
        font-size: 32px;
        font-weight: bold;
        color: #1a2b3c;
        animation: slideDown 0.8s ease;
    }

    .form-container {
        background: #ffffff;
        display: inline-block;
        padding: 35px 45px;
        border-radius: 14px;
        box-shadow: 0 8px 25px rgba(0,0,0,0.15);
        margin-top: 20px;
        text-align: left;
        width: 420px;
        animation: slideUp 1s ease;
    }

    form p {
        display: flex;
        align-items: center;
        margin: 18px 0;
        position: relative;
    }

    label {
        flex: 1;
        font-weight: bold;
        color: #333;
    }

    /* Input Icons */
    .input-icon {
        position: absolute;
        left: 10px;
        width: 20px;
        height: 20px;
        stroke: #666;
        top: 50%;
        transform: translateY(-50%);
    }

    input {
        flex: 2;
        padding: 10px 12px 10px 38px;
        border: 1px solid #ccc;
        border-radius: 8px;
        font-size: 14px;
        transition: 0.3s;
    }

    input:focus {
        outline: none;
        border-color: #1e88e5;
        box-shadow: 0 0 6px rgba(30, 136, 229, 0.4);
    }

    .btn {
        background-color: #1e88e5;
        color: white;
        padding: 12px 20px;
        border: none;
        border-radius: 8px;
        font-weight: bold;
        cursor: pointer;
        width: 100%;
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

    .login-link {
        text-align: center;
        margin-top: 20px;
        font-size: 15px;
    }

    .login-link a {
        color: #1e88e5;
        font-weight: bold;
        text-decoration: none;
    }

    .login-link a:hover {
        text-decoration: underline;
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

    @keyframes slideDown {
        from { transform: translateY(-40px); opacity: 0; }
        to { transform: translateY(0); opacity: 1; }
    }
</style>
</head>
<body>

<h2>Create Account</h2>

<div class="form-container">
  <form action="CreateAccount" method="post">

    <p>
      <label for="accountNumber">Account Number:</label>
      <svg class="input-icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
        <path d="M3 10l9-6 9 6"></path>
        <path d="M4 10h16v8H4z"></path>
      </svg>
      <input type="text" id="accountNumber" name="accountNumber" required>
    </p>

    <p>
      <label for="accountHolderName">Name:</label>
      <svg class="input-icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
        <circle cx="12" cy="7" r="4"></circle>
        <path d="M5 21c0-4 3-7 7-7s7 3 7 7"></path>
      </svg>
      <input type="text" id="accountHolderName" name="accountHolderName" required>
    </p>

    <p>
      <label for="balance">Initial Balance:</label>
      <svg class="input-icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
        <path d="M12 1L12 23"></path>
        <path d="M17 5H9.5a3.5 3.5 0 000 7h5a3.5 3.5 0 010 7H6"></path>
      </svg>
      <input type="number" id="balance" name="balance" required>
    </p>

    <p>
      <label for="accountType">Account Type:</label>
      <svg class="input-icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
        <rect x="3" y="4" width="18" height="14" rx="2"></rect>
        <path d="M3 10h18"></path>
      </svg>
      <input type="text" id="accountType" name="accountType" required>
    </p>

    <p>
      <label for="ifscCode">IFSC:</label>
      <svg class="input-icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
        <path d="M4 4h16v16H4z"></path>
        <path d="M4 9h16"></path>
        <path d="M9 4v16"></path>
      </svg>
      <input type="text" id="ifscCode" name="ifscCode" required>
    </p>

    <p>
      <label for="branchName">Branch:</label>
      <svg class="input-icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
        <path d="M12 2a7 7 0 017 7c0 5-7 13-7 13S5 14 5 9a7 7 0 017-7z"></path>
        <circle cx="12" cy="9" r="2.5"></circle>
      </svg>
      <input type="text" id="branchName" name="branchName">
    </p>

    <p>
      <label for="address">Address:</label>
      <svg class="input-icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
        <path d="M4 4h16v16H4z"></path>
        <path d="M4 9h16"></path>
      </svg>
      <input type="text" id="address" name="address">
    </p>

    <p>
      <label for="phone">Phone:</label>
      <svg class="input-icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
        <path d="M22 16.92v3a2 2 0 01-2.18 2A19.79 19.79 0 013 5.18 2 2 0 015 3h3a2 2 0 012 1.72 12.05 12.05 0 006.06 9.06A2 2 0 0117 16.92z"></path>
      </svg>
      <input type="text" id="phone" name="phone">
    </p>

    <p>
      <label for="email">Email:</label>
      <svg class="input-icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
        <path d="M4 4h16v16H4z"></path>
        <path d="M22 6l-10 7L2 6"></path>
      </svg>
      <input type="email" id="email" name="email">
    </p>

    <p>
      <label for="pin">PIN:</label>
      <svg class="input-icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
        <path d="M12 17a2 2 0 100-4 2 2 0 000 4z"></path>
        <path d="M6 10V7a6 6 0 0112 0v3"></path>
        <rect x="6" y="10" width="12" height="10" rx="2"></rect>
      </svg>
      <input type="password" id="pin" name="pin" required>
    </p>

    <p style="text-align:center;">
      <input type="submit" value="Create Account" class="btn">
    </p>

  </form>

  <p class="login-link">
    Already have an account? <a href="login.jsp">Login</a>
  </p>
</div>

</body>
</html>
