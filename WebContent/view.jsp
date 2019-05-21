<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.io.IOException"%>
<%@ page import="java.util.concurrent.SynchronousQueue"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>  
<script>
function edit(id){
	
	console.log("gaurav");
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
  width:1100px;
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

String s="";

try{
	int primaryKey=0;
	Class.forName("org.h2.Driver");

	Connection con=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test","sa", "");

	PreparedStatement stmt = con.prepareStatement("select * from member_master where invoice_no = ?");
	stmt.setString(1, s);
	ResultSet memberMaster=stmt.executeQuery();
	while(memberMaster.next()){
		primaryKey=memberMaster.getInt("id");%>
		
		
		
<center>
<h1>Invoice Bill</h1>
	<form action="Edit" method="post">
	<div>
	<table>
	
	<tr>
	       <td>Company name:</td>
	       <td><%=memberMaster.getString("company") %></td>
	       </tr>
	
	       <tr>
	        <td>Vender name:</td>
	       <td><%=memberMaster.getString("vender") %></td>
	       <td></td>
	       <td>Invoice no.:</td>
	       <td><%= memberMaster.getString("invoice_no")%></td>
	       </tr>
	       
	       
	        <tr>
	       <td>Address:</td>
	       <td><%=memberMaster.getString("address") %></td>
	       <td></td>
	         <td>City:</td>
	       <td><%=memberMaster.getString("city") %></td>
	       </tr>
	       
	       <tr>
	       <td>State:</td>
	       <td><%=memberMaster.getString("state")%></td>
	       <td></td>
	         <td>Pin Code:</td>
	       <td><%=memberMaster.getString("pin_code")%></td>
	       </tr>
	       	<tr>
	       <td>Mobile no:</td>
	       <td><%=memberMaster.getString("mobile_no")%></td>
	       </tr>
	      
	       <tr>
	        <td>Item Id:</td>
	         <td>Item code:</td>
	       <td>Item name:</td>
	       <td>Item type:</td>
	        <td>Item Price:</td>
	        <td>Quantity:</td>
	     
	       </tr>
	     
		
		
	<% }
	

	
	PreparedStatement stm = con.prepareStatement("select * from inventory where id = ?");
	stm.setInt(1, primaryKey);
	ResultSet inventory=stm.executeQuery();
	while(inventory.next()){
	
	%>
		
	<tr id="row<%=inventory.getInt("item_id")%>">
	 <td><input  name="itemId" value="<%=inventory.getInt("item_id") %>" readonly></td>
	       <td><input  name="itemCode" value="<%=inventory.getInt("item_code") %>" readonly></td>
	      
	       
	        <td><input name="itemName" value="<%=inventory.getString("item_name") %>" readonly></td>
	       
	       <td><input name="itemType" value="<%=inventory.getString("item_type")%>" readonly></td>
	       
	      
	       <td><input name="itemPrice" value="<%=inventory.getFloat("price")%>" readonly></td>
	       
	        <td><input name="quantity" value="<%=inventory.getInt("quantity")%>" readonly></td>
	       <td><button id="<%=inventory.getInt("item_id")%>" type="button" onclick="return edit(this.id)">Edit</button></td>
	       </tr>
<%  		
	
	}	
con.close();%>
	 </table>
	       </div>
	       
	    
	        <button type="submit">Submit</button>
	</form>

	</center>

	

</body>
</html>
<% }catch(Exception e){
	System.out.println(e);	
	
}

%>
	      