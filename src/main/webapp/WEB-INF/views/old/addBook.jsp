<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<form:form method="post" modelAttribute="book" action="${pageContext.request.contextPath}/books/addBook">
    <p hidden><form:input path="id"/></p>
    <label for="title">Title</label>
    <form:input path="title" id="title"/>
    <form:errors path="title"/>

    <br>
    <label for="publisher">Publisher</label>
    <form:select itemLabel="name" itemValue="id" id="publisher"
                 path="publisher.id" items="${publishers}"/>
    <br>
    <label for="author">Author</label>
    <form:select itemLabel="lastName" itemValue="id"
                 path="authors" items="${authors}"/>
    <br>

    <input type="submit" value="Save">
</form:form>
</body>
</html>