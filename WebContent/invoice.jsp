<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@include file="logout.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
#table{

margin-top:100px;

font-size:50px;

}



</style>
<script type="text/javascript">
	
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String userName=(String)session.getAttribute("userName");

if(userName==null||userName==""){
	
	response.sendRedirect("login.jsp");
	
}



%>
<center>
	<form action="Session" method="post">
		<table id="table">
			<tr>
				<td><b>Invoice Number</b></td></tr>
				<tr>
				<td><input name="invoiceNo">
				<td><button>Submit</button></td></tr>
			
		</table>

	</form></center>

</body>
</html>