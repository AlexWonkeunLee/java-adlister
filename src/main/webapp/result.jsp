<%--
  Created by IntelliJ IDEA.
  User: wonkeunlee00
  Date: 1/10/20
  Time: 11:09 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Result</title>
</head>
<body>
    <%! int win = (int) (Math.random() * ((100 - 1) + 1)) + 1;

    %>

    <%
        request.setAttribute("guess", Integer.parseInt(request.getParameter("guess")));


        request.setAttribute("win", win);
    %>
    <c:choose>
        <c:when test="${guess == win}">
            You have guessed the right number!
        </c:when>
        <c:when test="${guess > win}">
            You guessed too high...
        </c:when>
        <c:when test="${guess < win}">
            You guessed too low...
        </c:when>
    </c:choose>

    <a href="/guess.jsp">New Number</a>
</body>
</html>
