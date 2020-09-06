package com.casestudy.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionDBUser {
    static String URL = "localhost:3306/";
    static String DATABASE_NAME = "casestudymodule3";
    static String USERNAME = "root";
    static String PASSWORD = "123456";

    public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://" + URL + DATABASE_NAME, USERNAME, PASSWORD);
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e);
            e.printStackTrace();
        }
        return con;
    }
}
