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
    <!-- 配置文件 -->
    <script type="text/javascript" src="ueditor/ueditor.config.js"></script>
    <!-- 编辑器源码文件 -->
    <script type="text/javascript" src="ueditor/ueditor.all.js"></script>
</head>
<body>
<form action="article/add" method="post">
    title:<br>
    <input type="text" name="title" value="Mickey">
    <br>
    content:<br>
    <script id="container" name="content" type="text/plain">
            这里写你的初始化内容

    </script>
    <br>
    categories:<br>
    <input type="text" name="categories" value="生活">
    <br><br>
    <input type="submit" value="Submit">
</form>

<!-- 实例化编辑器 -->
<script type="text/javascript">
    var editor = UE.getEditor('container');
</script>
</body>
</html>
