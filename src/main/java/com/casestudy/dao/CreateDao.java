package com.casestudy.dao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "CreateServlet", urlPatterns = "/create")
public class CreateDao extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            try {
                String name = request.getParameter("name");
                String userName = request.getParameter("username");
                String userPass = request.getParameter("userpass");
                String email = request.getParameter("email");
                String phone = request.getParameter("phonenumber");
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/casestudymodule3?useUnicode=true&characterEncoding=UTF-8", "root", "123456");
                PreparedStatement pst = connection.prepareStatement("insert into " + "Persons(fullName, userName, password, email, phone) values(?,?,?,?,?);");
                pst.setString(1, name);
                pst.setString(2, userName);
                pst.setString(3, userPass);
                pst.setString(4, email);
                pst.setString(5, phone);
                pst.executeUpdate();
//                request.setAttribute("add","Tạo tài khoản thành công!");
                RequestDispatcher dis = request.getRequestDispatcher("users/login.jsp");
                dis.forward(request, response);

            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
            }
        } finally {
            out.close();
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        processRequest(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }
}