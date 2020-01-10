<%--
  Created by IntelliJ IDEA.
  User: wonkeunlee00
  Date: 1/10/20
  Time: 10:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Guess</title>
</head>
<body>

    <form action="/result.jsp" method="POST">
        <label for="guess">Guess the number: </label>
        <input type="number" name="guess" id="guess">
        <input type="submit" value="Guess">
    </form>
</body>
</html>
