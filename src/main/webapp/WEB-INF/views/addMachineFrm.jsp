<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Machine</title>
</head>
<body>
<form method="post">
    <label for="name">Machine name</label>
    <input id="name" type="text" name="name"><br>
    <label for="type">Machine type</label>
    <input id="type" type="text" name="type"><br>
    <label for="serial">Serial no</label>
    <input id="serial" type="text" name="serial"><br>
    <label for="instDate">Installation date</label>
    <input id="instDate" type="date" name="instDate"><br>

    <input type="submit">
</form>
</body>
</html>
