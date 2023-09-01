<%--
  Created by IntelliJ IDEA.
  User: hanjae
  Date: 2023/08/31
  Time: 5:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>세션의 메소드 활용하기</title>
</head>
<body>
<%
  String id_str = session.getId();
  Long lasttime = session.getLastAccessedTime();
  long createTime = session.getCreationTime();
  long time_used = (lasttime - createTime) / 1000;
  int inactive = session.getMaxInactiveInterval() / 60;
  boolean b_new = session.isNew();
%>
(1) 세션 ID는 [ <%= id_str%>]<br>
(2) 세션의 마지막 access 타임 [<%= lasttime%>]<br>
(3) 당신이 웹 사이트에 머문 시간은 [<%= time_used%>]<br>
(4) 세션의 유효시간은 [<%= inactive%>]<br>
(5) 세션이 새로 만들어 졌나요? <%= b_new%>
</body>
</html>
