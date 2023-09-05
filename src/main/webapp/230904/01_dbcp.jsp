<%@ page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager"%>
<%@ page import="javax.sql.DataSource" %>
<%@ page import="javax.naming.Context" %>
<%@ page import="javax.naming.InitialContext" %><%--
  Created by IntelliJ IDEA.
  User: hanjae
  Date: 2023/09/04
  Time: 11:35 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>DB 연동</title>
</head>
<body>
<h4>DB 연동</h4>
<%
  Context initContext = new InitialContext();
  Context envContext  = (Context)initContext.lookup("java:/comp/env");
  DataSource ds = (DataSource)envContext.lookup("jdbc/myoracle");
  Connection conn = ds.getConnection();
  out.println("DBCP연동 성공");
%>
</body>
</html>
