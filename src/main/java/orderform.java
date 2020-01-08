import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "Order-Form", urlPatterns = "/order-form")
public class orderform extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setHeader("content-type", "text/html");
        PrintWriter print = response.getWriter();
        print.println("<form action=\"/order-summary\" method=\"POST\">" +
                "<label for=\"name\">Product:</label>" +
                "<input type=\"text\" name=\"name\" id=\"name\">" +
                "<label for=\"amount\">Amount:</label>" +
                "<input type=\"text\" name=\"amount\" id=\"amount\">" +
                "<input type=\"submit\" value=\"Order\"></form>");

    }
}