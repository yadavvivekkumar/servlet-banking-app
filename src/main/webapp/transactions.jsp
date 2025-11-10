<%@ page import="java.util.List"%>
<%@ page import="dto.Transaction"%>
<html>
<head>
<title>Transaction History</title>

<style>
    body {
        font-family: "Segoe UI", Arial, sans-serif;
        background: linear-gradient(to bottom right, #dfe7f2, #b9c7d6);
        margin: 0;
        padding: 40px 0;
        animation: fadeIn 1s ease;
    }

    h2 {
        text-align: center;
        font-size: 32px;
        margin-bottom: 20px;
        color: #1a2b3c;
        display: flex;
        justify-content: center;
        align-items: center;
        gap: 12px;
        animation: slideDown 1s ease;
    }

    /* Header Icon */
    .history-icon {
        width: 30px;
        height: 30px;
        stroke: #1a2b3c;
    }

    /* Table Container */
    .table-wrapper {
        width: 90%;
        margin: auto;
        background: #fff;
        padding: 25px;
        border-radius: 14px;
        box-shadow: 0 8px 28px rgba(0,0,0,0.12);
        animation: slideUp 1s ease;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 10px;
        font-size: 15px;
    }

    th {
        background-color: #1e88e5;
        color: #fff;
        padding: 12px;
        text-align: center;
        font-size: 16px;
        font-weight: 600;
    }

    td {
        padding: 10px;
        border-bottom: 1px solid #d3d3d3;
        text-align: center;
        color: #333;
    }

    tr:hover {
        background-color: #f1f7ff;
        transition: 0.3s;
    }

    /* Empty row */
    .empty-row td {
        padding: 14px;
        color: #555;
        font-weight: bold;
    }

    /* Back Link Button */
    .back-btn {
        display: inline-flex;
        align-items: center;
        gap: 8px;
        padding: 12px 22px;
        background-color: #1e88e5;
        color: #fff;
        text-decoration: none;
        border-radius: 8px;
        font-weight: bold;
        margin: 25px auto 0;
        font-size: 16px;
        box-shadow: 0 4px 10px rgba(30,136,229,0.4);
        transition: 0.3s;
    }

    .back-btn:hover {
        background-color: #1565c0;
        transform: translateY(-3px);
        box-shadow: 0 6px 14px rgba(21,101,192,0.45);
    }

    .back-icon {
        width: 20px;
        height: 20px;
        stroke: white;
    }

    /* Animations */
    @keyframes fadeIn {
        from { opacity: 0; }
        to { opacity: 1; }
    }

    @keyframes slideDown {
        from { transform: translateY(-30px); opacity: 0; }
        to { transform: translateY(0); opacity: 1; }
    }

    @keyframes slideUp {
        from { transform: translateY(50px); opacity: 0; }
        to { transform: translateY(0); opacity: 1; }
    }
</style>

</head>
<body>

<h2>
    <svg class="history-icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
        <circle cx="12" cy="12" r="10"></circle>
        <path d="M12 6v6l4 2"></path>
    </svg>
    Transaction History
</h2>

<div class="table-wrapper">
    <table>
        <tr>
            <th>ID</th>
            <th>Type</th>
            <th>Amount</th>
            <th>Date</th>
            <th>From</th>
            <th>To</th>
            <th>Description</th>
        </tr>

        <%
        List<Transaction> transactions = (List<Transaction>) request.getAttribute("transactions");
        if (transactions != null && !transactions.isEmpty()) {
            for (Transaction t : transactions) {
        %>
        <tr>
            <td><%= t.getTransactionId() %></td>
            <td><%= t.getTransactionType() %></td>
            <td><%= t.getAmount() %></td>
            <td><%= t.getTransactionDate() %></td>
            <td><%= t.getTransactionFrom() %></td>
            <td><%= t.getTransactionTo() %></td>
            <td><%= t.getTransactionDescription() %></td>
        </tr>
        <%
            }
        } else {
        %>
        <tr class="empty-row">
            <td colspan="7">No transactions found</td>
        </tr>
        <% } %>
    </table>
</div>

<div style="text-align:center;">
    <a class="back-btn" href="dashboard.jsp">
        <svg class="back-icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
            <path d="M15 18l-6-6 6-6"></path>
        </svg>
        Back to Dashboard
    </a>
</div>

</body>
</html>
