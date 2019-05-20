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
		String itemCode = request.getParameter("itemCode1");
		String itemName = request.getParameter("itemName1");
		String itemType = request.getParameter("itemType1");
		String itemPrice = request.getParameter("itemPrice1");
		String quantity = request.getParameter("quantity1");
		/*String itemCode2 = request.getParameter("itemCode2");
		String itemName2 = request.getParameter("itemName2");
		String itemType2 = request.getParameter("itemType2");
		String itemPrice2 = request.getParameter("itemPrice2");
		String quantity2 = request.getParameter("quantity2");
		String itemCode3 = request.getParameter("itemCode3");
		String itemName3 = request.getParameter("itemName3");
		String itemType3 = request.getParameter("itemType3");
		String itemPrice3 = request.getParameter("itemPrice3");
		String quantity3= request.getParameter("quantity3");*/
		String companyName = request.getParameter("companyName");
		String venderName = request.getParameter("venderName");
		String mobileNo = request.getParameter("mobileNo");
		String address = request.getParameter("address");
		String state = request.getParameter("state");
		String city = request.getParameter("city");
		String pinCode = request.getParameter("pinCode");
	%>

<center>
<h1>Invoice Bill</h1>
	<form action="index.jsp">
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
	       <td><%=itemCode %></td>
	      
	       
	       <td><%=itemName %></td>
	       
	       <td><%=itemType %></td>
	       
	      
	       <td><%=itemPrice %></td>
	       
	       <td><%= quantity%></td>
	       </tr>
	       
	       
	    
	         
	   
	      
	       </table>
	       </div>
	       
	    
	        <button type="submit">Add more Items</button>
	</form>

	</center>
	
</body>
</html>