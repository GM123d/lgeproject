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

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Edit
 */
public class Edit extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ResultSet r = null;
		Connection con = null;
		// PreparedStatement stmt = null;
		PreparedStatement stm = null;
		String[] itemId = request.getParameterValues("itemId");
		String[] itemCode = request.getParameterValues("itemCode");
		String[] itemName = request.getParameterValues("itemName");
		String[] itemType = request.getParameterValues("itemType");
		String[] itemPrice = request.getParameterValues("itemPrice");
		String[] quantity = request.getParameterValues("quantity");
		// int primaryKey=0;
		try {
			Class.forName("org.h2.Driver");
			con = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test", "sa", "");
			// stmt = con.prepareStatement("select * from inventory where item_id = ?");
			stm = con.prepareStatement(
					"update inventory set item_code=? ,item_name=?, item_type=?,price=?,quantity=? where item_id=?");
			for (int i = 0; i < itemId.length; i++) {
				// stmt.setInt(1, Integer.parseInt(itemId[i]));
				// r=stmt.executeQuery();
				// while(r.next()) {
				stm.setInt(1, Integer.parseInt(itemCode[i]));
				stm.setString(2, itemName[i]);
				stm.setString(3, itemType[i]);
				stm.setFloat(4, Float.parseFloat(itemPrice[i]));
				stm.setInt(5, Integer.parseInt(quantity[i]));
				stm.setInt(6, Integer.parseInt(itemId[i]));
				stm.executeUpdate();

				// }
			}

			response.sendRedirect("view.jsp");

		} catch (Exception e) {

			System.out.println(e);
		} finally {
			try {
				if (con != null)
					con.close();
				// if(stmt != null)
				// stmt.close();
				if (stm != null)
					stm.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

	}

}
