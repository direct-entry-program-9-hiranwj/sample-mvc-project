<%--
  Created by IntelliJ IDEA.
  User: hiranwj
  Date: 1/21/23
  Time: 1:27 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>USER ACCOUNT</title>
</head>
<body>

    <table>
        <c:forEach var="cus" items="${cusDetails}">

            <c:set var="id" value="${cus.id}"/>
            <c:set var="name" value="${cus.name}"/>
            <c:set var="email" value="${cus.email}"/>
            <c:set var="username" value="${cus.username}"/>
            <c:set var="password" value="${cus.password}"/>

            <tr>
                <td>Customer ID</td>
                <td>${cus.id}</td>
            </tr>
            <tr>
                <td>Customer Name</td>
                <td>${cus.name}</td>
            </tr>
            <tr>
                <td>Customer Email</td>
                <td>${cus.email}</td>
            </tr>
            <tr>
                <td>Customer Phone</td>
                <td>${cus.phone}</td>
            </tr>
            <tr>
                <td>Customer Username</td>
                <td>${cus.username}</td>
            </tr>
            <tr>
                <td>Customer Password</td>
                <td>${cus.password}</td>
            </tr>

        </c:forEach>
    </table>

    <c:url value="update.jsp" var="cusUpdate">
        <c:param name="id" value="${id}"/>
        <c:param name="name" value="${name}"/>
        <c:param name="email" value="${email}"/>
        <c:param name="uname" value="${username}"/>
        <c:param name="pass" value="${password}"/>
    </c:url>

    <a href="${cusUpdate}">
        <input type="button" name="update" value="Update My Data">
    </a>
</body>
</html>
