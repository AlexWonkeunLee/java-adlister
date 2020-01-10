<%--
  Created by IntelliJ IDEA.
  User: wonkeunlee00
  Date: 1/10/20
  Time: 9:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Display Order</title>
</head>
<body>
<%
    String address = request.getParameter("address");
    String pepp = request.getParameter("pepperoni");
    String sausage = request.getParameter("sausage");
    String peppers = request.getParameter("peppers");
    String onion = request.getParameter("onion");
    if (address == null || address.equals("") || pepp == null || pepp.equals("") || sausage== null || sausage.equals("") || peppers == null || peppers.equals("") || onion == null || onion.equals("")){
        response.sendRedirect("/pizza-order.jsp");
    }
%>

    Crust type: <%=request.getParameter("crust")%><br>
    Sauce type: <%=request.getParameter("sauce")%><br>
    Size: <%=request.getParameter("size")%><br>
    <h3>Toppings:</h3>
    Pepperoni: <%=request.getParameter("pepperoni")%><br>
    Sausage: <%=request.getParameter("sausage")%><br>
    Peppers: <%=request.getParameter("peppers")%><br>
    Onion: <%=request.getParameter("onion")%><br>
    Address: <%=request.getParameter("address")%>

</body>
</html>
