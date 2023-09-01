<%@ page import="com.keduit.MemberBean" %><%--
  Created by IntelliJ IDEA.
  User: hanjae
  Date: 2023/09/01
  Time: 11:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="member" class="com.keduit.MemberBean"/>
<jsp:setProperty name="member" property="*"/>
<html>
<head>
    <title>회원정보</title>
</head>
<body>
<%--자바 빈 사용--%>
이름: ${member.name}
아이디: ${member.userid}
비밀번호: ${member.pwd}
닉네임: ${member.nickname}<br>
<%--request param 사용--%>
이름: ${param.name}
아이디: ${param.userid}
비밀번호: ${param.pwd}
닉네임: ${param.nickname}
</body>
</html>
