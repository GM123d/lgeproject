package gaurav;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Insert
 */
public class Insert extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Connection con = null;
		PreparedStatement p = null, pm = null;
		ResultSet rs = null;
		String[] itemId = request.getParameterValues("itemId");
		String itemCodeNew = request.getParameter("itemCodeNew");
		String itemNameNew = request.getParameter("itemNameNew");
		String itemTypeNew = request.getParameter("itemTypeNew");
		String itemPriceNew = request.getParameter("itemPriceNew");
		String quantityNew = request.getParameter("quantityNew");
		int itemIdKey = Integer.parseInt(itemId[0]);
		int foreignKey = 0;
		try {
			Class.forName("org.h2.Driver");
			con = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test", "sa", "");
			p = con.prepareStatement("Select * from inventory where item_id=?");
			pm = con.prepareStatement(
					"insert into inventory (Item_Code, Item_Name,Item_Type,Quantity,Price,id) values(?,?,?,?,?,?)");
			p.setInt(1, itemIdKey);
			rs = p.executeQuery();
			if (rs.next()) {
				foreignKey = rs.getInt("id");

			}

			pm.setInt(1, Integer.parseInt(itemCodeNew));
			pm.setString(2, itemNameNew);
			pm.setString(3, itemTypeNew);
			pm.setInt(4, Integer.parseInt(quantityNew));
			pm.setFloat(5, Float.parseFloat(itemPriceNew));
			pm.setInt(6, foreignKey);
			pm.executeUpdate();

			con.close();
			response.sendRedirect("view.jsp");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.print(e);
		} finally {
			try {
				if (con != null) {

					con.close();
				}
				if (p != null) {

					p.close();
				}
				if (pm != null) {

					pm.close();
				}

			} catch (Exception e) {

			}

		}

	}

}
