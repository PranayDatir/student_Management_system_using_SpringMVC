<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Data</title>
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
    height: 380px;
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
span{
margin-top:-30px;
}
</style>
<script type="text/javascript">

function togglePasswordVisibility() {
    var passwordInput = document.getElementById("password");
    var showPasswordCheckbox = document.getElementById("showPassword");

    passwordInput.type = showPasswordCheckbox.checked ? "text" : "password";
}
</script>
</head>
<body>
<div class="login-container">
        <form action="update" class="login-form">
            <h2>Edit Data</h2>
            <input type="hidden" name="rollNo" value="${stu.rollNo}">
            
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" value="${stu.name}">
            
            <label for="uname">Username:</label>
            <input type="text" id="uname" name="username" value="${stu.username}">
            
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" value="${stu.password}">
            <br>
            <span >
            <input type="checkbox" id="showPassword" onchange="togglePasswordVisibility()">
        	<label for="showPassword">Show Password</label>
            </span>
            
            <button type="submit">UPDATE</button>
        </form>
    </div>
</body>
</html>