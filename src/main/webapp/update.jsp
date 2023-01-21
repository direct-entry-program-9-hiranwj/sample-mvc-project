<%@ page import="lk.hiranwj.customer.Customer" %><%--
  Created by IntelliJ IDEA.
  User: hiranwj
  Date: 1/21/23
  Time: 5:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <%-- in jsp page, If we need to write java code, we can do it between (<% %>) --%>
    <%
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String username = request.getParameter("uname");
        String password = request.getParameter("pass");
    %>

    <form action="#" method="POST">
        Customer ID: <input type="text" name="cusid" value="<%=id%>"><br><br>
        Customer Name: <input type="text" name="name" value="<%=name%>"><br><br>
        Customer Email: <input type="text" name="email" value="<%=email%>"><br><br>
        Customer Phone: <input type="text" name="phone" value="<%=phone%>"><br><br>
        Customer Username: <input type="text" name="uname" value="<%=username%>"><br><br>
        Customer Password: <input type="text" name="pass" value="<%=password%>"><br><br>
        <input type="submit" name="submit" value="Update My Data">
    </form>
</body>
</html>
