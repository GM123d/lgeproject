package gaurav;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.io.IOException;
import java.util.concurrent.SynchronousQueue;

import java.io.PrintWriter;
import java.lang.Class;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.h2.engine.Session;

public class output extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// response.sendRedirect("Welcome");

		response.setContentType("text/html");
		ResultSet rs = null;
		// String invoiceNo = request.getParameter("invoiceNo");
		String companyName = request.getParameter("companyName");
		String venderName = request.getParameter("venderName");
		String mobileNo = request.getParameter("mobileNo");
		String address = request.getParameter("address");
		String state = request.getParameter("state");
		String city = request.getParameter("city");
		String pinCode = request.getParameter("pinCode");
		PrintWriter out = response.getWriter();
		String[] itemCode = request.getParameterValues("itemCodeData");
		String[] itemName = request.getParameterValues("itemNameData");
		String[] itemType = request.getParameterValues("itemTypeData");
		String[] itemPrice = request.getParameterValues("itemPriceData");
		String[] quantity = request.getParameterValues("quantityData");
		int l = itemCode.length;
		try {
			Class.forName("org.h2.Driver");
			Connection con = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test", "sa", "");
			Statement stm = con.createStatement();
			stm.executeUpdate(
					"insert into member_master (Company,Vender, Address,City,State,Pin_Code, Mobile_No) values('"
							+ companyName + "','" + venderName + "','" + address + "','" + city + "','" + state + "','"
							+ pinCode + "','" + mobileNo + "')");
			int d = 0;
			int j = 1;
			int invoiceNo=0;
			rs = stm.executeQuery("Select max(id) from member_master");
			while (rs.next()) {
				d = rs.getInt(j);
				j++;
			}

			PreparedStatement p = con.prepareStatement("Select * from member_master where id=?");
			p.setInt(1, d);
			rs = p.executeQuery();
			if(rs.next()) {
				
				invoiceNo=rs.getInt("invoice_no");
				
			}
			HttpSession session=request.getSession();
			session.setAttribute("invoiceNo",Integer.toString(invoiceNo));

			for (int i = 0; i < l; i++) {

				stm.executeUpdate("insert into inventory (Item_Code, Item_Name,Item_Type,Quantity,Price,id) values('"
						+ Integer.parseInt(itemCode[i]) + "','" + itemName[i] + "','" + itemType[i] + "','"
						+ Integer.parseInt(quantity[i]) + "','" + Float.parseFloat(itemPrice[i]) + "','" + d + "')");

			}

			con.close();
			// RequestDispatcher dispatcher = request.getRequestDispatcher("result.jsp");
			// dispatcher.forward(request, response);
			response.sendRedirect("invoiceGen.jsp");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.print(e);
		}

	}

	// String[] s=request.getParameterValues("gaurav");
	// for(int i=0;i<2;i++) {
	// out.println(s[i]);}
	// for(int i=0;i<3;i++) {
	// out.println(s[i]);}
	/*
	 * String invoiceNo = request.getParameter("invoiceNo"); int itemCode =
	 * Integer.parseInt(request.getParameter("itemCode")); String itemName =
	 * request.getParameter("itemName"); String itemType =
	 * request.getParameter("itemType"); float itemPrice
	 * =Float.parseFloat(request.getParameter("itemPrice")); int quantity =
	 * Integer.parseInt(request.getParameter("quantity"));
	 */
	/*
	 * String itemCode2 = request.getParameter("itemCode2"); String itemName2 =
	 * request.getParameter("itemName2"); String itemType2 =
	 * request.getParameter("itemType2"); String itemPrice2 =
	 * request.getParameter("itemPrice2"); String quantity2 =
	 * request.getParameter("quantity2"); String itemCode3 =
	 * request.getParameter("itemCode3"); String itemName3 =
	 * request.getParameter("itemName3"); String itemType3 =
	 * request.getParameter("itemType3"); String itemPrice3 =
	 * request.getParameter("itemPrice3"); String quantity3=
	 * request.getParameter("quantity3");
	 */
	/*
	 * String companyName = request.getParameter("companyName"); String venderName =
	 * request.getParameter("venderName"); String mobileNo =
	 * request.getParameter("mobileNo"); String address =
	 * request.getParameter("address"); String state =
	 * request.getParameter("state"); String city = request.getParameter("city");
	 * String pinCode = request.getParameter("pinCode"); //String item =
	 * request.getParameterValues(arg0); try { Class.forName("org.h2.Driver");
	 * Connection
	 * con=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test","sa", "");
	 * Statement stm=con.createStatement(); System.out.println("gaurav");
	 * 
	 * 
	 * stm.
	 * executeUpdate("insert into member_master (Invoice_No,Company,Vender, Address,City,State,Pin_Code, Mobile_No) values('"
	 * +
	 * invoiceNo+"','"+companyName+"','"+venderName+"','"+address+"','"+city+"','"+
	 * state+"','"+pinCode+"','"+mobileNo+"')");
	 * 
	 * //stm.executeUpdate("insert into member_master (Invoice_No) values("+
	 * //invoiceNo+")"); int d=0; ResultSet
	 * rs=stm.executeQuery("Select max(id) from member_master"); while(rs.next()) {
	 * d=rs.getInt(i); i++; } stm.
	 * executeUpdate("insert into inventory (Item_Code, Item_Name,Quantity,Price,id) values('"
	 * + itemCode+"','"+itemName+"','"+quantity+"','"+itemPrice+"','"+d+"')"); //
	 * System.out.println("invoide no "+invoiceNo);
	 * 
	 * //
	 * stm.executeUpdate("insert into member_master(Invoice_No) values('"+invoiceNo+
	 * "')"); con.close(); } catch(Exception e){
	 * 
	 * System.out.println("Error has occured "+e.getMessage()); }
	 * 
	 * RequestDispatcher dispatcher = request.getRequestDispatcher("result.jsp");
	 * dispatcher.forward(request, response);
	 * 
	 * // response.sendRedirect("result.jsp");
	 */
}
