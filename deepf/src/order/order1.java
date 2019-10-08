package order;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class order1 {
	public String doLogin(String name,String email,String address,String city, String state,String pincode,String mobile,String productid,String productname,String productprice) {
		Connection con = null;
		String message = null;
		try {System.out.println("hello");
			// loading the driver class
			Class.forName("com.mysql.jdbc.Driver");
			// getting the connection from DriverManager factory Class by passing the
			// connection url and credentials
			con = DriverManager.getConnection("jdbc:mysql://us-cdbr-iron-east-05.cleardb.net/heroku_4dd231616dd25d5?reconnect=true", "bf9f7203541431", "f32bf948");
			// creating prepared statement for our required query
			PreparedStatement statement = con.prepareStatement("insert into Orders(name,email,address,city,state,mobile,pincode,productid,productname,productprice) values (?,?,?,?,?,?,?,?,?,?)");
			// setting the parameters
			statement.setString(1, name);
			statement.setString(2, email);
			statement.setString(3, address);
			statement.setString(4, city);
			statement.setString(5, state);
			statement.setString(6, mobile);
			statement.setString(7, pincode);
			statement.setString(8, productid);
			statement.setString(9, productname);
			statement.setString(10, productprice);
			// executing the prepared statement, which returns a ResultSet
			int i= statement.executeUpdate();
			 
			if(i>0)   {
				message = "Your Order Is Placed Please Make The Payment To Confirm It!";
				
			} else {
				message = "Sorry Your Order Is Not Placed";
			}
		} catch (Exception e) {
			message = "FAILURE";
			e.printStackTrace();
		}
		return message;
	}
}




