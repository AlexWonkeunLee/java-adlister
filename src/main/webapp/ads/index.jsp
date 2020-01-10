<%--
  Created by IntelliJ IDEA.
  User: wonkeunlee00
  Date: 1/10/20
  Time: 11:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Ads</title>
</head>
<body>
    <h1>ADS!</h1>

    <c:forEach var="ad" items="${ads}">
        <h2>${ad.title}</h2>
        <p>${ad.description}</p>
    </c:forEach>
</body>
</html>
