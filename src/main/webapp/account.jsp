<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="dto.BankAccount" %>
<%
    BankAccount account = (BankAccount) session.getAttribute("account");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Account Details</title>

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
        animation: fadeIn 1s ease;
    }

    .account-container {
        background-color: #fff;
        padding: 40px 50px;
        border-radius: 14px;
        width: 450px;
        box-shadow: 0 10px 30px rgba(0,0,0,0.2);
        animation: slideUp 1s ease;
    }

    h2 {
        text-align: center;
        color: #1e88e5;
        font-size: 30px;
        margin-bottom: 25px;
        font-weight: 600;
    }

    .details-box {
        margin-top: 10px;
    }

    .details-item {
        margin-bottom: 16px;
        font-size: 16px;
        color: #333;
        display: flex;
        align-items: center;
        gap: 12px;
        animation: fadeIn 0.5s ease;
    }

    .details-item strong {
        color: #1e88e5;
        min-width: 140px;
        display: inline-block;
    }

    /* Icons */
    .icon {
        width: 22px;
        height: 22px;
        stroke: #1e88e5;
        flex-shrink: 0;
    }

    .no-data {
        text-align: center;
        color: #777;
        font-size: 16px;
        margin-top: 20px;
    }

    /* Back link */
    .back-link {
        text-align: center;
        margin-top: 20px;
    }

    .back-link a {
        display: inline-flex;
        align-items: center;
        gap: 8px;
        background-color: #1e88e5;
        color: white;
        text-decoration: none;
        padding: 10px 20px;
        border-radius: 8px;
        font-size: 16px;
        font-weight: bold;
        transition: 0.3s;
        box-shadow: 0 4px 10px rgba(30,136,229,0.4);
    }

    .back-link a:hover {
        background-color: #1565c0;
        transform: translateY(-3px);
        box-shadow: 0 6px 14px rgba(21,101,192,0.45);
    }

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

<div class="account-container">
  <h2>Account Details</h2>

  <% if (account != null) { %>
  <div class="details-box">

    <div class="details-item">
      <svg class="icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
        <path d="M3 10l9-6 9 6"></path>
      </svg>
      <strong>Account Number:</strong> <%= account.getAccountNumber() %>
    </div>

    <div class="details-item">
      <svg class="icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
        <circle cx="12" cy="7" r="4"></circle>
      </svg>
      <strong>Name:</strong> <%= account.getAccountHolderName() %>
    </div>

    <div class="details-item">
      <svg class="icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
        <path d="M12 1L12 23"></path>
      </svg>
      <strong>Balance:</strong> ₹<%= account.getBalance() %>
    </div>

    <div class="details-item">
      <svg class="icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
        <rect x="3" y="4" width="18" height="14" rx="2"></rect>
      </svg>
      <strong>Account Type:</strong> <%= account.getAccountType() %>
    </div>

    <div class="details-item">
      <svg class="icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
        <path d="M4 4h16v16H4z"></path>
      </svg>
      <strong>IFSC Code:</strong> <%= account.getIfscCode() %>
    </div>

    <div class="details-item">
      <svg class="icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
        <path d="M12 2a7 7 0 017 7c0 5-7 13-7 13S5 14 5 9a7 7 0 017-7z"></path>
      </svg>
      <strong>Branch:</strong> <%= account.getBranchName() %>
    </div>

    <div class="details-item">
      <svg class="icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
        <path d="M22 16.92v3a2 2 0 01-2.18 2A19.79 19.79 0 013 5.18 2 2 0 015 3h3"></path>
      </svg>
      <strong>Phone:</strong> <%= account.getPhone() %>
    </div>

    <div class="details-item">
      <svg class="icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
        <path d="M22 6l-10 7L2 6"></path>
      </svg>
      <strong>Email:</strong> <%= account.getEmail() %>
    </div>

    <div class="details-item">
      <svg class="icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
        <path d="M4 4h16v16H4z"></path>
      </svg>
      <strong>Address:</strong> <%= account.getAddress() %>
    </div>

  </div>

  <% } else { %>
  <div class="no-data">No account information available.</div>
  <% } %>

  <p class="back-link">
    <a href="dashboard.jsp">
      <svg width="20" height="20" fill="none" stroke="white" stroke-width="2" viewBox="0 0 24 24">
          <path d="M15 18l-6-6 6-6"></path>
      </svg>
      Back to Dashboard
    </a>
  </p>

</div>

</body>
</html>
