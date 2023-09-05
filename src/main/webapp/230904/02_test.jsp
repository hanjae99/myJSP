<%@ page import="com.keduit.dao.MemberDAO" %>
<%@ page import="java.sql.Connection" %><%--
  Created by IntelliJ IDEA.
  User: hanjae
  Date: 2023/09/04
  Time: 12:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  MemberDAO memberDAO = MemberDAO.getInstance();
  Connection conn = memberDAO.getConnection();
  out.println("DBCP 연동 성공");
%>
</body>
</html>
