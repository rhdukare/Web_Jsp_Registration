<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="./styles.css">
<title>Student Registration</title>
<style type="text/css">
button:hover {
	cursor: pointer;
	background-color: black;
	text-shadow: white;
}
</style>
</head>
<body>

	<h2 align="Center">Welcome to Whirlpool International college</h2>

	<form action="register" method="post"
		style="display: flex; flex-direction: column; align-items: center;">
		<div class="container"
			style="display: flex; flex-direction: column; width: 25vw;">

			<h1 align="Center">Registration</h1>
			<p>Kindly fill in this form to register.</p>

			<!-- label and input for name -->
			<label for="name"><b>Name :</b></label> <input type="text"
				placeholder="Enter Name" name="name" id="name" required /> <br>
			<!-- label and input for email -->
			<label for="email"><b>Email :</b></label> <input type="email"
				placeholder="Enter Email" name="email" id="email" required /> <br>
			<!-- label and input for age -->
			<label for="age"><b>Age :</b></label> <input type="number"
				placeholder="Enter Age" name="age" id="age" required /> <br>
			<!-- label and input for address -->
			<label for="address"><b>Address :</b></label> <input type="text"
				placeholder="Enter Address" name="address" id="address" required />
			<br>
			<!-- label and input for phone no-->
			<label for="number"><b>Phone no. :</b></label> <input type="number"
				placeholder="Enter your phone no." name="number" id="number"
				required /> <br>

			<button type="submit"
				style="padding: 4px; background-color: #e7e7e7; color: black; border-radius: 0.25em;">Register</button>
			<p align="center">
				<small>--------------------OR--------------------</small>
			</p>

		</div>

	</form>

	<form action="update" 
		style="display: flex; flex-direction: column; align-items: center;">
		<div class="container"
			style="display: flex; flex-direction: column; width: 25vw;">
			<button type="submit"
				style="padding: 4px; background-color: #e7e7e7; color: black; border-radius: 0.25em;">Update</button>
		</div>
	</form>
	
	<form action="delete" 
		style="display: flex; flex-direction: column; align-items: center;">
		<div class="container"
			style="display: flex; flex-direction: column; width: 25vw;">
			<button type="submit"
				style="padding: 4px; background-color: #e7e7e7; color: black; border-radius: 0.25em;">Delete</button>
		</div>
	</form>
	
	<br>
	<form action="alldetails" method="get"
		style="display: flex; flex-direction: column; align-items: center;">
		<div class="container"
			style="display: flex; flex-direction: column; width: 25vw;">
			<button type="submit"
				style="padding: 4px; background-color: #e7e7e7; color: black; border-radius: 0.25em;">All Entries</button>
		</div>
	</form>



</body>
</html>