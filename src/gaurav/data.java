package gaurav;
import java.sql.Connection; 
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException; 
import java.sql.Statement;
import java.util.concurrent.SynchronousQueue;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class data  {
	
	public static void main(String[] args) {
		try {
			
		Class.forName("org.h2.Driver");
		
		Connection con=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test","sa", "");
		
		Statement stm=con.createStatement();
		
		//stm.execute("create table gaurav"
		//	+"(id int,company char(50))"
		//	);
		//stm.execute("drop table if exists gaurav");
	//stm.executeUpdate("insert into gaurav (id,company) values(10,'LG')");
	//stm.executeUpdate("insert into gaurav (id,company) values(11,'LG electronics')");
		ResultSet r=stm.executeQuery("select id from gaurav where id=1");
		System.out.println(r);


		
		con.close(); 
		System.out.println("Successful");
		}catch(Exception e) {
			
			System.out.println(e);
			
		}
		
		
	}

}
