package com.casestudy.controller;

import com.casestudy.dao.UserDao;
import com.casestudy.model.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "EditUserServlet", urlPatterns = "/editProfile")
public class EditUserServlet extends HttpServlet {
    UserDao userDAO = new UserDao();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
//        int id = Integer.parseInt(request.getParameter("userId"));
        String fullName = request.getParameter("fullName");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String password = request.getParameter("password");

        User user = new User(fullName, email, phone, password);
        if (userDAO.updateUser(user)) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/posts");
            dispatcher.forward(request, response);
        }
    }


        protected void doPost (HttpServletRequest request, HttpServletResponse response) throws
        ServletException, IOException {
            response.setContentType("text/html;charset=UTF-8");
            try {
                processRequest(request, response);
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }

        protected void doGet (HttpServletRequest request, HttpServletResponse response) throws
        ServletException, IOException {
            try {
                processRequest(request, response);
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }
}
