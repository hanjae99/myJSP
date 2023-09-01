<%--
  Created by IntelliJ IDEA.
  User: hanjae
  Date: 2023/09/01
  Time: 11:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="member" class="com.keduit.MemberBean"></jsp:useBean>
<jsp:setProperty name="member" property="*"/>
<html>
<head>
    <title>title</title>
</head>
<body>
<h2>회원 정보</h2>
이름: <jsp:getProperty name="member" property="name"/>
아이디: <jsp:getProperty name="member" property="userid"/>
비밀번호: <jsp:getProperty name="member" property="pwd"/>
닉네임: <jsp:getProperty name="member" property="nickname"/>
</body>
</html>
