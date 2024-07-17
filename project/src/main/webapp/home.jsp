<%--
  Created by IntelliJ IDEA.
  User: Pixeup
  Date: 7/16/2024
  Time: 3:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ page isELIgnored="false"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>User:home</h1>
<c:if test="${not empty userobj}">
    <h1>Name:${userobj.name}</h1>
    <h1>Email:${userobj.email}</h1>
</c:if>
</body>
</html>
