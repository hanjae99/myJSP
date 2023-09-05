<%--
  Created by IntelliJ IDEA.
  User: hanjae
  Date: 2023/09/01
  Time: 11:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원 가입</title>
    <link href="./css/join.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="./js/join.js"></script>
</head>
<body>
<form name="frm" id="reg_frm" method="POST" action="addMember.jsp">
    <lable for="name">이름</lable><span> * </span>
    <input type="text" id="name" name="name" required><br>

    <label for="id"> 아이디  </label><span style="color:red;"> * </span>
    <input type="text" id="id" name="userid" required><br>

    <label for="pwd"> 비밀번호 </label><span style="color:red;"> * </span>
    <input type="password" id="pwd" name="pwd" required><br>

    <label for="email">이메일 </label><span style="color:red;"> * </span> &nbsp;
    <input type="text" id="email" name="email" required><br>

    <label for="phone">전화번호 </label><span style="color:red;"> * </span>
    <input type="text" id="phone" name="phone" required><br>

    <label >권한 </label><span style="color:red;"> * </span>
    <input type="radio"  name="admin" value="1">관리자
    <input type="radio"  name="admin" value="0">일반회원
    <br>

    <div id="button">
        <input type="submit" value="등록">
        <input type="reset" value="취소">
    </div>
</form>

</body>
</html>
