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
    	 
        //response.setContentType("text/html");  
        PrintWriter out = response.getWriter();  
        
        String invoiceNo=request.getParameter("invoiceNo"); 
        System.out.println("gaurav");
        String n2=request.getParameter("Item_code"); 
        String n3=request.getParameter("Item _name"); 
        String n4=request.getParameter("Item_type"); 
       String n5=request.getParameter("Item_Price"); 
        String n6=request.getParameter("Quantity"); 
        String n7=request.getParameter("Company_name"); 
       String n8=request.getParameter("vender_name"); 
        String n9=request.getParameter("Mobile_no"); 
        String n10=request.getParameter("Address"); 
        String n11=request.getParameter("State"); 
        String n12=request.getParameter("City"); 
        String n13=request.getParameter("Pin_code");
         out.println("Invoice No.- "+invoiceNo);
         out.println("Item Code -  "+n2);
         out.println("Item Name-  "+n3);
         out.println("Item Type -  "+n4);
         out.println("Item price - "+n5);
         out.println("Quantity -   "+n6);
         out.println("Company Name - "+n7);
         out.println("Vender Name "+n8);
         out.println("Mobile No.- "+n9);
         out.println("Address - "+n10);
         out.println("State - "+n11);
         out.println("City -"+n12);
         out.println("Pincode - "+n13);
          
         
       RequestDispatcher dispatcher = request.getRequestDispatcher("Welcome");
       dispatcher.forward(request, response);
       
       
        }  
      
    } 