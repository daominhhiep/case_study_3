package com.casestudy.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionDBUser {
    private static final String jdbcURL = "jdbc:mysql://localhost:3306/casestudymodule3?useUnicode=true&characterEncoding=UTF-8";
    private static final String jdbcUsername = "root";
    private static final String jdbcPassword = "123456";
    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection= DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        return connection;
    }
}
