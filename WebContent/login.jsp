<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
div {
	background-color: lightgrey;
	border: 2px solid black;
	width: 300px;
	height: 300px
}

span {
	color: red;
	font-size: 13px
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
	<center>

		<h1>Login form</h1>

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
				<button>Submit</button>
			</form>
		</div>
	</center>
</body>
</html>