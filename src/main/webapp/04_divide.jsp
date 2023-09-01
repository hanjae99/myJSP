<%--
  Created by IntelliJ IDEA.
  User: hanjae
  Date: 2023/08/31
  Time: 12:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page errorPage="error.jsp" %>
<html>
<head>
    <title>JSP</title>
</head>
<body>
0으로 나누는 것은 불능입니다.
<%--강제로 예외를 발생시킴--%>
<%= 2/0 %>
</body>
</html>
