package glogin;
import com.google.api.client.googleapis.auth.oauth2.GoogleIdToken;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/loginn")
public class LoginGmail extends HttpServlet {
    @Override
    protected void doPost (HttpServletRequest req,
                        HttpServletResponse resp)
                        throws ServletException, IOException {

        resp.setContentType("text/html");

        try {
            String idToken = req.getParameter("id_token");
            GoogleIdToken.Payload payLoad = IdTokenVerifierAndParser.getPayload(idToken);
            String name = (String) payLoad.get("name");
            String email = payLoad.getEmail();
    

            HttpSession session = req.getSession(true);
			session.setAttribute("User", name);
			resp.sendRedirect("Index.jsp");
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}