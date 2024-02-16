<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@page import="BankModel.Accounts"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins&display=swap">
    <title></title>
    <style>
        body {
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: left;
            min-height: 100vh;
            background: linear-gradient(45deg, rgb(13, 14, 13), dodgerblue);
            font-family: "Sans-serif";
            color: #ffffff;
        }

        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px;
            background-color: rgba(255, 255, 255, 0.13);
            border-bottom: 2px solid rgba(255, 255, 255, 0.1);
        }

        .logo {
            display: flex;
            align-items: center;
        }

        nav ul {
            list-style: none;
            display: flex;
            margin-left: auto;
        }

        nav li {
            margin-right: 20px;
        }

        nav a {
            text-decoration: none;
            color: #ffffff;
            font-size: 20px;
            font-weight: 500;
        }

        .logo img {
            margin-right: 10px;
            width: 30px;
            height: 30px;
        }

        .logo h1 {
            font-size: 20px;
            font-weight: 700;
        }

        .form-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 80vh;
            width: 80%; /* Specified width for the form container */
            max-width: 400px;
            margin: auto; /* Center the container horizontally */
        }

        form {
            width: 100%;
            background-color: rgba(255, 255, 255, 0.13);
            border-radius: 10px;
            backdrop-filter: blur(10px);
            border: 2px solid rgba(255, 255, 255, 0.1);
            box-shadow: 0 0 40px rgba(8, 7, 16, 0.6);
            padding: 30px 20px; /* Adjusted padding */
            box-sizing: border-box;
            text-align: center;
        }

        form * {
            font-family: 'Poppins', sans-serif;
            color: #ffffff;
            letter-spacing: 0.5px;
            outline: none;
            border: none;
        }

        form h3 {
            font-size: 24px; /* Adjusted font size */
            font-weight: 500;
            line-height: 30px; /* Adjusted line height */
            margin-bottom: 15px; /* Adjusted margin */
        }

        label {
            display: block;
            font-size: 14px; /* Adjusted font size */
            font-weight: 500;
            margin-bottom: 4px; /* Decreased the margin */
        }

        input {
            display: block;
            height: 35px; /* Adjusted height */
            width: 100%;
            background-color: rgba(255, 255, 255, 0.07);
            border-radius: 3px;
            padding: 0 10px;
            margin-bottom: 10px; /* Adjusted margin */
            font-size: 12px; /* Adjusted font size */
            font-weight: 300;
            box-sizing: border-box;
        }

        button {
            width: 80%;
            background-color: #ffffff;
            color: #080710;
            padding: 12px 0; /* Adjusted padding */
            font-size: 16px; /* Adjusted font size */
            font-weight: 600;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: #f2f2f2;
        }

     </style>
</head>
<body>

<nav>
    <div class="logo">
         <img src="./resources/bank.png" alt="Bank Logo" width="50" height="50">
        <h1>YONO</h1>
    </div>
    <ul>
        <li><a href="AdminHome">Home</a></li>
        <li><a href="AddAccount">Add Account</a></li>
        <li><a href="ViewAccount">View Account</a></li>
        <li><a href="Deposit">Deposit</a></li>
        <li><a href="Withdraw">Withdraw</a></li>
        <li><a href="DeleteAccount">Delete Account</a></li>
        <li><a href="Home">Logout</a></li>
    </ul>
</nav>

<div class="form-container">
    <form action="afterDelete" method="POST">
        
        <label for="accNo">Enter Account Number</label>
        <input type="text" name="accNo" placeholder="Account Number" required>
        

        <button type="submit">Delete Account</button>

        
    </form>
</div>
    
      

</body>
</html>
