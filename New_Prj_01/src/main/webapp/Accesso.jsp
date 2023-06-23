<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
    }

    .container {
        max-width: 400px;
        margin: 0 auto;
        padding: 20px;
        background-color: #fff;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    h1 {
        text-align: center;
        color: #333;
    }

    label {
        display: block;
        margin-bottom: 10px;
        color: #555;
    }

    input[type="text"],
    input[type="password"] {
        width: 94%;
        padding: 10px;
        font-size: 16px;
        border: 1px solid #ccc;
        border-radius: 3px;
    }

    input[type="submit"] {
        width: 70%;
        padding: 10px;
        margin: 10px auto;
    	display: block;
        font-size: 16px;
        position: center;
        background-color: #4CAF50;
        color: #fff;
        border: none;
        border-radius: 3px;
        
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>

<div class="container">
    <h1>Accesso</h1>
    <form action="servletMosi" method="post">
    
    <label for="user">Username:</label>
    <input type="text" id="user" name="user" required/>
    
    <label for="password">Password:</label>
    <input type="password" id="password" name="password" required/>  	            
	
	<input type="submit" value="Login"/>
	        
    </form>
</div>

</body>
</html>
