<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="../partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="../partials/navbar.jsp" />

    <div class="container">
        <h1>Viewing your profile.</h1>
        <h2>Welcome, <c:out value="${sessionScope.name}"/></h2>
        <a href="/logout">Logout</a>
    </div>

</body>
</html>