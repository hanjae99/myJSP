<%--
  Created by IntelliJ IDEA.
  User: hanjae
  Date: 2023/09/01
  Time: 10:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>addMember</title>
</head>
<body>
<h3>회원 정보 입력</h3>
<form method="post" name="frm" id="reg_frm" action="02_addMember.jsp">
  <label for="name">이름</label><span style="color:red;"> * </span>
  <input type="text" id="name" value="김정보" name="name" required><br>

  <label for="userid"> 아이디  </label><span style="color:red;"> * </span>
  <input type="text" id="userid" name="userid" value="pinksung" required><br>

  <label for="pwd"> 비밀번호 </label><span style="color:red;"> * </span>
  <input type="password" id="pwd" name="pwd" value="1234" required><br>

  <label for="nickname"> 닉네임 </label><span style="color:red;"> * </span>
  <input type="text" id="nickname" name="nickname" value="pink" required><br>

  <div id="button">
    <input type="submit" value="회원가입">
    <input type="reset" value="취소">
  </div>
</form>
</body>
</html>
