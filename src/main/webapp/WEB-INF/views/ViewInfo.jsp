<%@page import="java.util.List"%>
<%@page import="BankModel.Accounts"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
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

        .table-container {
            margin-top: 20px;
            width: 80%;
            margin-left: auto;
            margin-right: auto;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #fff;
            border: 2px solid #000;
        }

        th, td {
            border: 2px solid #000;
            padding: 8px;
            text-align: left;
        }

        thead {
            background-color: #343a40;
            color: #fff;
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
        <li><a href="#AdminHome">Home</a></li>
        <li><a href="AddAccount">Add Account</a></li>
        <li><a href="ViewAccount">View Account</a></li>
        <li><a href="Deposit">Deposit</a></li>
        <li><a href="Withdraw">Withdraw</a></li>
        <li><a href="Home">Logout</a></li>
    </ul>
</nav>
<div class="table-container">
    <table class="table">
        <thead class="thead-dark">
            <tr>
                <th scope="col">Account Number</th>
                <th scope="col">Account Name</th>
                <th scope="col">Account Mobile</th>
                <th scope="col">Account Type</th>
                <th scope="col">Account Balance</th>
            </tr>
        </thead>
        <tbody>
            <%
                Accounts accounts=(Accounts)request.getAttribute("accounts");
            %>
            <tr>
                <th scope="row"><%=accounts.getAccNo() %></th>
                <td><%=accounts.getAccName() %></td>
                <td><%=accounts.getAccMob() %></td>
                <td><%=accounts.getAccType() %></td>
                <td><%=accounts.getAccBal() %></td>
            </tr>
        </tbody>
    </table>
</div>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</body>
</html>
