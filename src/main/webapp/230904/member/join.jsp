<%--
  Created by IntelliJ IDEA.
  User: hanjae
  Date: 2023/09/04
  Time: 3:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <script type="text/javascript" src="/230904/script/member.js"></script>
  <title>회원가입</title>
</head>
<body>
<h3>회원 정보 입력</h3>
<form method="post" name="frm" id="frm" action="/join.do">
  <label for="name">이름</label><span style="color:red;"> * </span>
  <input type="text" id="name" name="name" required><br>

  <label for="userid"> 아이디  </label><span style="color:red;"> * </span>
  <input type="text" id="userid" name="userid" size="20" required>
  <input type="hidden" name="reid" size="20">
  <input type="button" value="중복확인" onclick="idCheck()"><br>

  <label for="pwd"> 비밀번호 </label><span style="color:red;"> * </span>
  <input type="password" id="pwd" name="pwd" required><br>

  <label for="re_pwd"> 비밀번호 확인 </label><span style="color:red;"> * </span>
  <input type="password" id="re_pwd" name="re_pwd" required><br>

  <label for="email">이메일 </label><span style="color:red;"> * </span> &nbsp;
  <input type="text" id="email" name="email" required><br>

  <label for="phone">전화번호 </label><span style="color:red;"> * </span>
  <input type="text" id="phone" name="phone" required><br>

  <label >권한 </label><span style="color:red;"> * </span>
  <input type="radio"  name="admin" value="1">관리자
  <input type="radio"  name="admin" value="0">일반회원
  <br>

  <div id="button">
    <input type="submit" value="등록" onclick="return joinCheck()">
    <input type="reset" value="취소">
  </div>
</form>
<p>${message}</p>
</body>
</html>

