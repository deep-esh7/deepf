package ajaxtest;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;



@WebServlet("/DownloadImage")
public class DownloadImage extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException{
	
		byte[] img = null;
		
		ServletOutputStream sos=null;
		
		String sql="select photo from images where contact_id=2 ";
		
		try {
		Connection con = DbConnection.getConnection();
		PreparedStatement ps = con.prepareStatement(sql);
	ResultSet rs=ps.executeQuery();
		if(rs.next()) {
			img = rs.getBytes(1);
		
		}
		sos= res.getOutputStream();
		sos.write(img);
		}
	
	catch(Exception e) {
		e.printStackTrace();
	
	
	}

}
	}
