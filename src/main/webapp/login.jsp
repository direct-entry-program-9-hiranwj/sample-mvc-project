<%--
  Created by IntelliJ IDEA.
  User: hiranwj
  Date: 1/20/23
  Time: 10:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>LOGIN</title>
</head>
<body>

  <form action="/api/login" method="POST">
    Username:&nbsp;&nbsp;<input type="text" name="uid"><br><br>
    Password: &nbsp;&nbsp;<input type="password" name="pass"><br><br>
    <input type="submit" name="submit" value="Login">
  </form>

</body>
</html>
