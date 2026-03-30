package com.kky.web;
import java.sql.*;

public class DBManager {

    public static Connection connect() throws SQLException {

        String url = "jdbc:oracle:thin:@10.1.82.127:1521:XE";
        return DriverManager.getConnection(url, "c##ky1004", "ky1004");
    }

    public static void close(ResultSet rs, PreparedStatement ps, Connection con) {
        try {
            if (rs != null) {
                rs.close();
            }

            ps.close();
            con.close();

        } catch (Exception e) {
            throw new RuntimeException(e);
        }

    }

}


