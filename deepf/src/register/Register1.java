package register;

import java.io.IOException;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import register.register2;
import util.EmailUtility;
@WebServlet("/Register")

public class Register1 extends HttpServlet {

	register2 service = null;
	private String host;
	private String port;
	private String user;
	private String pass;
	
	public void init() {
		// reads SMTP server setting from web.xml file
		ServletContext context = getServletContext();
		host = context.getInitParameter("host");
		port = context.getInitParameter("port");
		user = context.getInitParameter("user");
		pass = context.getInitParameter("pass");
	}
	public void init(ServletConfig config) throws ServletException {
		service = new register2();
	}

	@Override

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("name");
		String email= request.getParameter("email");
		String recipient= request.getParameter("email");
		String phone= request.getParameter("phone");
		String password= request.getParameter("password");
		
		
		String subject = "Thank You For Registering @ DEEP FITNESS!";
		String content = "Thank You " +username+ " For Registering At DeepFitness : No. 1 Health And Fitness Website . Your Login Details Are Email Id :" +email+ " And Password: " +password+ " Thank You!";

		try {
			EmailUtility.sendEmail("smtp.gmail.com", "587", "deepfitnessd@gmail.com", "deepeshkumar", recipient, subject,
					content);
			
		} catch (Exception ex) {
			ex.printStackTrace();
			ex.getMessage();
		}

String message = service.doRegister(username, email, phone, password);
		
		response.getWriter().write(message);
	}
}