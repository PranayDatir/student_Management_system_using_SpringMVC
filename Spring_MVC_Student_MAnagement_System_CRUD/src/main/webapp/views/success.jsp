<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Success Page</title>
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

.table-container {
	margin-top: 20px;
}

.student-table {
	border-collapse: collapse;
	width: 100%;
}

.student-table th, .student-table td {
	border: 1px solid #ddd;
	padding: 8px;
	text-align: left;
}

.student-table th {
	background-color: #007bff;
	color: #fff;
}

.student-table tbody tr:nth-child(even) {
	background-color: #f2f2f2;
}

.student-table tbody tr:hover {
	background-color: #ddd;
}

.btn_delete {
	background-color: #ef6717;
	height: 30px;
	font-family: cursive;
	border: none;
	color: white;
	width: 120px;
	border-radius: 35px;
	margin-top: 65px;
}

.btn_edit {
	background-color: #0f720c;
	height: 30px;
	font-family: cursive;
	border: none;
	color: white;
	width: 120px;
	border-radius: 35px;
	margin-top: 65px;
}
</style>
<script type="text/javascript">
	
function deleteData(){
	document.student_table_form.action = "delete";
	document.student_table_form.submit();
}
function editData(){
	document.student_table_form.action = "editpage";
	document.student_table_form.submit();
}

</script>
</head>
<body>
	<div class="table-container">
		<form name="student_table_form">
			<table class="student-table">
				<thead>
					<tr>
						<th>Select</th>
						<th>Name</th>
						<th>Username</th>
						<th>Password</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${data}" var="s">
						<tr>
							<td><input type="radio" name="rollNo" value="${s.rollNo}"></td>
							<td>${s.name}</td>
							<td>${s.username}</td>
							<td>${s.password }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<button onClick="deleteData()" class="btn_delete">DELETE
				DATA</button>
			<button onClick="editData()" class="btn_edit">EDIT DATA</button>
		</form>
	</div>
</body>
</html>  -->


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Success Page</title>
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

.table-container {
	margin-top: 20px;
}

.student-grid {
	display: grid;
	grid-template-columns: auto auto auto auto;
	gap: 8px;
}

.grid-header {
	background-color: #007bff;
	color: #fff;
	padding: 8px;
}

.grid-item {
	border: 1px solid #ddd;
	padding: 8px;
}

.grid-item:nth-child(even) {
	background-color: #f2f2f2;
}

.btn_delete {
	background-color: #ef6717;
	height: 30px;
	font-family: cursive;
	border: none;
	color: white;
	width: 120px;
	border-radius: 35px;
	margin-top: 15px;
}

.btn_edit {
	background-color: #0f720c;
	height: 30px;
	font-family: cursive;
	border: none;
	color: white;
	width: 120px;
	border-radius: 35px;
	margin-top: 15px;
}
</style>
<script type="text/javascript">
	
function deleteData(){
	document.student_table_form.action = "delete";
	document.student_table_form.submit();
}
function editData(){
	document.student_table_form.action = "editpage";
	document.student_table_form.submit();
}

</script>
</head>
<body>
	<div class="table-container">
		<form name="student_table_form">
			<div class="student-grid">
				<div class="grid-header">Select</div>
				<div class="grid-header">Name</div>
				<div class="grid-header">Username</div>
				<div class="grid-header">Password</div>

				<c:forEach items="${data}" var="s">
					<div class="grid-item">
						<input type="radio" name="rollNo" value="${s.rollNo}">
					</div>
					<div class="grid-item">${s.name}</div>
					<div class="grid-item">${s.username}</div>
					<div class="grid-item">${s.password }</div>
				</c:forEach>
			</div>
			<button onClick="deleteData()" class="btn_delete">DELETE DATA</button>
			<button onClick="editData()" class="btn_edit">EDIT DATA</button>
		</form>
	</div>
</body>
</html>
