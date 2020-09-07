package com.casestudy.util;

import javax.sql.DataSource;
import java.beans.PropertyVetoException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ResourceBundle;

public class ConnectionDBUser {
    private static final String DRIVER_NAME;
    private static final String URL;
    private static final String USER_NAME;
    private static final String PASSWORD;
    static {
        final ResourceBundle config = ResourceBundle.getBundle("db");
        DRIVER_NAME = config.getString("com.mysql.jdbc.Driver");
        URL = config.getString("jdbc:mysql://localhost:3306/casestudymodule3?useUnicode=true&characterEncoding=UTF-8");
        USER_NAME = config.getString("root");
        PASSWORD = config.getString("123456");
    }

    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection= DriverManager.getConnection(URL, USER_NAME, PASSWORD);
        return connection;
    }

}
