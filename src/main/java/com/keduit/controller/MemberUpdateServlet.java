package com.keduit.controller;

import com.keduit.dao.MemberDAO;
import com.keduit.dto.MemberVO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/memberUpdate.do")
public class MemberUpdateServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userid = request.getParameter("userid");
        MemberDAO mDAO = MemberDAO.getInstance();
        MemberVO mVO = mDAO.getMember(userid);

        request.setAttribute("mVO", mVO);

        RequestDispatcher dispatcher = request.getRequestDispatcher("230904/member/memberUpdate.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
