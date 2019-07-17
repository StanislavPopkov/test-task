<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>

<%--
  Created by IntelliJ IDEA.
  User: I am
  Date: 18.05.2019
  Time: 19:05
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <title>Store</title>
    <style>
        body {
            margin: 25px;
        }
    </style>
</head>
<body>
<h2>Task list</h2>


<c:url var="addUrl" value="/task/add" />
<form:form method="GET" action="${addUrl}">
    <input type="submit" value="Add task" />
</form:form>


    <table style="border: 1px solid black; width: 500px; text-align:center;">
        <thead style="background:#65b9ff">
        <tr>
            <th>Description</th>
            <th>To</th>
            <th>From</th>
            <th>Status</th>
            <th colspan="3"></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${tasks}" var="task">
            <c:url var="editUrl" value="/task/edit?id=${task.id}" />
            <c:url var="deleteUrl" value="/task/delete?id=${task.id}" />
            <tr>
                <td><c:out value="${tasks.description}" /></td>
                <td><c:out value="${task.to}" /></td>
                <td><c:out value="${task.from}" /></td>
                <td><c:out value="${task.status}" /></td>
                <td><a href="${editUrl}">Edit</a></td>
                <td><a href="${deleteUrl}">Delete</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>



</body>
</html>
