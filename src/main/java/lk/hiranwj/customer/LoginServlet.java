package lk.hiranwj.customer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "login-servlet", value = "/login")
public class LoginServlet extends HttpServlet {
/* http://localhost:8080/api/login.jsp */
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("uid");
        String password = req.getParameter("pass");

        try {
            List<Customer> cusDetails = CustomerDBUtil.validate(username, password);
            req.setAttribute("cusDetails", cusDetails);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

        RequestDispatcher dis = req.getRequestDispatcher("userAccount.jsp");
        dis.forward(req, resp);
    }
}
