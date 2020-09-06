<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 06-Sep-20
  Time: 8:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<br>
${cus.path}
<br>
Comments
<c:forEach items="${post.comments}" var="comment">
    <br>
    ${comment.commentBody}
</c:forEach>

<br>
Add new comment
<form action="/posts/${post.postId}/comment" method="post">
    <input type="text" name="comment-text">
    <input type="submit" style="visibility: hidden">
</form>
</body>
</html>
