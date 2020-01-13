import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "Logout", urlPatterns = "/logout")
public class Logout extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session != null) {
            Object check = request.getSession().getAttribute("user");
            if (check == null){
                response.sendRedirect("/login");
            }
            else{
                if ((boolean) request.getSession().getAttribute("user")){
                    session.invalidate();
                    response.sendRedirect("/login");
                }
            }
        }
        else {
            response.sendRedirect("/login");
        }
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}