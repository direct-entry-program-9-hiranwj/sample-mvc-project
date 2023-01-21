<%--
  Created by IntelliJ IDEA.
  User: hiranwj
  Date: 1/21/23
  Time: 1:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CREATE ACCOUNT</title>
</head>
<body>
    <form action="/api/insert" method="POST">
        Name: <input type="text" name="name"><br><br>
        Email: <input type="text" name="email"><br><br>
        Phone: <input type="text" name="phone"><br><br>
        Username: <input type="text" name="uid"><br><br>
        Password: <input type="password" name="psw"><br><br>

        <input type="submit" name="SUBMIT" value="Create Customer">
    </form>
</body>
</html>
