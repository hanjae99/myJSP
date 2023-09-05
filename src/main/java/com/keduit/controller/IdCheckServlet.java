package com.keduit.controller;

import com.keduit.dao.MemberDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/idCheck.do")
public class IdCheckServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userid = request.getParameter("userid");
        MemberDAO mDAO = MemberDAO.getInstance();
        int result = mDAO.conformID(userid);
        request.setAttribute("userid", userid);
        request.setAttribute("result", result);
        RequestDispatcher dispatcher = request.getRequestDispatcher("230904/member/idCheck.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
