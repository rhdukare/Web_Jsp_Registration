<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="update-success" style="display: flex; flex-direction: column; align-items: center;"><br>
	Student ID : <input type="number"  name="id" placeholder="Enter ID" required="required"><br>
	Student name : <input type="text"  name="name" placeholder="Enter name" required="required"><br>
	Student age :<input type="number"  name="age" placeholder="Enter age" required="required"><br>
	Student email : <input type="email"  name="email" placeholder="Enter email" required="required"><br>
	Student Phone Number : <input type="number"  name="number" placeholder="Enter phone no." required="required"><br>
	Student Address : <input type="text"  name="address" placeholder="Enter address" required="required"><br>
	<button type="submit">Update</button>
</form>

</body>
</html>