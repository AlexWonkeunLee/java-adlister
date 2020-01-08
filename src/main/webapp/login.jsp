<%@ page import="java.io.IOException" %><%--
  Created by IntelliJ IDEA.
  User: wonkeunlee00
  Date: 1/7/20
  Time: 1:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <form action="/login.jsp" method="POST">
        <label for="username">Username:</label>
        <input type="text" name="username" id="username">
        <label for="pass">Password:</label>
        <input type="password" name="pass" id="pass">
        <input type="submit" value="Login">
    </form>

    <%
        String username = request.getParameter("username");
        String password = request.getParameter("pass");
        if(!"".equals(username) && username != null && !"".equals(password) && password != null){
            if (username.equals("admin") && password.equals("password")){
                response.sendRedirect("/profile.jsp");
            }
            else {
                response.sendRedirect("/login.jsp");
            }
        }

    %>
</body>
</html>
