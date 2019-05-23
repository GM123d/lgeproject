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
function newItem(){
	console.log("gaurav");
	$(document).ready(function(){
		$("#table").append("<tr ><td></td><td><input type =text name = itemCodeNew></td>	<td><input type=text name=itemNameNew></td><td><select id=item name =itemTypeNew><option value = >Select Option</option><option value= Stationary>Stationary</option><option value = Electronics>Electronics Goods</option><option value = Grocery>Grocery</option><option value  = Hardware>Hardware Goods</option></select><br/></td>"
+"<td><input type =text name=itemPriceNew></td><td><input type=text  name=quantityNew></td><td><button formaction=Insert>Insert</button></td></tr>");
			      
	});
	
	$("#addItem").hide();
	
	
    
	
	
}

function dele(id){
	console.log(id);
	var rowId="#row"+id;
	$(document).ready(function(){
		$(rowId).remove();
		
	});
	
	
}

function edit(id){
	
	
	$(document).ready(function(){
		//var colId="#col"+id;
		var delId="#del"+id;
		var id1="#row"+id+" >td > input";
		var id2="#"+id;
		$(id1).removeAttr("readonly");
		$(id2).attr("onclick","return submitEdit(this.id)");
		$(id2).text("Submit");
		//$(colId).remove();
		$(delId).hide();
	});

}
function submitEdit(id){
	var delId="#del"+id;
   
	var id1="#row"+id+" >td > input";
	var id2="#"+id;
	$(id1).attr("readonly","readonly");
	$(id2).attr("onclick","return edit(this.id)");
	$(id2).text("Edit");
   // $(rowId).append("<td id=col"+id+"><button id=del"+id+" type=button onclick=return dele('"+id+"')>Delete</button></td>");
	$(delId).show();

	
	
}
</script>
<style type="text/css">
	div {

  background-color: lightgrey;
  width:1200px;
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



String s=(String)session.getAttribute("invoiceNo");


try{
	int primaryKey=0;
	Class.forName("org.h2.Driver");

	Connection con=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test","sa", "");

	PreparedStatement stmt = con.prepareStatement("select * from member_master where invoice_no = ?");
	stmt.setInt(1, Integer.parseInt(s));
	ResultSet memberMaster=stmt.executeQuery();
	while(memberMaster.next()){
		primaryKey=memberMaster.getInt("id");%>
		
		
		
<center>
<h1>Invoice Bill</h1>
	<form action="Delete" method="post">
	<div>
	<table id="table">
	
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
	       <td><button id="del<%=inventory.getInt("item_id")%>" type="button" onclick="return dele(<%=inventory.getInt("item_id")%>)">Delete</button></td>

	       </tr>
<%  		
	
	}	
con.close();%>
	 </table>
	       </div>
	       
	    
	        <button type="submit">Submit</button>
	        <button id="addItem" type="button" onclick="return newItem()">Add item</button>
	        <button formaction="invoiceGen.jsp">Generate Bill</button>
	</form>

	</center>

	

</body>
</html>
<% }catch(Exception e){
	System.out.println(e);	
	
}

%>
	      