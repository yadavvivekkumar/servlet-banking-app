<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Error</title>

<style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;600&display=swap');

    body {
        font-family: "Poppins", sans-serif;
        background: linear-gradient(to bottom right, #f8d7da, #f0b6bb);
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        margin: 0;
        animation: fadeIn 1s ease;
    }

    .error-container {
        background-color: #ffffff;
        padding: 40px 50px;
        border-radius: 16px;
        width: 420px;
        text-align: center;
        box-shadow: 0px 10px 30px rgba(0,0,0,0.2);
        animation: slideUp 1s ease;
    }

    .icon-box {
        margin-bottom: 15px;
    }

    .warning-icon {
        width: 55px;
        height: 55px;
        stroke: #d9534f;
        margin-bottom: 10px;
    }

    h2 {
        color: #d32f2f;
        font-size: 26px;
        font-weight: 600;
        margin-bottom: 10px;
    }

    p {
        color: #444;
        font-size: 16px;
        margin-bottom: 22px;
    }

    /* Back Button */
    .back-link a {
        background-color: #1e88e5;
        color: white;
        text-decoration: none;
        padding: 10px 20px;
        border-radius: 8px;
        font-weight: bold;
        display: inline-flex;
        align-items: center;
        gap: 6px;
        transition: 0.3s;
        box-shadow: 0 4px 12px rgba(30,136,229,0.3);
    }

    .back-link a:hover {
        background-color: #1565c0;
        transform: translateY(-3px);
        box-shadow: 0 6px 16px rgba(21,101,192,0.45);
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

<div class="error-container">

  <div class="icon-box">
    <!-- Premium Warning Icon -->
    <svg class="warning-icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
      <path d="M12 9v4"></path>
      <path d="M12 17h.01"></path>
      <path d="M10.29 3.86L1.82 18a2 2 0 0 0 1.71 3h16.94a2 2 0 0 0 1.71-3L13.71 3.86a2 2 0 0 0-3.42 0z"></path>
    </svg>
  </div>

  <h2>Something went wrong!</h2>
  <p>Please try again later or contact support.</p>

  <p class="back-link">
    <a href="dashboard.jsp">⬅ Back to Dashboard</a>
  </p>

</div>

</body>
</html>
