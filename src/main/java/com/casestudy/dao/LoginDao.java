package com.casestudy.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDao {
    public static boolean checkLogin(String userName,String password){
        boolean isValid=false;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/casestudymodule3?useSSL=false", "root", "123456");
            String sql = "select * from persons where userName=? and password=?";
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1,userName);
            ps.setString(2,password);

            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                isValid=true;
            } else {
                isValid=false;
            }
        } catch(Exception e) {
            System.out.println(e);
        } return isValid;
    }
}
