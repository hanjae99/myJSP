<%--
  Created by IntelliJ IDEA.
  User: hanjae
  Date: 2023/09/04
  Time: 3:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>회원 페이지</title>
</head>
<body>
<h2>회원 페이지</h2>
<form action="/logout.do">
  <p>안녕하세요. ${loginUser.name}(${loginUser.userid})님</p>
    <p></p>
    <div>
        <input type="submit" value="로그아웃">&nbsp;
        <input type="button" value="회원정보 수정" onclick="location.href='memberUpdate.do?userid=${loginUser.userid}'">
    </div>
</form>
</body>
</html>
