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
int i=0;			
			String invoiceNo="abcd";
		Class.forName("org.h2.Driver");
		
		Connection con=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test","sa", "");
		
		Statement stm=con.createStatement();
		//stm.execute("create table gaurav(ID int)");
	stm.execute("create table Member_Master"
			+"(ID int PRIMARY KEY AUTO_INCREMENT,Invoice_No int AUTO_INCREMENT,Company char(50),Vender char(50), Address char(50),City char(50),State char(50),Pin_Code char(6), Mobile_No char(10))"
		);
		stm.execute("create table Inventory"
					+"(Item_id int not null primary key auto_increment,Item_Code int, Item_Name char(50),Item_Type char(50),Quantity int,Price float,id int ,foreign key(id) references Member_Master(id))"
				);
		//stm.execute("drop table if exists gaurav");
	//stm.executeUpdate("insert into gaurav (id) values(n)");
	//stm.executeUpdate("insert into gaurav (id,company) values(11,'LG electronics')");
		//ResultSet r=stm.executeQuery("select id from gaurav where id=10");
		//System.out.println(r);
//stm.executeUpdate("insert into member_master(Invoice_No char(50)) values("+invoiceNo+")");
		//ResultSet rs=stm.executeQuery("select * from inventory where item_code=123");
		//while(rs.next()) {
			
			//i=i+1;
			
		//}
		//System.out.println(i);
		con.close(); 
		System.out.println("Successful");
		}catch(Exception e) {
			
			System.out.println(e);
			
		}
		
		
	}

}
