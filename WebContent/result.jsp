<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> 
<script>
function edit(id){
	
	
	$(document).ready(function(){
		var id1="#row"+id+" >td > input";
		var id2="#row"+id+" > td > button";
		$(id1).removeAttr("readonly");
		$(id2).attr("onclick","return submitEdit(this.id)");
		$(id2).text("Submit");
		
		
		
	
		
		
		
		
	});

	
}
function submitEdit(id){
	
	var id1="#row"+id+" >td > input";
	var id2="#row"+id+" > td > button";
	$(id1).attr("readonly","readonly");
	$(id2).attr("onclick","return edit(this.id)");
	$(id2).text("Edit");
	
	
}






</script>
<style type="text/css">
	div {

  background-color: lightgrey;
  width:1000px;
  border:3px solid black;
  
}

button{

width:70px;
}

</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String invoiceNo = request.getParameter("invoiceNo");
		String[] itemCode = request.getParameterValues("itemCodeData");
		String[] itemName = request.getParameterValues("itemNameData");
		String[] itemType = request.getParameterValues("itemTypeData");
		String[] itemPrice = request.getParameterValues("itemPriceData");
		String[] quantity = request.getParameterValues("quantityData");
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
		int l=itemPrice.length;
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
	     
	        
	        <%  for(int i=0;i<l;i++){ %>
	       <tr id="row<%=i%>">
	       <td><input  name="itemCode" value="<%=itemCode[i] %>" readonly></td>
	      
	       
	        <td><input name="itemName" value="<%=itemName[i] %>" readonly></td>
	       
	       <td><input name="iteType" value="<%=itemType[i] %>" readonly></td>
	       
	      
	       <td><input name="itemPrice" value="<%=itemPrice[i] %>" readonly></td>
	       
	        <td><input name="quantity" value="<%=quantity[i]%>" readonly></td>
	       <td><button id="<%=i%>" type="button" onclick="return edit(this.id)">Edit</button></td>
	       </tr>
	       <%} %>
	       
	    
	         
	   
	      
	       </table>
	       </div>
	       
	    
	        <button type="submit">Add more Items</button>
	</form>

	</center>
	
</body>
</html>