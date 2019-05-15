<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style type="text/css">
		div {

  background-color: lightgrey;
}


	</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
	<form action="result.jsp" method="post">
	<div>
	<table>
	       <tr>
	       <td>Invoice no.:</td>
	       <td><input type="text" name = "invoiceNo"></td>
	       </tr>	
	      <tr>
	        <td>Item code:</td>
	       <td><input type ="text" name="itemCode"></td>
	       <td></td>
	       <td>Item name:</td>
	       <td><input type ="text" name = "itemName"></td>
	       </tr>
	       
	       <tr>
	       <td>Item type:</td>
	       <td><select name ="Item_type">
	       <option value = "Select Option ">Select Option</option>
	       <option value= "Stationary">Stationary</option>
	       <option value = "Electronics Goods">Electronics Goods</option>
	       <option value = "Grocery">Grocery</option>
	       <option value  = "Hardware Goods">Hardware Goods</option>
	       </select></td>
	       <td></td>
	        <td>Item Price:</td>
	       <td><input type ="text" name="Item_Price"></td>
	       </tr>
	       
	       <tr>
	       <td>Quantity:</td>
	       <td><input type="text"  name="Quantity"></td>
	       </tr>
	       <tr>
	       <td>Company name:</td>
	       <td><input type="text" name= "Company_name"></td>
	       </tr>
	       <tr>
	       <td>Vender name:</td>
	       <td><input type="text" name= "vender_name"></td>
	       </tr>
	       <tr>
	       <td>Mobile no:</td>
	       <td><input type="text" name= "Mobile_no"></td>
	       </tr>
	       <tr>
	       <td>Address:</td>
	       <td><input type="text" name= "Address"></td>
	       <td></td>
	         <td>City:</td>
	       <td><input type="text" name= "City"></td>
	       </tr>
	       
	       <tr>
	       <td>State:</td>
	       <td><input type="text" name= "State"></td>
	       <td></td>
	         <td>Pin Code:</td>
	       <td><input type="text" name= "Pin_code"></td>
	       </tr>
	       <tr>
	       <td></td>
	       </tr>
	       </table>
	       </div>
	       
	       <button type="submit">Submit</button>
	       
	</form>

	</center>
</body>
</html>