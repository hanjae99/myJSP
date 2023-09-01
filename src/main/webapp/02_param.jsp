<%--
  Created by IntelliJ IDEA.
  User: hanjae
  Date: 2023/08/31
  Time: 9:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>쿼리스트링</title>
    <script type="text/javascript" src="param.js"></script>
</head>
<body>
<form method="post" action="ParamServlet" name="frm">
    아이디: <input type="text" name="id"><br>
    나이: <input type="text" name="age"><br>
    <input type="submit" value="전송" onclick="return check()">
</form>
</body>
</html>
