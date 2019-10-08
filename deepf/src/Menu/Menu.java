package Menu;

import java.util.HashMap;

public class Menu {

	HashMap<String, String> pages = new HashMap<>();

	public String getPage(String content) {
		pages.put("home", "mainpage.jsp");		
		pages.put("login", "home.jsp");
		pages.put("register", "Register.jsp");
		pages.put("contact", "ContactUs.jsp");
		pages.put("about", "AboutUs.jsp");
		return pages.get(content);
	}

}