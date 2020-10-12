<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
Student

<form:form method="post"
           modelAttribute="student">
    <form:input path="firstName"/> </br>
    <form:input path="lastName"/></br>
    <form:select path="gender">
        <form:option value="M" label="Male"/>
        <form:option value="F" label="Female"/>
    </form:select></br>
    <form:checkboxes items="${countries}" path="countries"/></br>
    <form:checkbox path="mailingList"/></br>
    <form:checkboxes items="${skills}" path="skills"/></br>
    <form:checkboxes items="${hobbies}" path="hobbies"/></br>
    <form:input path="notes" rows="3" cols="20"/>
    <input type="submit" value="Save">
</form:form>
</body>
</html>

