<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link href='https://fonts.googleapis.com/css?family=passwordion+One' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
<link href="style.css" rel="stylesheet" type="text/css">
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <c:forEach items="${courses}" var="course">
      <tr>
            <td>${course.id}</td>
            <td> ${course.department}</td>
            <td> ${course.courseName}</td>
        </tr>
    </c:forEach>

</table>
</body>
</html>
