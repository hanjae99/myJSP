<%--
  Created by IntelliJ IDEA.
  User: hanjae
  Date: 2023/09/01
  Time: 2:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>JSTL</title>
</head>
<body>
<c:set var="msg" value="Hello"></c:set>
\${msg} = ${msg}
<c:set var="age">30</c:set>
\${age} = ${age}
<c:set var="member" value="<%= new com.keduit.MemberBean()%>"></c:set>
<c:set target="${member}" property="name" value="한정교"></c:set>
<c:set target="${member}" property="userid">keduit</c:set>
\${member} = ${member}
<hr>
<c:set var="add" value="${10+5}"></c:set>
<c:set var="flag" value="${10 > 5}"></c:set>
\${add} = ${add}
\${flag} = ${flag}
</body>
</html>
