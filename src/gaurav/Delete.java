package gaurav;
import java.sql.*;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Delete
 */
public class Delete extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ResultSet rs=null;
		PreparedStatement p=null,pm=null,pmm=null;
		Connection con=null;
	String[] itemId=request.getParameterValues("itemId");
	int itemIdKey=Integer.parseInt(itemId[0]);
	int primaryKey=0;	
	
	
		try {
			Class.forName("org.h2.Driver");
			
			 con=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test","sa", "");
			 p=con.prepareStatement("Select * from inventory where item_id=?");
			 pm=con.prepareStatement("Select * from inventory where id=?");
			 pmm=con.prepareStatement("delete from inventory where item_id=?");
		p.setInt(1, itemIdKey);
		 rs=p.executeQuery();
		while(rs.next()) {
			
			primaryKey=rs.getInt("id");
			
		}
	
		 pm.setInt(1, primaryKey);
		 rs=pm.executeQuery();
		 while(rs.next()) {
			 int j=0;
			
			 	for(int i=0;i<itemId.length;i++) {
			if(Integer.parseInt(itemId[i])==rs.getInt("Item_id")) {
			j++;
				
		}
			}
			if(j==0) {
				
				pmm.setInt(1, rs.getInt("Item_id"));
				pmm.executeUpdate();
			  	 
		 }
		 
		 }
		 
		 RequestDispatcher d=request.getRequestDispatcher("Edit");
		 d.forward(request, response);
		
		}catch(Exception e) {
			
			System.out.println(e);
			
		}finally {
			
				try {
					if(p!=null) {
					p.close();
					
					}
					
					if(con!=null) {
						con.close();
						
					}if(pmm!=null) {
						pmm.close();
						
					}if(pm!=null) {
						pm.close();
						
					}
				} catch (SQLException e) {
					
					e.printStackTrace();
				}
			
		}
		
	}
	}
