<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins&display=swap">
    <title>Login Page</title>
    <style>
        /* Your CSS styles here */
        <%-- Use style tag to include CSS styles within the JSP page --%>
        *, *:before, *:after {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }
        body {
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            height: 100vh;
            background:  linear-gradient(45deg, rgb(13, 14, 13), dodgerblue);
            font-family: "Sansita Swashed", cursive;
        }

        form {
            height: 520px;
            width: 400px;
            background-color: rgba(255, 255, 255, 0.13);
            position: absolute;
            transform: translate(-50%, -50%);
            top: 50%;
            left: 50%;
            border-radius: 10px;
            backdrop-filter: blur(10px);
            border: 2px solid rgba(255, 255, 255, 0.1);
            box-shadow: 0 0 40px rgba(8, 7, 16, 0.6);
            padding: 50px 35px;
        }

        form * {
            font-family: 'Poppins', sans-serif;
            color: #ffffff;
            letter-spacing: 0.5px;
            outline: none;
            border: none;
        }

        form h3 {
            font-size: 32px;
            font-weight: 500;
            line-height: 42px;
            text-align: center;
        }

        label {
            display: block;
            margin-top: 30px;
            font-size: 16px;
            font-weight: 500;
        }

        input {
            display: block;
            height: 50px;
            width: 100%;
            background-color: rgba(255, 255, 255, 0.07);
            border-radius: 3px;
            padding: 0 10px;
            margin-top: 8px;
            font-size: 14px;
            font-weight: 300;
        }

        ::placeholder {
            color: #e5e5e5;
        }

        button {
            margin-top: 30px;
            width: 100%;
            background-color: #ffffff;
            color: #080710;
            padding: 15px 0;
            font-size: 18px;
            font-weight: 600;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: #f2f2f2;
        }

        .social {
            margin-top: 20px;
            display: flex;
            justify-content: space-between;
        }

        .social div {
            width: 48%;
            border-radius: 3px;
            padding: 5px 10px 10px 5px;
            background-color: rgba(255, 255, 255, 0.27);
            color: #eaf0fb;
            text-align: center;
        }

        .social div:hover {
            background-color: rgba(255, 255, 255, 0.47);
        }

        .social i {
            margin-right: 4px;
        }

        .admin-message {
            text-align: center;
            color: #ffffff;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>

    <form action="afterLoginSubmit" method="POST">
        <div class="admin-message">Only admins can login</div>
        <label for="name">Username</label>
        <input type="text" placeholder="username"  required name="name">

        <label for="password">Password</label>
        <input type="password" placeholder="password" required name="password">

        <button type="submit">Log In</button>
    </form>

</body>
</html>
