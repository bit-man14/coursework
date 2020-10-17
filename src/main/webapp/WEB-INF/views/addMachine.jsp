<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Machine</title>
</head>
<body>
<c:set var = "now" value = "<% = new java.util.Date()%>" />
<form:form method="post" modelAttribute="machine" action="${pageContext.request.contextPath}/machines/addMachine">
    <p hidden><form:input path="id"/></p>
    <label for="name">Name</label>
    <form:input path="name" type="text" id="name"/>
    <form:errors path="name"/>
    <br>
    <label for="type">Type</label>
    <form:input path="type" type="text" id="type"/>
    <form:errors path="type"/>
    <br>
    <label for="serial">Serial No</label>
    <form:input path="serial" type="text" id="serial"/>
    <form:errors path="serial"/>
    <br>

    <label for="instDate">Date of installation</label>

<%--    <fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="today" />--%>

    <form:input path="instDate" type="date" id="instDate" />
    <form:errors path="instDate"/>
    <br>
    <br>
    <input type="submit" value="Save">
</form:form>
</body>
</html>
