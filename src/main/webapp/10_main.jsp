<%--
  Created by IntelliJ IDEA.
  User: hanjae
  Date: 2023/09/01
  Time: 9:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>main</title>
</head>
<body>
<%
  String loginUser = (String) session.getAttribute("loginUser");

  if (loginUser == null){
    response.sendRedirect("08_loginForm.jsp");
  }else{
%>
<%= loginUser%> 님 안녕하세요. <br>
<form method="post" action="11_logout.jsp">
    <input type="submit" value="로그아웃">
</form>
<%
    }
%>
</body>
</html>
