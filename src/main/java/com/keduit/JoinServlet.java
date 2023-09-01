package com.keduit;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "JoinServlet", value = "/JoinServlet")
public class JoinServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        PrintWriter out = response.getWriter();
        out.print("<html><body>");
        String name = request.getParameter("name");
        String jumin = request.getParameter("jumin_1") + "-" + request.getParameter("jumin_2");
        String id = request.getParameter("id");
        String pwd = request.getParameter("pwd");
        String email = request.getParameter("email");
        if (request.getParameter("email_dns").trim() == ""){
            email += "@" + request.getParameter("emailaddr");
        }else {
            email += "@" + request.getParameter("email_dns");
        }

        String zip = request.getParameter("zip");
        String addr = request.getParameter("addr1") + " " + request.getParameter("addr2");
        String phone = request.getParameter("phone");
        String job = request.getParameter("job");
        String interests[] = request.getParameterValues("interest");

        out.println("이름test: " + name);
        out.println("주민번호: " + jumin);
        out.println("아이디: " + id);
        out.println("비밀번호: " + pwd);
        out.println("이메일: " + email);
        out.println("우편번호: " + zip);
        out.println("주소: " + addr);
        out.println("전화: " + phone);
        out.println("직업: " + job);
        out.println("관심분야: ");

        if(interests == null){
            out.print("선택한 항목이 없습니다.");
        }else {
            for (String interest : interests) {
                out.print(interest + "");
            }
        }

        out.println("<br><a href='javascript:history.go(-1)'>다시 선택</a></body></html>");
        out.close();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}