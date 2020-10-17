<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Confirm</title>
</head>
<body>

    <c:out value="${machine.id}"/>
    <c:out value="${machine.name}"/>
    <c:out value="${machine.type}"/><br>

<a href="/machines/deleteById/${id}">Delete</a>
<a href="/machines">Cancel</a>
</body>
</html>
