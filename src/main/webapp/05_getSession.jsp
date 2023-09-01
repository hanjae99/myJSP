<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: hanjae
  Date: 2023/08/31
  Time: 4:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  String id = (String) session.getAttribute("id");
  String pwd = (String) session.getAttribute("pwd");
  Integer age = (Integer) session.getAttribute("age");
%>
id: <%= id%>
pwd: <%= pwd%>
age: <%= age%>
<h1>이름과 세션값 가져오기</h1>
<%
    Enumeration names = session.getAttributeNames();
    while (names.hasMoreElements()){
        String name = names.nextElement().toString();
        String value = session.getAttribute(name).toString();
        out.println(name + " : " + value + "<br>");
    }
%>
</body>
</html>
