package order;


import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import uploadforajax.uploadserver;
import util.EmailUtility;
@WebServlet("/order")
public class order2 extends HttpServlet {

		order1 service = null;
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
		service = new order1();
	}

	@Override

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String recipient = request.getParameter("email");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String pincode = request.getParameter("pincode");
		String mobile = request.getParameter("mobile");
		String productid = request.getParameter("productid");
		String productname = request.getParameter("productname");
		String productprice = request.getParameter("productprice");
		String paymentlink = request.getParameter("paymentlink");
		
		
		String subject = "Order Placed Successfully!";
		String content = "Thank You " +name+ " For Placing Your Order At DeepFitness : No. 1 Health And Fitness Website . You Have Ordered " +productname+ " With Product Id " +productid+ " Worth of Rs. " +productprice+ " Please Make The Payment To Confirm Your Order. Click The Below Link TO Make The Payment " +paymentlink+ "" ;		
		try {
			EmailUtility.sendEmail("smtp.gmail.com", "587", "deepfitnessd@gmail.com", "deepeshkumar", recipient, subject,
					content);
			
		} catch (Exception ex) {
			ex.printStackTrace();
			ex.getMessage();
		}
		String message = service.doLogin(name, email, address, city, state, pincode, mobile, productid, productname, productprice);
		response.getWriter().write(message);
	}
}