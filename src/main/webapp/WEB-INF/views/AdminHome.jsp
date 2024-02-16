<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins&display=swap">
    <title>Home Page</title>
    <style>
        /* Your CSS styles here */

        /* ... (Keep the existing styles) ... */

        /* New styles for the navbar */
        body {
         
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: left;
            height: 100vh;
            background: linear-gradient(45deg, rgb(13, 14, 13), dodgerblue);
            font-family: "Sans-serif";
        }

        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px;
            background-color: rgba(255, 255, 255, 0.13);
            border-bottom: 2px solid rgba(255, 255, 255, 0.1);
        }

        nav .logo {
            display: flex;
            align-items: center;
        }

        nav ul {
            list-style: none;
            display: flex;
            margin-left: auto; /* Align the menu to the right */
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
            margin-right: 10px; /* Adjust the spacing between the logo and text */
        }

        .logo h1 {
            font-size: 20px;
            font-weight: 700;
            color: #ffffff;
        }
    </style>
</head>
<body>

<nav>
    <div class="logo">
        <!-- Replace with the actual path and dimensions of your logo -->
        <img src="./resources/bank.png" alt="Bank Logo" width="50" height="50">
        <h1>YONO</h1>
    </div>
    <ul>
        <li><a href="#AdminHome">Home</a></li>
        <li><a href="AddAccount">Add Account</a></li>
        <li><a href="ViewAccount">View Account</a></li>
        <li><a href="Deposit">Deposit</a></li>
        <li><a href="Withdraw">Withdraw</a></li>
        <li><a href="DeleteAccount">Delete Account</a></li>
        <li><a href="Home">Logout</a></li>
    </ul>
</nav>
<table style="width: 50%; margin: auto; border-collapse: collapse;">
    
    <tr style="width: 50%; margin: auto; text-align: center; background-color: #3498db; color: #ffffff; padding: 20px;">
        <td colspan="2" style="padding: 20px;">
            <p>Embark on a journey where every click opens doors to unparalleled financial possibilities. YONO is not just a bank. It's your partner in prosperity, your guide to a brighter financial future.</p>
            <p>Explore our services, secure your dreams, and redefine banking with YONO. Your financial adventure starts here!</p>
        </td>
    </tr>
    
</table>

</body>
</html>
 
        
     
    
  