<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">

function validation(){
	var companyName=document.getElementById("company").value;
	var venderName=document.getElementById("vender").value;

	if(companyName==null||companyName==""){
	
		document.getElementById("company").focus();
		document.getElementById("companyName").innerHTML="*Enter the Company Name";
		return false;
	}
	else{
		
		return true;
	}
	if(venderName==null||venderName==""){
		document.getElementById("vender").focus();
		document.getElementById("venderName").innerHTML="*Enter the Vender Name ";
		return false;
	}
		else{
			return true;
	}
		
		
	}
	
	


</script>

<style type="text/css">
		div {

  background-color: lightgrey;
}
.invalid{

color:red;
font-size: 12px;

}




	</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<center>
	<form action="result.jsp" method="post" onsubmit="return validation()">
	<div>
	<table>
	
	<tr>
	   <td>Company name:</td>
	       <td><input id="company" type="text" name= "companyName"><br/><span id="companyName" class="invalid"></span></td>
	       </tr>
	
	       <tr>
	        <td>Vender name:</td>
	       <td><input id="vender" type="text" name= "venderName"><br/><span id="venderName" class="invalid"></span></td>
	       <td></td>
	       <td>Invoice no.:</td>
	       <td><input type="text" name = "invoiceNo"></td>
	       </tr>
	       
	       
	        <tr>
	       <td>Address:</td>
	       <td><input type="text" name= "address"></td>
	       <td></td>
	         <td>City:</td>
	       <td><input type="text" name= "city"></td>
	       </tr>
	       
	       <tr>
	       <td>State:</td>
	       <td><input type="text" name= "state"></td>
	       <td></td>
	         <td>Pin Code:</td>
	       <td><input type="text" name= "pinCode"></td>
	       </tr>
	       	<tr>
	       <td>Mobile no:</td>
	       <td><input type="text" name= "mobileNo"></td>
	       </tr>
	      
	       <tr>
	         <td>Item code:</td>
	       <td>Item name:</td>
	       <td>Item type:</td>
	        <td>Item Price:</td>
	        <td>Quantity:</td>
	       </tr>
	     
	        
	        
	       <tr>
	       <td><input type ="text" name="itemCode1"></td>
	      
	       
	       <td><input type ="text" name = "itemName1"></td>
	       
	       <td><select name ="itemType1">
	       <option value = "Select Option ">Select Option</option>
	       <option value= "Stationary">Stationary</option>
	       <option value = "Electronics">Electronics Goods</option>
	       <option value = "Grocery">Grocery</option>
	       <option value  = "Hardware">Hardware Goods</option>
	       </select></td>
	       
	      
	       <td><input type ="text" name="itemPrice1"></td>
	       
	       <td><input type="text"  name="quantity1"></td>
	       </tr>
	       
	       
	    
	        <tr>
	       
	       <td><input type ="text" name="itemCode2"></td>
	      
	       
	       <td><input type ="text" name = "itemName2"></td>
	       
	       <td><select name ="itemType2">
	       <option value = "Select Option ">Select Option</option>
	       <option value= "Stationary">Stationary</option>
	       <option value = "Electronics">Electronics Goods</option>
	       <option value = "Grocery">Grocery</option>
	       <option value  = "Hardware">Hardware Goods</option>
	       </select></td>
	     
	        
	       <td><input type ="text" name="itemPrice2"></td>
	     
	       <td><input type="text"  name="quantity2"></td>
	       </tr>
	      
	        <tr>
	       
	       <td><input type ="text" name="itemCode3"></td>
	       
	       
	       <td><input type ="text" name = "itemName3"></td>
	       
	       <td><select name ="itemType3">
	       <option value = "Select Option ">Select Option</option>
	       <option value= "Stationary">Stationary</option>
	       <option value = "Electronics">Electronics Goods</option>
	       <option value = "Grocery">Grocery</option>
	       <option value  = "Hardware">Hardware Goods</option>
	       </select></td>
	       
	       <td><input type ="text" name="itemPrice3"></td>
	       
	       <td><input type="text"  name="quantity3"></td>
	       </tr>
	      
	       </table>
	       </div>
	       
	       <button type="submit">Submit</button>
	       
	</form>

	</center>
	
	
</body>
</html>