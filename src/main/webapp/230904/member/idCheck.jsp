<%--
  Created by IntelliJ IDEA.
  User: hanjae
  Date: 2023/09/04
  Time: 4:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>회원 확인</title>
    <script type="text/javascript" src="/230904/script/member.js"></script>
</head>
<body>
<h2>아이디 중복 확인</h2>
<form action="/idCheck.do" method="get" name="frm">
    아이디 <input type="text" name="userid" value="${userid}">
    <input type="submit" value="중복 확인">
    <br>
    <c:if test="${result == -1}">
        ${userid}는 사용가능한 아이디 입니다.
        <input type="button" value="사용" onclick="idOk()">
    </c:if>
    <c:if test="${result == 1}">
        <script type="text/javascript">
            opener.document.frm.userid.value = "";
        </script>
        ${userid}는 이미 사용중인 아이디 입니다.
    </c:if>
</form>
</body>
</html>
