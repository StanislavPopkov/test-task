<%--
  Created by IntelliJ IDEA.
  User: I am
  Date: 18.05.2019
  Time: 19:06
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <style>
        body {
            margin: 25px;
        }
    </style>
</head>

<body>
<h2>Create new task</h2>
<c:url var="saveUrl" value="/task/add" />
<form:form modelAttribute="taskAttribute" method="POST" action="${saveUrl}">
    <table>
        <tr>
            <td><form:label path="description">Description:</form:label></td>
            <td><form:input path="description" required="required"/></td>
        </tr>
        <tr>
            <td><form:label path="to">To:</form:label></td>
            <td><form:input path="to" required="required"/></td>
        </tr>
        <tr>
            <td><form:label path="from">From:</form:label></td>
            <td><form:input path="from" required="required"/></td>
        </tr>
        <tr>
            <td><form:label path="status">Status:</form:label></td>
            <td><form:input path="status" required="required"/></td>
        </tr>

        </td>
    </table>

    <input type="submit" value="Save" />
</form:form>

</body>
</html>
