<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<style type="text/css">
body {
    font-family: 'Arial', sans-serif;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    background-color: #f4f4f4;
}

.login-container {
    background-color: #87da81;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    padding: 20px;
    border-radius: 5px;
    width: 300px;
    height: 300px;
}

.login-form {
    display: flex;
    flex-direction: column;
}

h2 {
    text-align: center;
    color: #333;
}

label {
    margin-top: 10px;
    margin-bottom: 5px;
    color: #333;
}

input {
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 3px;
}

button {
    background-color: #007bff;
    color: #fff;
    padding: 10px;
    border: none;
    border-radius: 3px;
    cursor: pointer;
}

button:hover {
    background-color: #0056b3;
}
a{
	text-decoration: none;
	color: red;

}
</style>
</head>
<body>
	<div class="login-container">
        <form action="login" class="login-form">
            <h2>Login</h2>
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" >
            
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" >
            
            <button type="submit">Login</button>
            <a href="openregpage">Register here</a>
        </form>
    </div>
</body>
</html>