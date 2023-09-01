<%--
  Created by IntelliJ IDEA.
  User: hanjae
  Date: 2023/09/01
  Time: 11:34 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--둘이 같음--%>
${"안녕하세요"}
<%= "안녕하세요"%>
<%--El 에서의 null = 공백--%>
<p>El 에서의 null 표현 : ${null}</p>
<%
  String input = null;
%>
<p>표현식에서의 null 표현 : <%= input%></p>
<p>El에서의 empty : ${empty input}</p>
</body>
</html>
