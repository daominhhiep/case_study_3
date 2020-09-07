<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 06-Sep-20
  Time: 4:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="../resources/fontawesome/css/all.css">

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
            <h4 class="card-title mt-3 text-center">Edit Profile</h4>

            <form method="post" action="/editProfile">
                <c:if test="${user != null}">
                    <input type="hidden" name="userId" value="<c:out value='${user.id}' />"/>
                </c:if>
                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fa fa-user"></i> </span>
                    </div>
                    <input class="form-control" placeholder="Full name" type="text" name="fullName" required=""
                    value="<c:out value='${user.fullname}'/>"/>
                </div>
                <span style="color: red"><%=com.casestudy.util.StringUtil.getString(request.getAttribute("error"))%></span> <!-- form-group// -->
                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
                    </div>
                    <input class="form-control" placeholder="Email address" type="email" name="email" required=""
                    value="<c:out value='${user.email}'/>"/>
                </div> <!-- form-group// -->
                <span><%=com.casestudy.util.StringUtil.getString(request.getAttribute("error1"))%></span>
                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fa fa-phone"></i> </span>
                    </div>
                    <select class="custom-select" style="max-width: 120px;">
                        <option selected="">+84</option>
                    </select>
                    <input class="form-control" placeholder="Phone number" type="text" name="phone" required=""
                    value="<c:out value='${user.phone}'/>">

                </div> <!-- form-group// -->
                <span><%=com.casestudy.util.StringUtil.getString(request.getAttribute("error2"))%></span>

                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
                    </div>
                    <input class="form-control" placeholder="Edit password" type="password" name="password" required="">

                </div> <!-- form-group// -->
                <span><%=com.casestudy.util.StringUtil.getString(request.getAttribute("error4"))%></span>
                <div class="form-group input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
                    </div>
                    <input class="form-control" placeholder="Repeat password" type="password" name="reUserpass" required="">

                </div> <!-- form-group// -->
                <span><%=com.casestudy.util.StringUtil.getString(request.getAttribute("error5"))%></span>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-block"> Edit</button>
                </div> <!-- form-group// -->
            </form>
        </article>
    </div>
</section>
<footer>
    <div class="footer-copyright text-center py-3">© 2020 Copyright:
        <a href="/posts"> LuonVuituoi.com</a>
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
