import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "Order-Summary", urlPatterns = "/order-summary")
public class ordersummary extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        PrintWriter print = response.getWriter();
        String name = request.getParameter("name");
        String amount = request.getParameter("amount");
        print.println("<h1>Product Name: " + name + "</h1>");
        print.println("<h1>Amount: " + amount + "</h1>");

    }
}