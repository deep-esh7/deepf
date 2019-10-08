package ajaxtest;

import java.sql.Connection;

import java.sql.DriverManager;

public class DbConnection {
	static Connection con=null;
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://us-cdbr-iron-east-05.cleardb.net/heroku_4dd231616dd25d5?reconnect=true","bf9f7203541431","f32bf948");
		}
		catch(Exception e) {
			System.out.println(e);
		}
return con;	}

}
