package gaurav;

import java.io.IOException;
import java.io.PrintWriter;

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
        
        String invoiceNo=request.getParameter("invoiceNo");
        String itemCode=request.getParameter("itemCode"); 
        String itemName=request.getParameter("itemName"); 
        String itemType=request.getParameter("itemType"); 
       String itemPrice=request.getParameter("itemPrice"); 
        String quantity=request.getParameter("quantity"); 
        String companyName=request.getParameter("companyName"); 
       String venderName=request.getParameter("venderName"); 
        String mobileNo=request.getParameter("mobileNo"); 
        String address=request.getParameter("address"); 
        String state=request.getParameter("state"); 
        String city=request.getParameter("city"); 
        String pincode=request.getParameter("pinCode");
         
          
         
       RequestDispatcher dispatcher = request.getRequestDispatcher("result.jsp");
       dispatcher.forward(request, response);
       
       
        }  
      
    } 