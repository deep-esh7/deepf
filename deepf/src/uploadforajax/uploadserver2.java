package uploadforajax;


import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import uploadforajax.uploadserver;
@WebServlet("/uploadsuccess")
public class uploadserver2 extends HttpServlet {

		uploadserver service = null;

	public void init(ServletConfig config) throws ServletException {
		service = new uploadserver();
	}

	@Override

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String imgurl = request.getParameter("imgurl");
		String name = request.getParameter("name");
		String description = request.getParameter("description");
		String price = request.getParameter("price");
		String titleimages = request.getParameter("titleimages");
		

		String message = service.doLogin(imgurl, name, description, price, titleimages);
		response.getWriter().write(message);
	}
}