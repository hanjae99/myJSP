<%--
  Created by IntelliJ IDEA.
  User: hanjae
  Date: 2023/09/01
  Time: 11:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection" %>
<%!
    Connection conn = null;
    PreparedStatement pstmt =null;
    String url ="jdbc:oracle:thin:@localhost:1521:XE";
    String uid ="scott";
    String pass = "tiger";
    String sql = "insert into member values(?,?,?,?,?,?)";
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String name = request.getParameter("name");
    String userid = request.getParameter("userid");
    String pwd = request.getParameter("pwd");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    int admin = Integer.parseInt(request.getParameter("admin"));

    try{
        // 드라이버로드
        Class.forName("oracle.jdbc.driver.OracleDriver");
        conn = DriverManager.getConnection(url ,uid , pass);
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1,name);
        pstmt.setString(2,userid);
        pstmt.setString(3,pwd);
        pstmt.setString(4,email);
        pstmt.setString(5,phone);
        pstmt.setInt(6,admin);
        int result = pstmt.executeUpdate();
        System.out.println(result);
    }catch (Exception e){
        e.printStackTrace();
    }finally {
        try {
            if(pstmt != null)
                pstmt.close();
            if(conn !=null)
                conn.close();
        }catch (Exception e){
            e.printStackTrace();
        }
    }
%>

<h3>회원 가입 성공</h3>
<a href="MemberList.jsp">회원 목록 보기</a>
</body>
</html>

