package com.keduit;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "MemberServlet", value = "/MemberServlet")
public class MemberServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MemberBean member = new MemberBean();
        request.setCharacterEncoding("UTF-8");
        member.setName(request.getParameter("name"));
        member.setUserid(request.getParameter("userid"));
        member.setPwd(request.getParameter("pwd"));
        member.setNickname(request.getParameter("nickname"));

        RequestDispatcher dispatcher = request.getRequestDispatcher("05_elMember.jsp");
        dispatcher.forward(request, response);
    }
}
