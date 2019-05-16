<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
		div {

  background-color: lightgrey;
}</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String invoiceNo = request.getParameter("invoiceNo");
		String itemCode1 = request.getParameter("itemCode1");
		String itemName1 = request.getParameter("itemName1");
		String itemType1 = request.getParameter("itemType1");
		String itemPrice1 = request.getParameter("itemPrice1");
		String quantity1 = request.getParameter("quantity1");
		String itemCode2 = request.getParameter("itemCode2");
		String itemName2 = request.getParameter("itemName2");
		String itemType2 = request.getParameter("itemType2");
		String itemPrice2 = request.getParameter("itemPrice2");
		String quantity2 = request.getParameter("quantity2");
		String itemCode3 = request.getParameter("itemCode3");
		String itemName3 = request.getParameter("itemName3");
		String itemType3 = request.getParameter("itemType3");
		String itemPrice3 = request.getParameter("itemPrice3");
		String quantity3= request.getParameter("quantity3");
		String companyName = request.getParameter("companyName");
		String venderName = request.getParameter("venderName");
		String mobileNo = request.getParameter("mobileNo");
		String address = request.getParameter("address");
		String state = request.getParameter("state");
		String city = request.getParameter("city");
		String pinCode = request.getParameter("pinCode");
	%>

<center>
	<form action="result.jsp" method="post">
	<div>
	<table>
	
	<tr>
	       <td>Company name:</td>
	       <td><%=companyName %></td>
	       </tr>
	
	       <tr>
	        <td>Vender name:</td>
	       <td><%=venderName %></td>
	       <td></td>
	       <td>Invoice no.:</td>
	       <td><%= invoiceNo%></td>
	       </tr>
	       
	       
	        <tr>
	       <td>Address:</td>
	       <td><%=address %></td>
	       <td></td>
	         <td>City:</td>
	       <td><%=city %></td>
	       </tr>
	       
	       <tr>
	       <td>State:</td>
	       <td><%=state%></td>
	       <td></td>
	         <td>Pin Code:</td>
	       <td><%=pinCode %></td>
	       </tr>
	       	<tr>
	       <td>Mobile no:</td>
	       <td><%=mobileNo %></td>
	       </tr>
	      
	       <tr>
	         <td>Item code:</td>
	       <td>Item name:</td>
	       <td>Item type:</td>
	        <td>Item Price:</td>
	        <td>Quantity:</td>
	       </tr>
	     
	        
	        
	       <tr>
	       <td><%=itemCode1 %></td>
	      
	       
	       <td><%=itemName1 %></td>
	       
	       <td><%=itemType1 %></td>
	       
	      
	       <td><%=itemPrice1 %></td>
	       
	       <td><%= quantity1%></td>
	       </tr>
	       
	       
	    
	         
	       <tr>
	       <td><%=itemCode2 %></td>
	      
	       
	       <td><%=itemName2 %></td>
	       
	       <td><%=itemType2 %></td>
	       
	      
	       <td><%=itemPrice2 %></td>
	       
	       <td><%= quantity2%></td>
	       </tr>
	       
	         
	       <tr>
	       <td><%=itemCode3 %></td>
	      
	       
	       <td><%=itemName3 %></td>
	       
	       <td><%=itemType3 %></td>
	       
	      
	       <td><%=itemPrice3 %></td>
	       
	       <td><%= quantity3%></td>
	       </tr>
	      
	       </table>
	       </div>
	       
	    
	       
	</form>

	</center>
	
</body>
</html>