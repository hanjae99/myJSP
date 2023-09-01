<%--
  Created by IntelliJ IDEA.
  User: hanjae
  Date: 2023/09/01
  Time: 2:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
  String[] movieList = {"타이타닉", "노트북", "라라랜드", "헤어질 결심", "가위손"};
  pageContext.setAttribute("movieList", movieList);
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${param.color == 1}">
  <h1 style="color: red;">빨강</h1>
</c:if>
<c:if test="${param.color == 2}">
  <h1 style="color: yellow;">노랑</h1>
</c:if>
<c:if test="${param.color == 3}">
  <h1 style="color: green;">초록</h1>
</c:if>
<c:choose>
  <c:when test="${param.fruit == 1}">
    <h1 style="color: red">사과</h1>
  </c:when>
  <c:when test="${param.fruit == 2}">
    <h1 style="color: green">키위</h1>
  </c:when>
  <c:when test="${param.fruit == 3}">
    <h1 style="color: pink">복숭아</h1>
  </c:when>
</c:choose>
<c:forEach var="item" items="${paramValues.item}" varStatus="status">
  ${item} <c:if test="${not status.last}">,</c:if>
</c:forEach>
<%--status 사용 시 index 나 count 사용 가능--%>
<c:forEach var="movie" items="${movieList}" varStatus="status">
  ${status.index}
  ${status.count}
  ${movie}
</c:forEach>
</body>
</html>
