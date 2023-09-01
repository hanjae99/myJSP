<%--
  Created by IntelliJ IDEA.
  User: hanjae
  Date: 2023/08/31
  Time: 2:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>result</title>
</head>
<body>
forward 방식으로 이동된 페이지 <br>
나이: <%= request.getParameter("age")%>
<%
    String str = (String) request.getAttribute("name");
%>
이름: <%= str%>
</body>
</html>
