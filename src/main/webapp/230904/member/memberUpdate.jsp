<%--
  Created by IntelliJ IDEA.
  User: hanjae
  Date: 2023/09/05
  Time: 11:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <script type="text/javascript" src="/230904/script/member.js"></script>
    <title>회원 정보 수정</title>
</head>
<body>
<h3>회원 정보 수정</h3>
<form method="post" name="frm" id="frm" action="/memberUpdate.do">
    <label for="name">이름</label><span style="color:red;"> * </span>
    <input type="text" id="name" name="name" value="${mVO.name}" required><br>

    <label for="userid"> 아이디  </label><span style="color:red;"> * </span>
    <input type="text" id="userid" name="userid" size="20" value="${mVO.userid}" readonly><br>

    <label for="pwd"> 비밀번호 </label><span style="color:red;"> * </span>
    <input type="password" id="pwd" name="pwd" value="${mVO.pwd}" required><br>

    <label for="re_pwd"> 비밀번호 확인 </label><span style="color:red;"> * </span>
    <input type="password" id="re_pwd" name="re_pwd" value="${mVO.pwd}" required><br>

    <label for="email">이메일 </label><span style="color:red;"> * </span> &nbsp;
    <input type="text" id="email" name="email" value="${mVO.email}" required><br>

    <label for="phone">전화번호 </label><span style="color:red;"> * </span>
    <input type="text" id="phone" name="phone" value="${mVO.phone}" required><br>

    <label >권한 </label><span style="color:red;"> * </span>
    <c:if test="${mVO.admin == 0}">
        <input type="radio"  name="admin" value="0" checked>일반회원
        <input type="radio"  name="admin" value="1">관리자
    </c:if>
    <c:if test="${mVO.admin == 1}">
        <input type="radio"  name="admin" value="0">일반회원
        <input type="radio"  name="admin" value="1" checked>관리자
    </c:if>
    <br>

    <div id="button">
        <input type="submit" value="등록" onclick="return updateCheck()">
        <input type="reset" value="취소">
    </div>
</form>
<p>${message}</p>
</body>
</html>
