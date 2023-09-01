package com.keduit;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "AdditionalServlet01", value = "/AdditionalServlet01")
public class AdditionalServlet01 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html");
        int num1 = 20;
        int num2 = 10;
        int add = num1 + num2;
        PrintWriter out = response.getWriter();
        out.println("<html><head><title>additional</title></head><body>");
        out.println("<h1>계산기</h1>");
        out.println(num1 + " + " + num2 + " = " + add);
        out.println("</body></html>");
    }

//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//    }
}