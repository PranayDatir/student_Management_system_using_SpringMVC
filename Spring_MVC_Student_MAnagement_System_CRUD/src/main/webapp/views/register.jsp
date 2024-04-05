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

.register-container {
    background-color: #fff;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    padding: 20px;
    border-radius: 5px;
}

.register-form {
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
    cursor : pointer;
}

button:hover {
    background-color: #0056b3;
}
	
</style>
</head>
<body>
    <div class="register-container">
        <form action="save" class="register-form">
            <h2>Create an Account</h2>

            <label for="rollno">Roll Number:</label>
            <input type="text" id="rollno" name="rollno">
            
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>

            <label for="uname">Username:</label>
            <input type="text" id="uname" name="username" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>

            <button type="submit">Register</button>
        </form>
    </div>
</body>
</html>