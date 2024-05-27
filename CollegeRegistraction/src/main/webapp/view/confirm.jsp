<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<br>
	<br>
	<h1 align="center">Registered Successfully</h1>
	<h3 align="center">
		<b>${studentobj.name} </b>your ID number is: <b>${studentobj.id}</b>
	</h3>

	<div id="mydiv" hidden
		style="background-color: aliceblue; padding: 25px;">
		<h4 style="margin-left: 4in;">
			<b> ID number : ${studentobj.id} <br>Name :
				${studentobj.name} <br>Age : ${studentobj.age} <br>Phone
				number : ${studentobj.number} <br>Address :
				${studentobj.address} <br>Email : ${studentobj.email}
			</b>
		</h4>
	</div>

	<br />
	<div align="center">
		<button onclick="toggle(this)">
			View details</small>
		</button>
		<br> <small>(double click) 
	</div>
	<script>
  let toggle = button => {
    let element = document.getElementById("mydiv");
    let hidden = element.getAttribute("hidden");

    if (hidden) {
       element.removeAttribute("hidden");
       button.innerText = "Hide details";
    } else {
       element.setAttribute("hidden", "hidden");
       button.innerText = "View details";
    }
  }
</script>

</body>
</html>