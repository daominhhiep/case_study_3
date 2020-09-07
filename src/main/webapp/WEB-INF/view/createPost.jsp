<%--
  Created by IntelliJ IDEA.
  User: dongn
  Date: 9/3/2020
  Time: 3:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="../resources/fontawesome/css/all.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Create New Post</title>
</head>
<body>
<header class="header">
    <nav class="navbar navbar-expand-lg navbar-light bg-light" style="height: 70px">
        <a class="navbar-brand" href="../index.jsp">
            <img src="../resources/image/logo.png" width="30" height="30" class="d-inline-block align-top"
                 alt="">
            Luon Vuituoi
        </a>
    </nav>
</header>

<section>
    <div class="card">
        <article class="card-body mx-auto" style="max-width: 400px">
            <form action="/upload" method="post" enctype="multipart/form-data">
                <input type="number" name="id" placeholder="ID" >
                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fa fa-file-upload"></i> </span>
                    </div>
                    <input class="form-control" placeholder="Tiêu đề" type="text" name="content" required="">
                </div>
                <div class="form-group">
                    <div>
                        <input type="file" required="" name="file">
                    </div>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-block"> Post</button>
                </div>
            </form>
        </article>
    </div>
</section>


<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
<script src="../resources/fontawesome/js/all.js"></script>
</body>
</html>
