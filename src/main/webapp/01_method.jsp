<%--
  Created by IntelliJ IDEA.
  User: hanjae
  Date: 2023/08/31
  Time: 9:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="get" action="MethodServlet">
    <input type="submit" value="get방식으로 호출">
</form>
<br>
<form method="post" action="MethodServlet">
    <input type="submit" value="post방식으로 호출">
    <a href="MethodServlet">여기를 클릭!</a>
</form>
</body>
</html>
