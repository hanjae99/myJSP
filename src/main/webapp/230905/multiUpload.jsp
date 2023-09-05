<%--
  Created by IntelliJ IDEA.
  User: hanjae
  Date: 2023/09/05
  Time: 1:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>멀티 업로드</title>
</head>
<body>
<form action="/multiUpload.do" method="post" enctype="multipart/form-data">
    1.파일 지정하기: <input type="file" name="uploadFile01"><br>
    2.파일 지정하기: <input type="file" name="uploadFile02"><br>
    3.파일 지정하기: <input type="file" name="uploadFile03"><br>
    <input type="submit" value="업로드">
</form>
</body>
</html>
