package com.casestudy.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDao {
    public static boolean checkLogin(String userName,String password){
        boolean isValid=false;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/casestudymodule3?useUnicode=true&characterEncoding=UTF-8", "root", "123456");
            String sql = "select * from users where userName=? and password=?";
            PreparedStatement preparedStatement=con.prepareStatement(sql);
            preparedStatement.setString(1,userName);
            preparedStatement.setString(2,password);

            ResultSet resultSet=preparedStatement.executeQuery();
            if(resultSet.next()){
                isValid=true;
            } else {
                isValid=false;
            }
        } catch(Exception e) {
            System.out.println(e);
        } return isValid;
    }
}
