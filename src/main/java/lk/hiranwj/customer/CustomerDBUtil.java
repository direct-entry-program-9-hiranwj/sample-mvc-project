package lk.hiranwj.customer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CustomerDBUtil {

    private static Connection con = null;
    private static Statement stm = null;
    private static ResultSet rst = null;

    public static List<Customer> validate(String username, String password) {

        ArrayList<Customer> customers = new ArrayList<>();

        // Create DB Connection
//        String url = "jdbc:mysql://localhost:3306/hotel";
//        String user = "root";
//        String passw = "mysql";

        // Validate part

        try {
//            Class.forName("com.mysql.jdbc.Driver");
//            Connection con = DriverManager.getConnection(url, user, passw);
//            Statement stm = con.createStatement();

            con = DBConnect.getConnection();
            stm = con.createStatement();
            String sql = "SELECT * FROM Customer WHERE username='"+username+"' AND password='"+password+"'";
            rst = stm.executeQuery(sql);

            /* next(), boolean method */
            if (rst.next()) {
                int id = rst.getInt(1);
                String name = rst.getString(2);
                String email = rst.getString(3);
                String phone = rst.getString(4);
                String usern = rst.getString(5);
                String pass = rst.getString(6);

                Customer c = new Customer(id, name, email, phone, usern, pass);
                customers.add(c);
            }

        }catch (Exception e){
            e.printStackTrace();
        }

        return customers;
    }

    public static boolean insertCustomer(String name, String email, String phone, String username, String password) {

        boolean isSuccess = false;

        // Create DB Connection
//        String url = "jdbc:mysql://localhost:3306/hotel";
//        String user = "root";
//        String passw = "mysql";

        try {
//            Class.forName("com.mysql.jdbc.Driver");
//            Connection con = DriverManager.getConnection(url, user, passw);
//            Statement stm = con.createStatement();

            con = DBConnect.getConnection();
            stm = con.createStatement();

            String sql = "INSERT INTO Customer VALUES(0, '"+name+"', '"+email+"', '"+phone+"', '"+username+"', '"+password+"')";
            int rst = stm.executeUpdate(sql);

            if (rst > 0) {
                isSuccess = true;
            }else {
                isSuccess = false;
            }

        }catch (Exception e){
            e.printStackTrace();
        }

        return isSuccess;
    }
}
