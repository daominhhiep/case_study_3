<%--
  Created by IntelliJ IDEA.
  User: dongn
  Date: 9/3/2020
  Time: 3:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Title</title>
</head>
<body>
<form action="/ServletFileUpload" method="post" enctype="multipart/form-data">
    <table width="400px" align="center" border=2>
        <tr>
            <td align="center" colspan="2">Form Details</td>
        </tr>
<%--        <tr>--%>
<%--            <td>id </td>--%>
<%--            <td>--%>
<%--                <input type="text" required="" name="id">--%>
<%--            </td>--%>
<%--        </tr>--%>
        <tr>
            <td>Tiêu đề </td>
            <td>
                <input type="text" required="" name="content">
            </td>
        </tr>

        <tr>
            <td>Select Photo </td>
            <td>
                <input type="file" required="" name="file">
            </td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Submit"></td>
        </tr>
    </table>

</form>
</body>
</html>
