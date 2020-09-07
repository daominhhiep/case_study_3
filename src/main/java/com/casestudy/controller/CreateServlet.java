package com.casestudy.controller;

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

import static com.casestudy.connection.ConnectionDBUser.getConnection;

import com.casestudy.util.Validate;


@WebServlet(name = "CreateServlet", urlPatterns = "/create")
public class CreateServlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String name = request.getParameter("name");
        String userName = request.getParameter("username");
        String userPass = request.getParameter("userpass");
        String reUserPass = request.getParameter("reUserpass");
        String email = request.getParameter("email");
        String phone = request.getParameter("phonenumber");

        RequestDispatcher disCreate = request.getRequestDispatcher("users/create.jsp");
        if (!Validate.checkName(name)) {
            request.setAttribute("error", "Nhập tên đầy đủ!");
            disCreate.forward(request, response);
        } else if (!Validate.checkEmail(email)) {
            request.setAttribute("error1", "Nhập email!");
            disCreate.forward(request, response);
        }  else if (!Validate.checkPhone(phone)) {
            request.setAttribute("error2", "Nhập đúng số điện thoại của bạn");
            disCreate.forward(request, response);
        } else if (!Validate.checkUsername(userName)) {
            request.setAttribute("error3", "Nhập chữ cái hoặc chữ số gồm 8 đến 16 ký tự!");
            disCreate.forward(request, response);
        }else if (!Validate.checkPassword(userPass)) {
            request.setAttribute("error4", "Nhập chữ cái hoa hoặc chữ số, mật khẩu gồm 8 ký tự trở lên!");
            disCreate.forward(request, response);
        } else if (!userPass.equals(reUserPass)) {
            request.setAttribute("error5", "Mật khẩu không khớp!");
            disCreate.forward(request, response);
        } else {
            try {
                Connection connection = getConnection();
                PreparedStatement pst = connection.prepareStatement("insert into " +
                        "Users(fullName, userName, password, email, phone) values(?,?,?,?,?);");
                pst.setString(1, name);
                pst.setString(2, userName);
                pst.setString(3, userPass);
                pst.setString(4, email);
                pst.setString(5, phone);
                pst.executeUpdate();
//                request.setAttribute("add","Tạo tài khoản thành công!");
                RequestDispatcher disIndex = request.getRequestDispatcher("index.jsp");
                disIndex.forward(request, response);

            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
            } finally {
                out.close();
            }
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