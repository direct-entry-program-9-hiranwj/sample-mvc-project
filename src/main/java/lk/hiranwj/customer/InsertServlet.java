package lk.hiranwj.customer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "insert-servlet", value = "/insert")
public class InsertServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    /* http://localhost:8080/api/insert.jsp */
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String phone = req.getParameter("phone");
        String username = req.getParameter("uid");
        String password = req.getParameter("psw");

        boolean isTrue;

        isTrue = CustomerDBUtil.insertCustomer(name, email, phone, username, password);
        System.out.println("isTrue: " + isTrue);

        if (isTrue == true) {
            RequestDispatcher dis = req.getRequestDispatcher("success.jsp");
            dis.forward(req, resp);
        }else {
            RequestDispatcher dis2 = req.getRequestDispatcher("unsuccessful.jsp");
            dis2.forward(req, resp);
        }
    }
}
