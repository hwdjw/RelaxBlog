<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2017-05-04
  Time: 20:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<form action="comment/json" method="post">
    title:<br>
    <input type="text" name="title" value="Mickey">
    <br>
    content:<br>
    <input type="text" name="content" value="Mouse">
    <br>
    articleId:<br>
    <input type="text" name="artId" value="1">
    <br>
    categories:<br>
    <input type="text" name="categories" value="生活">
    <br><br>
    <input type="submit" value="Submit">
</form>

</body>
</html>
