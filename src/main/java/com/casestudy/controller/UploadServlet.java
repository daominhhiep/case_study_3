package com.casestudy.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.*;


@MultipartConfig
@WebServlet(name = "UploadServlet", urlPatterns = "/upload")
public class UploadServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()){
            Part part =request.getPart("file");
            String filename = part.getSubmittedFileName();

            String path = getServletContext().getRealPath("/"+"files"+ File.separator+filename);
            InputStream inputStream = part.getInputStream();
            boolean succs = uploadFile(inputStream,path);
            if (succs){
                out.println("Ok");
            } else {
                out.println("Error");
            }
        }
    }

    public boolean uploadFile(InputStream inputStream, String path){
        boolean test = false;
        try {
            byte[] byt = new byte[inputStream.available()];
            inputStream.read();
            FileOutputStream fileOutputStream = new FileOutputStream(path);
            fileOutputStream.write(byt);
            fileOutputStream.flush();
            fileOutputStream.close();
            test=true;
        } catch (Exception e){
            e.printStackTrace();
        }
        return test;
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
