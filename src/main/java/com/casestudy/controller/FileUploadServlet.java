package com.casestudy.controller;

import com.casestudy.util.ConnectionDBUser;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;

@WebServlet(name = "ServletFileUpload", urlPatterns = {"/upload"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 10, // 10 MB
        maxFileSize = 1024 * 1024 * 1000, // 1 GB
        maxRequestSize = 1024 * 1024 * 1000)   	// 1 GB
public class FileUploadServlet extends HttpServlet {

    PrintWriter out;
    Connection con;
    PreparedStatement ps;
    ServletOutputStream os;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/plain;charset=UTF-8");
        try {
            //out = response.getWriter();//.........do not remove comment.
            os = response.getOutputStream();
            String folderName = "resources";
            String uploadPath = request.getServletContext().getRealPath("") + File.separator + folderName;//for netbeans use this code
            //String uploadPath = request.getServletContext().getRealPath("") + folderName;//for eclipse use this code
            File dir = new File(uploadPath);
            if (!dir.exists()) {
                dir.mkdirs();
            }
            Part filePart = request.getPart("file");
//            int id = Integer.parseInt(request.getParameter("id"));
            String content = request.getParameter("content");
            String images = filePart.getSubmittedFileName();
            String path1 = folderName + File.separator + images;
            Timestamp added_date = new Timestamp(System.currentTimeMillis());
            System.out.println("images: " + images);
            System.out.println("Path: " + uploadPath);
            System.out.println("Name: " + content);
            InputStream is = filePart.getInputStream();
            Files.copy(is, Paths.get(uploadPath + File.separator + images), StandardCopyOption.REPLACE_EXISTING);

            try {
                con = ConnectionDBUser.getConnection();
                System.out.println("connection done");
                String sql = "insert into post values(?,?,?,?)";
                ps = con.prepareStatement(sql);
//                ps.setInt(1, id);
                ps.setString(1, content);
                ps.setString(2, images);
                ps.setString(3, path1);
                ps.setTimestamp(4, added_date);
                int status = ps.executeUpdate();
                if (status > 0) {
                    RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/view/main.jsp");
                    dispatcher.forward(request, response);
                }
            } catch (SQLException e) {
                os.println("Some error occured please console log.");
                System.out.println("Exception1: " + e);
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }

        } catch (IOException | ServletException e) {
            os.println("Some error occured please console log.");
            System.out.println("Exception2: " + e);
        }
    }
}

