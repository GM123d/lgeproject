package gaurav;
import java.sql.Connection; 
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException; 
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.io.IOException;
import java.util.concurrent.SynchronousQueue;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Edit
 */
public class Edit extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String[] itemId=request.getParameterValues("itemId");
		String[] itemCode=request.getParameterValues("itemCode");
		String[] itemName=request.getParameterValues("itemName");
		String[] itemType=request.getParameterValues("itemType");
		String[] itemPrice=request.getParameterValues("itemPrice");
		String[] quantity=request.getParameterValues("quantity");
		int primaryKey=0;
		try{Class.forName("org.h2.Driver");

		Connection con=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test","sa", "");
		PreparedStatement stmt = con.prepareStatement("select * from inventory where item_id = ?");
		PreparedStatement stm=con.prepareStatement("update inventory set item_code=? ,item_name=?, item_type=?,price=?,quantity=? where item_id=?");
		for(int i=0;i<itemId.length;i++) {
			stmt.setInt(1, Integer.parseInt(itemId[i]));
			ResultSet r=stmt.executeQuery();
			while(r.next()) {
				stm.setInt(1,Integer.parseInt(itemCode[i]));
				stm.setString(2,itemName[i] );
				stm.setInt(3, );
				stm.setInt(4, );
				stm.setInt(5, );
				stm.setInt(6, );
				
				
				
				
				
				
				
			}
		}
		
		con.close();
		}catch(Exception e) {
					
					System.out.println(e);
				}
			
		response.sendRedirect("view.jsp");
		
	}
	
	

}
