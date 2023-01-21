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

</body>
</html>
