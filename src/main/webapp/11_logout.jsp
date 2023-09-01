<%--
  Created by IntelliJ IDEA.
  User: hanjae
  Date: 2023/09/01
  Time: 10:07 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>logout</title>
</head>
<body>
<%
  session.invalidate();
%>
<script>
  alert("로그아웃 되었습니다.");
  location.href = "08_loginForm.jsp";
</script>
</body>
</html>
