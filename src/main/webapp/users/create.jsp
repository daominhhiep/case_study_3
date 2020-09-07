<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 01-Sep-20
  Time: 3:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Tạo tài khoản mới</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="../resources/fontawesome/css/all.css">
    <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
          rel="stylesheet"/>

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
            <h4 class="card-title mt-3 text-center">Create Account</h4>
            <p>
                <a href="" class="btn btn-block btn-twitter"> <i class="fab fa-twitter"></i>   Login via Twitter</a>
                <a href="" class="btn btn-block btn-facebook"> <i class="fab fa-facebook-f"></i>   Login via
                    facebook</a>
            </p>
            <form method="post" action="/create">
                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fa fa-user"></i> </span>
                    </div>
                    <input class="form-control" placeholder="Full name" type="text" name="name" required="">
                </div>
                <span style="color: red"><%=com.casestudy.util.StringUtil.getString(request.getAttribute("error"))%></span> <!-- form-group// -->
                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
                    </div>
                    <input class="form-control" placeholder="Email address" type="email" name="email" required="">
                    <span><%=com.casestudy.util.StringUtil.getString(request.getAttribute("error1"))%></span>
                </div> <!-- form-group// -->
                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fa fa-phone"></i> </span>
                    </div>
                    <select class="custom-select" style="max-width: 120px;">
                        <option selected="">+84</option>
                    </select>
                    <input class="form-control" placeholder="Phone number" type="text" name="phonenumber" required="">
                    <span><%=com.casestudy.util.StringUtil.getString(request.getAttribute("error2"))%></span>
                </div> <!-- form-group// -->
                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fa fa-building"></i> </span>
                    </div>
                    <input class="form-control" type="text" placeholder="Username" name="username" required="">
                    <span><%=com.casestudy.util.StringUtil.getString(request.getAttribute("error3"))%></span>
                </div> <!-- form-group end.// -->
                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
                    </div>
                    <input class="form-control" placeholder="Create password" type="password" name="userpass" required="">
                    <span><%=com.casestudy.util.StringUtil.getString(request.getAttribute("error4"))%></span>
                </div> <!-- form-group// -->
                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
                    </div>
                    <input class="form-control" placeholder="Repeat password" type="password" name="reUserpass" required="">
                    <span><%=com.casestudy.util.StringUtil.getString(request.getAttribute("error5"))%></span>
                </div> <!-- form-group// -->
                <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-block"> Create Account</button>
                </div> <!-- form-group// -->
                <p class="text-center">Have an account? <a href="../index.jsp">Log In</a></p>
            </form>
        </article>
    </div>
</section>


<footer>
    <div class="footer-copyright text-center py-3">© 2020 Copyright:
        <a href="../index.jsp"> LuonVuituoi.com</a>
    </div>
</footer>


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
