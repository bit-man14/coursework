<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <tr>
        <th>Id</th>
        <th>Title</th>
        <th></th>
        <th></th>
    </tr>
    <c:forEach var="machine" items="${machines}">
        <tr>
            <td>${machine.id}</td>
            <td>${machine.name}</td>
            <td>${machine.type}</td>
            <td>${machine.serial}</td>
            <td>${machine.instDate}</td>
<%--            <td>${book.publisher.name}</td>--%>
            <td><a href="/machines/confirmDel/${machine.id}">Delete</a></td>
            <th><a href="/machines/editMachine/${machine.id}">Edit</a></th>
        </tr>
    </c:forEach>
</table>

<h2>
    <a href="/machines/addMachine">Add Machine</a>
</h2>

</body>
</html>
