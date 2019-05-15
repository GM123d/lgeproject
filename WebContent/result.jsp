<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String invoiceNo = request.getParameter("invoiceNo");
		String itemCode = request.getParameter("itemCode");
		String itemName = request.getParameter("itemName");
		String n4 = request.getParameter("Item_type");
		String n5 = request.getParameter("Item_Price");
		String n6 = request.getParameter("Quantity");
		String n7 = request.getParameter("Company_name");
		String n8 = request.getParameter("vender_name");
		String n9 = request.getParameter("Mobile_no");
		String n10 = request.getParameter("Address");
		String n11 = request.getParameter("State");
		String n12 = request.getParameter("City");
		String n13 = request.getParameter("Pin_code");
	%>

	<%=invoiceNo%>
	<%=itemCode%>
	<%=itemName%>
</body>
</html>