<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@include file="logout.jsp" %>
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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/0.9.0rc1/jspdf.min.js"></script>
<script
	src="https://unpkg.com/html2canvas@1.0.0-alpha.9/dist/html2canvas.js"></script>
<script>
	function print() {
		console.log("gaurav");
		var container = document.getElementById("print");
		console.log(container);
		html2canvas(container).then(function(canvas) {
			var link = document.createElement("a");
			document.body.appendChild(link);
			link.download = "html_image.png";
			link.href = canvas.toDataURL("image/png");
			link.target = '_blank';
			link.click();
		});
	}
</script>
<style type="text/css">
div {
	background-color: lightgrey;
	border: 3px solid black;
}

#print {
	margin-top: 100px;
	background-color: white;
	height: 500px;
	border: none;
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		String s = (String) session.getAttribute("invoiceNo");
 if(s==null||s==""){
    	 
    	 
    	 response.sendRedirect("invoice.jsp");
     }
		try {
			int primaryKey = 0;
			Class.forName("org.h2.Driver");

			Connection con = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test", "sa", "");

			PreparedStatement stmt = con.prepareStatement("select * from member_master where invoice_no = ?");
			stmt.setString(1,s);
			ResultSet memberMaster = stmt.executeQuery();
			while (memberMaster.next()) {
				primaryKey = memberMaster.getInt("id");
	%>



	<center>

		<div id="print">
			<h1>Invoice Bill</h1>
			<form action="Delete" method="post">
				<div>
					<table id="table">

						<tr>
							<td>Company name:</td>
							<td><%=memberMaster.getString("company")%></td>
						</tr>

						<tr>
							<td>Vender name:</td>
							<td><%=memberMaster.getString("vender")%></td>
							<td></td>
							<td>Invoice no.:</td>
							<td><%=memberMaster.getString("invoice_no")%></td>
						</tr>


						<tr>
							<td>Address:</td>
							<td><%=memberMaster.getString("address")%></td>
							<td></td>
							<td>City:</td>
							<td><%=memberMaster.getString("city")%></td>
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



						<%
							}

								PreparedStatement stm = con.prepareStatement("select * from inventory where id = ?");
								stm.setInt(1, primaryKey);
								ResultSet inventory = stm.executeQuery();
								while (inventory.next()) {
						%>

						<tr id="row<%=inventory.getInt("item_id")%>">
							<td><input name="itemId"
								value="<%=inventory.getInt("item_id")%>" readonly></td>
							<td><input name="itemCode"
								value="<%=inventory.getInt("item_code")%>" readonly></td>


							<td><input name="itemName"
								value="<%=inventory.getString("item_name")%>" readonly></td>

							<td><input name="itemType"
								value="<%=inventory.getString("item_type")%>" readonly></td>


							<td><input name="itemPrice"
								value="<%=inventory.getFloat("price")%>" readonly></td>

							<td><input name="quantity"
								value="<%=inventory.getInt("quantity")%>" readonly></td>

						</tr>
						<%
							}
								con.close();
						%>
					</table>
				</div>
		</div>
		<button formaction="task.jsp">Go back to Task menu</button>
		<button id="cmd" type="button" onclick="return print()">Get
			Pdf</button>

		</form>

	</center>



</body>
</html>
<%
	} catch (Exception e) {
		System.out.println(e);

	}
%>
