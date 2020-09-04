package com.casestudy.controller;

import com.casestudy.dao.LoginDao;
import com.casestudy.model.Post;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String username = request.getParameter("username");
            String password = request.getParameter("userpass");

            boolean isValid = LoginDao.checkLogin(username, password);

            if (isValid) {

                HttpSession session = request.getSession();
                session.setAttribute("username", username);
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("/posts");
                requestDispatcher.forward(request, response);
            } else {
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
                requestDispatcher.include(request, response);
            }
        } finally {
            out.close();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
