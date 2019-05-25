package gaurav;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Session
 */
public class Session extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {


		
		
		String s = request.getParameter("invoiceNo");
	
		HttpSession session = request.getSession();
		session.setAttribute("invoiceNo", s);
		response.sendRedirect("view.jsp");

	}

}
