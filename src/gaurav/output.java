package gaurav;
import java.sql.Connection; 
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException; 
import java.sql.Statement;
import java.util.concurrent.SynchronousQueue;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.Class;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class output extends HttpServlet {
	      
	private static final long serialVersionUID = 1L;
    public void doPost(HttpServletRequest request, HttpServletResponse response)   throws ServletException, IOException {  
    	
    	// response.sendRedirect("Welcome");
    	 
        response.setContentType("text/html");  
        PrintWriter out = response.getWriter();  
        String invoiceNo = request.getParameter("invoiceNo");
		int itemCode1 = Integer.parseInt(request.getParameter("itemCode1"));
		String itemName1 = request.getParameter("itemName1");
		String itemType1 = request.getParameter("itemType1");
		float itemPrice1 =Float.parseFloat(request.getParameter("itemPrice1"));
		int quantity1 = Integer.parseInt(request.getParameter("quantity1"));
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
        try {
       Class.forName("org.h2.Driver");
       Connection con=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test","sa", "");
       Statement stm=con.createStatement();
       System.out.println("gaurav");
    stm.executeUpdate("insert into member_master (Invoice_No,Company,Vender, Address,City,State,Pin_Code, Mobile_No) values('"+
   	    invoiceNo+"','"+companyName+"','"+venderName+"','"+address+"','"+city+"','"+state+"','"+pinCode+"','"+mobileNo+"')");
       
       //stm.executeUpdate("insert into member_master (Invoice_No) values("+
      //invoiceNo+")");
       stm.executeUpdate("insert into inventory (Item_Code, Item_Name,Quantity,Price) values('"+
    		      itemCode1+"','"+itemName1+"','"+quantity1+"','"+itemPrice1+"')");
      // System.out.println("invoide no "+invoiceNo);
      
     //  stm.executeUpdate("insert into member_master(Invoice_No) values('"+invoiceNo+"')");	       
       con.close();
       }
        catch(Exception e){
        	
        	System.out.println("Error has occured "+e.getMessage());
        }
         
       RequestDispatcher dispatcher = request.getRequestDispatcher("result.jsp");
       dispatcher.forward(request, response);
       
      // response.sendRedirect("result.jsp");
        }  
      
    } 