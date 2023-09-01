package com.keduit;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ParamServlet", value = "/ParamServlet")
public class ParamServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        String id = request.getParameter("id");
        int age = Integer.parseInt(request.getParameter("age"));

        PrintWriter out = response.getWriter();
        out.println("<html><head><body>");
        out.println("당신이 입력한 자료 입니다.<br>");
        out.print("아이디: ");
        out.println(id);
        out.print("나이: ");
        out.println(age);
        out.println("<br><a href='javascript:history.go(-1)'>다시입력</a>");
        out.println("</body></html>");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        String id = request.getParameter("id");
        int age = Integer.parseInt(request.getParameter("age"));

        PrintWriter out = response.getWriter();
        out.println("<html><head><body>");
        out.println("당신이 입력한 자료 입니다.<br>");
        out.print("아이디: ");
        out.println(id);
        out.print("나이: ");
        out.println(age);
        out.println("<br><a href='javascript:history.go(-1)'>다시입력</a>");
        out.println("</body></html>");
    }
}