<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 01-Sep-20
  Time: 3:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Luon Vuituoi</title>
    <script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
          rel="stylesheet"/>
    <link href="../../resources/css/styles.css" rel="stylesheet"/>
</head>

<body>
<header class="fixed-top">
    <nav class="navbar navbar-expand-lg navbar-light bg-light" style="height: 70px">
        <a class="navbar-brand" href="/posts">
            <img src="../../resources/image/logo.png" width="30" height="30" class="d-inline-block align-top" alt="">
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
                    <a  class="nav-link" href="/login?action=createPost">Đăng bài</a>
                </li>
            </ul>
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <a class="text-success my-2 my-sm-0" type="submit">Search</a>
            </form>
        </div>
        <div class="nav-item">
            <a class="nav-link" href="/login?action=editProfile">
                <%
                    String username = (String) session.getAttribute("username");
                    if (session != null) {
                        out.println("Xin chào " + username);
                    }
                %>
            </a>
        </div>
        <div class="nav-link">
            <a href="/LogoutServlet">Đăng xuất</a>
        </div>
    </nav>
</header>

<section class="projects-section bg-white" id="projects">
    <div class="container">
        <c:forEach items="${listPost}" var="cus">
        <!-- Featured Project Row-->
        <div class="row align-items-center no-gutters mb-4 mb-lg-5">
                <div class="col-xl-8 col-lg-7" style="width: 744px">
                <img class="img-fluid mb-3 mb-lg-0" src="${cus.path}" alt=""/>
            </div>
            <div class="col-xl-4 col-lg-5">
                <div class="featured-text text-center text-lg-left">
                    <h4>${cus.content}</h4>
                    <p class="text-black-50 mb-0">${cus.date}</p>
                </div>
            </div>
        </div>
        </c:forEach>
    </div>
</section>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
<script src="../../resources/js/scripts.js"></script>
</body>
</html>