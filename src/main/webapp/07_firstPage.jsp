<%--
  Created by IntelliJ IDEA.
  User: hanjae
  Date: 2023/08/31
  Time: 3:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  pageContext.setAttribute("name", "page man");
  request.setAttribute("name", "request man");
  session.setAttribute("name", "session man");
  application.setAttribute("name", "application man");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
firstPage.jsp: <br>
하나의 페이지 속성 : <%= pageContext.getAttribute("name")%>
하나의 요청 속성 : <%= request.getAttribute("name")%>
하나의 세션 속성 : <%= session.getAttribute("name")%>
하나의 애플리케이션 속성 : <%= application.getAttribute("name")%>
<%
    request.getRequestDispatcher("08_secondPage.jsp").forward(request, response);
%>
</body>
</html>
