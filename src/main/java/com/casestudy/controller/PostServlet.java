package com.casestudy.controller;

import com.casestudy.dao.PostDao;
import com.casestudy.model.Post;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

@WebServlet(name = "PostServlet", urlPatterns = "/posts")
public class PostServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private PostDao postDao;

    public void init() {
        postDao = new PostDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case "create":
                    insertPost(request, response);
                    break;
//                case "edit":
//                    updatePost(request, response);
//                    break;
                case "delete":
                    deletePost(request, response);
                    break;
                default:
                    listPost(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case "create":
                    showNewForm(request, response);
                    break;
                case "edit":
                    showEditForm(request, response);
                    break;
                case "delete":
                    deletePost(request, response);
                    break;
                default:
                    listPost(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    private void listPost(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        List<Post> listPost = postDao.selectAllPosts();
        request.setAttribute("listPost", listPost);
        RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/view/main.jsp");
        dispatcher.forward(request, response);
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/view/createPost.jsp");
        dispatcher.forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Post existingPost = postDao.selectPost(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/view/createPost.jsp");
        request.setAttribute("post", existingPost);
        dispatcher.forward(request, response);

    }

    private void insertPost(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        int id = Integer.parseInt(request.getParameter("id"));
        String images = request.getParameter("images");
        String content = request.getParameter("content");
        String path = request.getParameter("path");
        Post newPost = new Post(images, content, path);
        postDao.insertPost(newPost);
        RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/view/createPost.jsp");
        dispatcher.forward(request, response);
    }

//    private void updatePost(HttpServletRequest request, HttpServletResponse response)
//            throws SQLException, IOException, ServletException {
//        int postId = Integer.parseInt(request.getParameter("postId"));
//        String images = request.getParameter("images");
//        String content = request.getParameter("content");
//        String path = request.getParameter("path");
//
//        Post post = new Post(postId,images, content, path);
//        postDao.updatePost(post);
//        RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/view/createPost.jsp");
//        dispatcher.forward(request, response);
//    }

    private void deletePost(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        int postId = Integer.parseInt(request.getParameter("postId"));
        postDao.deletePost(postId);

        List<Post> listPost = postDao.selectAllPosts();
        request.setAttribute("listPost", listPost);
        RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/view/main.jsp");
        dispatcher.forward(request, response);
    }
}