<%--
  Created by IntelliJ IDEA.
  User: hanjae
  Date: 2023/09/01
  Time: 9:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  String id = "keduit";
  String pwd = "12345";
  String name = "한정교";

  if(id.equals(request.getParameter("id")) && pwd.equals(request.getParameter("pwd"))){
    session.setAttribute("loginUser", name);
    response.sendRedirect("10_main.jsp");
  }else{
    response.sendRedirect("08_loginForm.jsp");
  }
%>

</body>
</html>
