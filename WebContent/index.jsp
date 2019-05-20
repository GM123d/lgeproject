<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>  
<script type="text/javascript">
var i=0;
var buttonId=0;


function validation(){
	var companyName=document.getElementById("company").value;
	var venderName=document.getElementById("vender").value;
	var mobileNo=document.getElementById("mobile").value;
	var itemType=document.getElementById("item").value;
    var t=0;
    //alert("submit btn "+ itemType);
	//console.log(itemType);
if(itemType==""){
	document.getElementById("itemType").innerHTML="*Select the Item Type";
	t=t+1;
	
	}
	
	
	else{
		document.getElementById("itemType").innerHTML="";
	//document.getElementById("item").focus();
		
		
	}
	if(mobileNo==null||mobileNo==""){
		document.getElementById("mobile").focus();
		document.getElementById("mobileNo").innerHTML="*Enter the mobile No. ";
		t=t+1;
		
	}else if(isNaN(mobileNo)||mobileNo.length>10){
		
		document.getElementById("mobile").focus();
		document.getElementById("mobileNo").innerHTML="Invalid Mobile No."
		t=t+1;
	}
		else{
			
			document.getElementById("mobileNo").innerHTML=""
			
		}
	
	if(venderName==null||venderName==""){
		document.getElementById("vender").focus();
		document.getElementById("venderName").innerHTML="*Enter the Vender Name ";
		t=t+1;
		
	}else{
		document.getElementById("venderName").innerHTML="";
	}
	
	if(companyName==null||companyName==""){
		
		document.getElementById("company").focus();
		document.getElementById("companyName").innerHTML="*Enter the Company Name";
		t=t+1;
		
	}
	
	
	else{
		
		document.getElementById("companyName").innerHTML="";
	}
	if(t>0){
			
			return false;
		}else{
			return true;
		}
		
	}


function itemRemove(button){
	
	i=i-1;
	var b=Number(button);
	buttonId=buttonId-1;
	//console.log(i);
	
	//console.log(button);
	//console.log(buttonId);
	
	$(document).ready(function(){
		
		var del="#row"+button;
			$(del).remove();
			
			document.getElementById("numberOfItems").innerHTML="Items - "+i;
			
	});
	
	//var j;
	//for(j=b+1;j<=buttonId;j++){
		
		//	var oldIdRow="#row"+(j);
		//	var newIdRow="row"+(j-1);
		//	var oldIdButton="#"+(j);
		//	var newIdButton=""+(j-1);
		//	console.log(oldIdRow);
		//	console.log(newIdRow);
			//console.log("sucess");
		//$(document).ready(function(){
				
		//	$(oldIdRow).attr('id',newIdRow);
		//		$(oldIdButton).attr('id',newIdButton);
				
		//	});
			
			
			
		//}
}

function anotherItem(){
	if(validation()){
	//var v = $("#table tr").length;
	//for(var a = 0; a<v; a++){
		var  itemCode=document.getElementsByName("itemCode")[0].value;
		var itemName=document.getElementsByName("itemName")[0].value;
		var itemType=document.getElementsByName("itemType")[0].value;
		var itemPrice=document.getElementsByName("itemPrice")[0].value;
		var quantity=document.getElementsByName("quantity")[0].value;
		
	//}
	//alert("item type another item "+ itemType);
	console.log("gaurav");
	
	
	$(document).ready(function(){
		if(i==0){
			
			$("#inventory").append(" <tr><td><b>Item code</b></td><td><b>Item name</b></td><td><b>Item type</b></td><td><b>Item Price</b></td> <td><b>Quantity</b></td></tr>");
			$("#inventory").append("<tr  id=row"+buttonId+"><td><input name=itemCodeData value="+itemCode+" readonly></td><td><input name=itemNameData value="+itemName+" readonly></td><td><input name=itemTypeData value="+itemType+" readonly></td><td><input name=itemPriceData value="+itemPrice+" readonly></td><td><input name=quantityData value="+quantity+" readonly></td><td><button id="+buttonId+" onclick=itemRemove(this.id)>Delete</button><td></tr>");	
			i=i+1;
			buttonId=buttonId+1;
		}else{
			if(i%2!=0){
				
				
				$("#inventory").append("<tr id=row"+buttonId+"><td><input name=itemCodeData value="+itemCode+" readonly></td><td><input name=itemNameData value="+itemName+" readonly></td><td><input name=itemTypeData value="+itemType+" readonly></td><td><input name=itemPriceData value="+itemPrice+" readonly></td><td><input name=quantityData value="+quantity+" readonly></td><td><button id="+buttonId+" onclick=itemRemove(this.id)>Delete</button><td></tr>");	
				buttonId=buttonId+1;
				i=i+1;
			}else{
				

				$("#inventory").append("<tr  id=row"+buttonId+"><td><input name=itemCodeData value="+itemCode+" readonly></td><td><input name=itemNameData value="+itemName+" readonly></td><td><input name=itemTypeData value="+itemType+" readonly></td><td><input name=itemPriceData value="+itemPrice+" readonly></td><td><input name=quantityData value="+quantity+" readonly></td><td><button id="+buttonId+" onclick=itemRemove(this.id)>Delete</button><td></tr>");	
				buttonId=buttonId+1;	
				i=i+1;
			}
			
		}
		
		document.getElementById("numberOfItems").innerHTML="Items - "+i;
	
	});
	
	//console.log(i);
	//console.log(buttonId);


	}
}
	


</script>

<style type="text/css">

		div {

  background-color: lightgrey;
  width:1000px;
  border:3px solid black;
  
}
#inventory{

width:800px;
}
.space{
height:20px;
border:0px solid white;
background-color:white;

}

#formSubmit{

width: 100px;
height: 50px;


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
<h1>Invoice Bill</h1>
	<form  action="output" method="post" onsubmit="return validation()" >
	<div >
	<table >
	
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
	       <td><input type="text" id="mobile" name= "mobileNo"><br/><span id="mobileNo" class="invalid" ></span></td>
	       </tr>
	    
	       <tr >
	         <td>Item code:</td>
	       <td>Item name:</td>
	       <td>Item type:</td>
	        <td>Item Price:</td>
	        <td>Quantity:</td>
	       </tr>
	     
	     
	 
	        
	        
	       <tr >
	       <td><input type ="text" name="itemCode"></td>
	      
	       
	       <td><input type ="text" name = "itemName"></td>
	       
	       <td><select id="item" name ="itemType">
	       <option value = "">Select Option</option>
	       <option value= "Stationary">Stationary</option>
	       <option value = "Electronics">Electronics Goods</option>
	       <option value = "Grocery">Grocery</option>
	       <option value  = "Hardware">Hardware Goods</option>
	       </select><br/><span id="itemType" class="invalid"></span></td>
	       
	      
	       <td><input type ="text" name="itemPrice"></td>
	       
	       <td><input type="text"  name="quantity"></td>
	       </tr>
	        <tr>
	       <td></td>
	       <td></td>
	      <td><button type="button"onclick="return anotherItem()">Add Item</button></td>
	       </tr>
	       
	    
	      <!--    <tr>
	       
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
	       </tr>-->
	   
	       </table>
	       
	       </div>
	       <div class="space"></div>
	       <div><table id="inventory">
	       
	       
	       
	       
	       </table>
	      
	       <p><b id="numberOfItems"></b></p>
	       
	       </div>
	       <div class="space"></div>
	       <button id="formSubmit" type="submit">Submit</button>
	
	</form>
	
	

	</center>
	
	
</body>
</html>