🏦 Banking Management System

A full-stack Java web application built using JSP, Servlets, JDBC, and MySQL, designed to simulate real-world banking operations including account management, secure authentication, deposits, withdrawals, fund transfers, and transaction tracking.

This project follows Object-Oriented Programming (OOP) principles and a layered MVC architecture, ensuring maintainability, scalability, and clean separation of concerns.

✅ Key Features

✅ Create, view, and update accounts

💰 Deposit / Withdraw / Transfer money

📜 Transaction history with date & time

🔐 Secure login with PIN verification

🧾 Real-time balance updates

🧱 Modular MVC architecture

🗄 JDBC-based MySQL database connectivity

🎨 Modern JSP-based UI

🛠 Tech Stack
Layer	Technologies
Frontend	HTML5, CSS3, JSP
Backend	Java Servlets (MVC)
Database	MySQL (via JDBC)
Server	Apache Tomcat 9.0
Build Tool	Maven
IDE	Eclipse / IntelliJ IDEA
📌 Technologies Used
Front End 📫

HTML5

CSS3

JavaScript

Server Side ⚡

Java Servlets

JSP

JDBC

Development Tools 📺

Eclipse IDE

Database 📦

MySQL

🏗 Installation & Setup Guide

Follow these steps to set up and run the Banking Management System locally.

🔧 Prerequisites

Ensure the following tools are installed:

☕ JDK 11 or higher

🖥 IntelliJ IDEA or Eclipse IDE

🐱‍🏍 Apache Tomcat 9+

🗄 MySQL Server + MySQL Workbench

⚙ Maven (if required)

📥 Step 1: Download the Project

Clone the repository:

git clone https://github.com/yadavvivekkumar/servlet-banking-app
cd Bankproject


Open the project in Eclipse or IntelliJ IDEA.

🗃 Step 2: Setup the Database

Launch MySQL Workbench and execute:

CREATE DATABASE bank_app;
USE bank_app;


Either import the SQL file or run the schema manually.

🧬 Step 3: Create Tables
Bank Accounts Table
CREATE TABLE bank_accounts (
    accountNumber BIGINT PRIMARY KEY,
    accountHolderName VARCHAR(100) NOT NULL,
    balance DOUBLE NOT NULL,
    accountType VARCHAR(20) NOT NULL,
    ifscCode VARCHAR(20) NOT NULL,
    branchName VARCHAR(50),
    address VARCHAR(200),
    phone VARCHAR(15),
    email VARCHAR(100),
    pin VARCHAR(10) NOT NULL
);

Transactions Table
CREATE TABLE transactions (
    transactionId BIGINT AUTO_INCREMENT PRIMARY KEY,
    transactionType VARCHAR(20) NOT NULL,
    amount DOUBLE NOT NULL,
    transactionDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    transactionFrom BIGINT,
    transactionTo BIGINT,
    transactionDescription VARCHAR(200),
    FOREIGN KEY (transactionFrom) REFERENCES bank_accounts(accountNumber),
    FOREIGN KEY (transactionTo) REFERENCES bank_accounts(accountNumber)
);


✅ Your database setup is complete.

🔐 Step 4: Configure Database Connection

Open the file:

src/main/java/util/DBConnection.java


Update credentials:

private static final String URL = "jdbc:mysql://localhost:3306/bank_app";
private static final String USER = "root";
private static final String PASSWORD = "your_mysql_password";


Ensure MySQL is running.

🧭 Step 5: Configure Apache Tomcat

In Eclipse:

Go to Run → Run on Server

Select Apache Tomcat (Local)

Set context path: /Bank_Project

Port: 8080

▶ Step 6: Launch the Application

Click the Run button and open:

http://localhost:8080/BankProject/


Your banking system should now load successfully.

👤 Step 7: Create & Manage Accounts

Use “Create Account” to register

Log in with account number + PIN

Check balance, deposit, withdraw, transfer

View full transaction history

✅ Your banking system is now fully operational!

📂 Project Structure
src
└── main
    ├── java
    │   ├── controller
    │   ├── dao
    │   ├── dto
    │   ├── service
    │   └── util
    │
    └── webapp
        ├── account.jsp
        ├── bankTransfer.jsp
        ├── checkBalannce.jsp   (typo: should be checkBalance.jsp)
        ├── dashboard.jsp
        ├── deposit.jsp
        ├── error500.jsp
        ├── index.jsp
        ├── login.jsp
        ├── logout.jsp
        ├── signup.jsp
        ├── SuccessRegistration.jsp
        ├── transactions.jsp
        ├── updateAccountDetails.jsp
        ├── updatePIN.jsp
        └── withdraw.jsp

pom.xml

🤝 Contribution Guide
🍴 Step 1: Fork the Repository

Click Fork in GitHub.

🌿 Step 2: Create a New Branch
git checkout -b your-feature-name

💾 Step 3: Commit Your Changes
git commit -m "Description of changes"

🚀 Step 4: Push to GitHub
git push origin your-feature-name

📬 Step 5: Submit a Pull Request

Open a PR using Compare & Pull Request.
