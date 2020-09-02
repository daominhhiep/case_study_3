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
</head>
<body>
<form method="post" action="/create">
    <table>
        <tr>
            <th>Tên đầy đủ:</th>
            <td><input type="text" name="name"/></td>
        </tr>
        <tr>
            <th>Tên tài khoản:</th>
            <td><input type="text" name="username"/></td>
        </tr>
        <tr>
            <th>Mật khẩu:</th>
            <td><input type="password" name="userpass"/></td>
        </tr>
        <tr>
            <th>Xác nhận mật khẩu:</th>
            <td><input type="text" name="reUserpass"/></td>
        </tr>
        <tr>
            <th>Email:</th>
            <td><input type="text" name="email"/></td>
        </tr>
        <tr>
            <th>Số điện thoại:</th>
            <td><input type="text" name="phonenumber"/></td>
        </tr>
    </table>
    <input type="submit" value="Tạo tài khoản"/>
    <button class="btn btn-success"><a style="text-decoration: none" href="../index.jsp">Quay lai</a> </button>
</form>
</body>
</html>
