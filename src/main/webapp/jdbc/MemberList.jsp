<%--
  Created by IntelliJ IDEA.
  User: hanjae
  Date: 2023/09/01
  Time: 11:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%!
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;
    String url = "jdbc:oracle:thin:@localhost:1521:XE";
    String uid = "scott";
    String pass = "tiger";
    String sql = "SELECT * FROM member";
%>
<html>
<head>
    <title>MemberList</title>
</head>
<body>
<table width="800" border="1">
    <tr>
        <th>이름</th>
        <th>아이디</th>
        <th>암호</th>
        <th>이메일</th>
        <th>전화번호</th>
        <th>권한(1.관리자, 0.일반회원)</th>
    </tr>
    <%
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn = DriverManager.getConnection(url, uid, pass);
            stmt = conn.createStatement();
            rs = stmt.executeQuery(sql);

            while (rs.next()){
                out.println("<tr>");
                out.println("<td>" + rs.getString("name")+"</td>");
                out.println("<td>" + rs.getString("userid")+"</td>");
                out.println("<td>" + rs.getString("pwd")+"</td>");
                out.println("<td>" + rs.getString("email")+"</td>");
                out.println("<td>" + rs.getString("phone")+"</td>");
                out.println("<td>" + rs.getInt("admin")+"</td>");
                out.println("</tr>");
            }

    } catch (SQLException e) {
            e.printStackTrace();
    }finally {
            if (rs != null){
                rs.close();
            }
            if (stmt != null){
                stmt.close();
            }
            if (conn != null){
                conn.close();
            }
        }
%>
</table>
</body>
</html>
