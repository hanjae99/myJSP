<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: hanjae
  Date: 2023/08/31
  Time: 5:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>세션에 저장된 특정 객체 삭제하기</title>
</head>
<body>
<h1>세션에 저장된 특정 객체 삭제하기</h1>
<%
  session.setAttribute("s_name1","저는 세션에 저장된 첫번째 값입니다.");
  session.setAttribute("s_name2","저는 세션에 저장된 두번째 값입니다.");
  session.setAttribute("s_name3","저는 세션에 저장된 세번째 값입니다.");
%>
<h3>세션값 삭제하기</h3>
<%
  Enumeration names = session.getAttributeNames();
  while (names.hasMoreElements()){
    String name = names.nextElement().toString();
    String value = session.getAttribute(name).toString();
    out.println(name + " : " + value + "<br>");
  }

  session.removeAttribute("s_name2");

  out.print("<h3>세션값을 삭제한 후</h3>");
  names = session.getAttributeNames();
  while (names.hasMoreElements()){
    String name = names.nextElement().toString();
    String value = session.getAttribute(name).toString();
    out.println(name + " : " + value + "<br>");
  }

  out.print("<h3>세션값을 모두 삭제한 후</h3>");
  out.println(request.isRequestedSessionIdValid());
  session.invalidate();
  out.println(request.isRequestedSessionIdValid());
%>
</body>
</html>
