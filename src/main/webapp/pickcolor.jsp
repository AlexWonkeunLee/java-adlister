<%--
  Created by IntelliJ IDEA.
  User: wonkeunlee00
  Date: 1/8/20
  Time: 4:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pick Color</title>
</head>
<body>
    <%

    %>
    <form action="/showcolor.jsp" method="POST">
        <label for="color">Enter color: </label>
        <input type="text" name="color" id="color">
        <input type="submit" value="Choose">
    </form>
</body>
</html>
