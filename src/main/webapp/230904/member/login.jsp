<%--
  Created by IntelliJ IDEA.
  User: hanjae
  Date: 2023/09/04
  Time: 12:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<script type="text/javascript" src="../script/member.js"></script>
    <title>로그인</title>
</head>
<body>
<form method="post" action="/login.do" name="frm">
    <input type="text" name="userid" id="userid" placeholder="아이디를 입력하세요"><br>
    <input type="password" name="pwd" id="pwd" placeholder="비밀번호를 입력하세요"><br>
    <input type="submit" value="로그인" onclick="return loginCheck()">&nbsp;&nbsp;
    <input type="reset" value="취소">&nbsp;&nbsp;
    <input type="button" value="회원가입" onclick="location.href='/join.do'">

    <p>${message}</p>
</form>
</body>
</html>
