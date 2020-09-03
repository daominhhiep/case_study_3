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
    <title>Title</title>
</head>
<body>
<h1><a href="/logout">Dang xuat</a> </h1>
<%
    String username = (String) session.getAttribute("username");
    if (session!=null){
        out.println("Xin chao " + username);
    }
%>
</body>
</html>