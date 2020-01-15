package mypack;

import java.sql.*;

public class Mycon {

    private static Connection con;
    

    static {
        try {
        	
            Class.forName("COM.ibm.db2.jdbc.app.DB2Driver");
            con = DriverManager.getConnection("jdbc:db2:TEST");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public static Connection getConnection() throws SQLException {
        if (con.isClosed()) {
            con = DriverManager.getConnection("jdbc:db2:TEST");
            return con;
        }
        return con;

    }
}
