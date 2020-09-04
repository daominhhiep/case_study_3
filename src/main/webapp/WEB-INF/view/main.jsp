<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 01-Sep-20
  Time: 3:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <c:forEach items="${listPost}" var="cus">
        <tr>
            <td><img src="${cus.images}" alt="không có" width="200px" height="200px"></td>
            <td>${cus.content}</td>
            <td>${cus.images}</td>
            <td>${cus.postId}</td>
        </tr>
    </c:forEach>
</body>
</html>