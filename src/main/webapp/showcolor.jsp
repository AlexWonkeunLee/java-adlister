<%--
  Created by IntelliJ IDEA.
  User: wonkeunlee00
  Date: 1/8/20
  Time: 4:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show Color</title>
</head>
<style>
    body {
        <%
        %>
        background-color: <%=request.getParameter("color")%>;
    }
</style>
<body>
    <a href="/pickcolor.jsp">New Color</a>



</body>
</html>
