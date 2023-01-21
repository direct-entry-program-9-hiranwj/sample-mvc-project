package lk.hiranwj.customer;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {

    // Create DB Connection
    private static String url = "jdbc:mysql://localhost:3306/hotel";
    private static String user = "root";
    private static String passw = "mysql";

    private static Connection con;

    public static Connection getConnection() {

        try {

            Class.forName("java.sql.jdbc.DriverManager");
            con = DriverManager.getConnection(url, user, passw);

        }catch (Exception e) {
            System.out.println("Database connection is not succeed");
            throw new RuntimeException(e);
        }

        return con;
    }
}
