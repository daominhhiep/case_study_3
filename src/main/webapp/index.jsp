<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 01-Sep-20
  Time: 3:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>Grayscale - Start Bootstrap Theme</title>
    <link rel="icon" type="image/x-icon" href="assets/img/favicon.ico"/>
    <script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
          rel="stylesheet"/>

    <link href="resources/css/styles.css" rel="stylesheet"/>
</head>
<body id="page-top">


<nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
    <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">Luon Vuituoi</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
                data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
                aria-label="Toggle navigation">
            Menu
            <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#about">About</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#projects">Projects</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#signup">Contact</a></li>
                <li class="nav-item">
                    <div class="nav-link dropdown">
                        <a class="nav nav-item " id="dropdownMenu2"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Đăng nhập
                        </a>
                        <form class="dropdown-menu p-5" method="post" action="/login">
                            <div class="form-group">
                                <label for="exampleDropdownFormEmail2">Username</label>
                                <input type="text" class="form-control" id="exampleDropdownFormEmail2"
                                       placeholder="Username" name="username" required="">
                            </div>
                            <div class="form-group">
                                <label for="exampleDropdownFormPassword2">Password</label>
                                <input type="password" class="form-control" id="exampleDropdownFormPassword2"
                                       placeholder="Password" name="userpass" required="">
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
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="users/create.jsp">Đăng ký</a></li>
                </li>
            </ul>
        </div>
    </div>
</nav>
<!-- Masthead-->

<header class="masthead">
    <div class="container d-flex h-100 align-items-center">
        <div class="mx-auto text-center">
            <h1 class="mx-auto my-0 text-uppercase">Luon Vuituoi</h1>
            <h2 class="text-white-50 mx-auto mt-2 mb-5"> “It's free and always will be”</h2>
            <a class="btn btn-primary js-scroll-trigger" href="#about">Giới thiệu</a>
        </div>
    </div>
</header>
<!-- About-->
<section class="about-section text-center" id="about">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 mx-auto">
                <h2 class="text-white mb-4">Cộng đồng Luon Vuituoi</h2>
                <p class="text-white-50">
                    Được thành lập bởi Nguyễn Đông Nam và Đào Minh Hiệp.<br>
                    Tìm hiểu thêm về chúng tôi tại
                    <a href="#">facebook</a>
                </p>
            </div>
        </div>
        <img class="img-fluid" src="assets/img/ipad.png" alt=""/>
    </div>
</section>
<!-- Projects-->
<section class="projects-section bg-light" id="projects">
    <div class="container">
        <!-- Featured Project Row-->
        <div class="row align-items-center no-gutters mb-4 mb-lg-5">
            <div class="col-xl-8 col-lg-7"><img class="img-fluid mb-3 mb-lg-0" src="assets/img/bg-masthead.jpg" alt=""/>
            </div>
            <div class="col-xl-4 col-lg-5">
                <div class="featured-text text-center text-lg-left">
                    <h4>Ảnh phong cảnh</h4>
                    <p class="text-black-50 mb-0">Tại đây bạn có thể đăng tải bất cứ thứ gì!</p>
                </div>
            </div>
        </div>
        <!-- Project One Row-->
        <div class="row justify-content-center no-gutters mb-5 mb-lg-0">
            <div class="col-lg-6"><img class="img-fluid" src="assets/img/demo-image-01.jpg" alt=""/></div>
            <div class="col-lg-6">
                <div class="bg-black text-center h-100 project">
                    <div class="d-flex h-100">
                        <div class="project-text w-100 my-auto text-center text-lg-left">
                            <h4 class="text-white">Mountains</h4>
                            <p class="mb-0 text-white-50">Một ngọn núi.</p>
                            <hr class="d-none d-lg-block mb-0 ml-0"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Project Two Row-->
        <div class="row justify-content-center no-gutters">
            <div class="col-lg-6"><img class="img-fluid" src="assets/img/demo-image-02.jpg" alt=""/></div>
            <div class="col-lg-6 order-lg-first">
                <div class="bg-black text-center h-100 project">
                    <div class="d-flex h-100">
                        <div class="project-text w-100 my-auto text-center text-lg-right">
                            <h4 class="text-white">Mountains</h4>
                            <p class="mb-0 text-white-50">Một ngọn núi có sương mù!</p>
                            <hr class="d-none d-lg-block mb-0 mr-0"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Signup-->
<section class="signup-section" id="signup">
    <div class="container">
        <div class="row">
            <div class="col-md-10 col-lg-8 mx-auto text-center">
                <i class="far fa-paper-plane fa-2x mb-2 text-white"></i>
                <h2 class="text-white mb-5">Để lại email để cập nhật liên tục!</h2>
                <form class="form-inline d-flex">
                    <input class="form-control flex-fill mr-0 mr-sm-2 mb-3 mb-sm-0" id="inputEmail" type="email"
                           placeholder="Enter email address..."/>
                    <button class="btn btn-primary mx-auto" type="submit">Subscribe</button>
                </form>
            </div>
        </div>
    </div>
</section>
<!-- Contact-->
<section class="contact-section bg-black">
    <div class="container">
        <div class="row">
            <div class="col-md-4 mb-3 mb-md-0">
                <div class="card py-4 h-100">
                    <div class="card-body text-center">
                        <i class="fas fa-map-marked-alt text-primary mb-2"></i>
                        <h4 class="text-uppercase m-0">Address</h4>
                        <hr class="my-4"/>
                        <div class="small text-black-50"> 23, TT-01, Khu đô thị MonCity</div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-3 mb-md-0">
                <div class="card py-4 h-100">
                    <div class="card-body text-center">
                        <i class="fas fa-envelope text-primary mb-2"></i>
                        <h4 class="text-uppercase m-0">Email</h4>
                        <hr class="my-4"/>
                        <div class="small text-black-50"><a href="#!">daominhhiep97@gmail.com</a></div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-3 mb-md-0">
                <div class="card py-4 h-100">
                    <div class="card-body text-center">
                        <i class="fas fa-mobile-alt text-primary mb-2"></i>
                        <h4 class="text-uppercase m-0">Phone</h4>
                        <hr class="my-4"/>
                        <div class="small text-black-50">0987654321</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="social d-flex justify-content-center">
            <a class="mx-2" href="#!"><i class="fab fa-twitter"></i></a>
            <a class="mx-2" href="#!"><i class="fab fa-facebook-f"></i></a>
            <a class="mx-2" href="#!"><i class="fab fa-github"></i></a>
        </div>
    </div>
</section>

<footer class="footer bg-black small text-center text-white-50">
    <div class="container">Copyright © Luon VuiTuoi 2020</div>
</footer>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
<script src="js/scripts.js"></script>
</body>
</html>
