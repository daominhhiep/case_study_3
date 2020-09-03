package com.casestudy.dao;

import java.sql.*;

import static com.casestudy.connection.ConnectionDBUser.getConnection;

public class LoginDao {
    public static boolean checkLogin(String userName,String password){
        boolean isValid=false;
        try{
            Connection connection = getConnection();
            String sql = "select * from users where userName=? and password=?";
            PreparedStatement preparedStatement=connection.prepareStatement(sql);
            preparedStatement.setString(1,userName);
            preparedStatement.setString(2,password);

            ResultSet resultSet=preparedStatement.executeQuery();
            if(resultSet.next()){
                isValid=true;
            }
        } catch(Exception e) {
            System.out.println(e.getMessage());
        } return isValid;
    }
}
