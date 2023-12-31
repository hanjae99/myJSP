<%--
  Created by IntelliJ IDEA.
  User: hanjae
  Date: 2023/09/01
  Time: 3:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
    <title>jstlFmt</title>
</head>
<body>
<c:set var="now" value="<%= new java.util.Date()%>"></c:set>
\${now} = ${now}
<br>
<fmt:formatDate value="${now}"></fmt:formatDate> <br>
date: <fmt:formatDate value="${now}" type="date"></fmt:formatDate> <br>
time: <fmt:formatDate value="${now}" type="time"></fmt:formatDate> <br>
both: <fmt:formatDate value="${now}" type="both"></fmt:formatDate> <br>
default: <fmt:formatDate value="${now}" type="both" dateStyle="default"></fmt:formatDate> <br>
long: <fmt:formatDate value="${now}" type="both" dateStyle="long"></fmt:formatDate> <br>
medium: <fmt:formatDate value="${now}" type="both" dateStyle="medium"></fmt:formatDate> <br>
short: <fmt:formatDate value="${now}" type="both" dateStyle="short"></fmt:formatDate> <br>
pattern = "yyyy년 MM월 dd일 hh시 mm분 ss초" :
<fmt:formatDate value="${now}" pattern="yyyy년 MM월 dd일 hh시 mm분 ss초"/>
</body>
</html>
