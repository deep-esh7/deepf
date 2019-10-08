package uploadforajax;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class uploadserver {
	public String doLogin(String imgurl,String name,String description,String price, String titleimages) {
		Connection con = null;
		String message = null;
		try {System.out.println("hello");
			// loading the driver class
			Class.forName("com.mysql.jdbc.Driver");
			// getting the connection from DriverManager factory Class by passing the
			// connection url and credentials
			con = DriverManager.getConnection("jdbc:mysql://us-cdbr-iron-east-05.cleardb.net/heroku_4dd231616dd25d5?reconnect=true", "bf9f7203541431", "f32bf948");
			// creating prepared statement for our required query
			PreparedStatement statement = con.prepareStatement("insert into Products(imgurl,name,description,price,titleimages) values (?,?,?,?,?)");
			// setting the parameters
			statement.setString(1, imgurl);
			statement.setString(2, name);
			statement.setString(3, description);
			statement.setString(4, price);
			statement.setString(5, titleimages);
			// executing the prepared statement, which returns a ResultSet
			int i= statement.executeUpdate();
			 
			if(i>0)   {
				message = "SUCCESS";
				
			} else {
				message = "FAILURE";
			}
		} catch (Exception e) {
			message = "FAILURE";
			e.printStackTrace();
		}
		return message;
	}
}




