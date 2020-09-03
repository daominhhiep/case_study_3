<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 01-Sep-20
  Time: 3:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
</head>
<body>
<header class="header">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">
            <img src="resources/image/logo.png" width="30" height="30" class="d-inline-block align-top" alt="">
            Luon Vuituoi
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Mới<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Hot</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Thể loại
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="#">Hài</a>
                        <a class="dropdown-item" href="#">Động vật</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Ảnh của tôi</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="#">Disabled</a>
                </li>
            </ul>
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>


        <div class="nav-link dropdown">
            <a class="btn btn-link dropdown-toggle" type="button" id="dropdownMenu2"
               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Đăng nhập
            </a>
            <form class="dropdown-menu p-3" method="post" action="/login">
                <div class="form-group">
                    <label for="exampleDropdownFormEmail2">Username</label>
                    <input type="text" class="form-control" id="exampleDropdownFormEmail2"
                           placeholder="Username" name="username">
                </div>
                <div class="form-group">
                    <label for="exampleDropdownFormPassword2">Password</label>
                    <input type="password" class="form-control" id="exampleDropdownFormPassword2"
                           placeholder="Password" name="userpass">
                </div>
                <div class="form-check">
                    <input type="checkbox" class="form-check-input" id="dropdownCheck2">
                    <label class="form-check-label" for="dropdownCheck2">
                        Remember me
                    </label>
                </div>
                <button type="submit" class="btn btn-primary">Sign in</button>
            </form>
        </div>


        <div class="nav-link" style="margin-right: 20px">
            <a href="users/create.jsp">Đăng ký</a>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="resources/bootstrap/js/bootstrap.js"></script>
</body>
</html>
