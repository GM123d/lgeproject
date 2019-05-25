<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<style type="text/css">
div {
	background-color: lightgrey;
	border: 2px solid black;
	width: 300px;
	height: 260px
}

span {
	color: red;
	font-size: 13pxss
}

table {
	margin-top: 60px;
}

#space {
	height: 20px;
	width: 20px;
	border: none;
}

button {
	width: 150px;
	height: 50px;
}
</style>
<script type="text/javascript">
	function validation() {

		var userName = document.getElementsByName("userName")[0].value;
		var password = document.getElementsByName("password")[0].value;

		var t = 0;
		if (userName == "" || userName == null) {

			document.getElementById("userName").innerHTML = "*Enter the user Name"

			t = t + 1;

		} else {
			document.getElementById("userName").innerHTML = ""

		}
		if (password == "" || password == null) {

			document.getElementById("password").innerHTML = "*Enter the password"
			t = t + 1;
		} else {
			document.getElementById("password").innerHTML = ""

		}

		if (userName != "Gaurav" || password != "gaurav@123") {
			document.getElementById("heading").innerHTML = "Invalid User"
			t = t + 1;

		}

		if (t > 0) {

			return false;
		} else {

			return true;

		}

	}
	
	

</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
session.setAttribute("invoiceNo","");
session.setAttribute("userName","");
session.invalidate();
%>
	<center>

		<h1>Login Form</h1>

		<div>
			<h3 id="heading">Enter Details</h3>
			<form action="task.jsp" method="post" onsubmit="return validation()">
				<table>

					<tr>
						<td>User Name:</td>
						<td><input type="text" name="userName"><br />
						<span id="userName"></span></td>
					</tr>
					<tr>
						<td><div id="space"></div></td>
					</tr>
					<tr>
						<td>Password:</td>
						<td><input type="password" name="password"><br />
						<span id="password"></span></td>
					</tr>
					<tr>
						<td><div id="space"></div></td>
					</tr>
				</table>
				
		</div>
		<button >Submit</button>
			</form>
	</center>
</body>
</html>