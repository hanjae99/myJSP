package com.keduit.controller;

import com.keduit.dao.MemberDAO;
import com.keduit.dto.MemberVO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/login.do")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("230904/member/login.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "230904/member/login.jsp";

        String userid = request.getParameter("userid");
        String pwd = request.getParameter("pwd");

        MemberDAO mDAO = MemberDAO.getInstance();

        int result = mDAO.userCheck(userid, pwd);
        System.out.println(result);

        if (result == 1) {
            // 로그인 성공 시 성공한 유저의 정보를 세션에 저장
            MemberVO mVO = mDAO.getMember(userid);
            HttpSession session = request.getSession();
            request.setAttribute("loginUser", mVO);
            request.setAttribute("message", "회원 로그인 성공");
            url = "230904/main.jsp";

        } else if (result == 0) {
            request.setAttribute("message", "비밀번호가 맞지 않아요");
        } else {
            request.setAttribute("message", "아이디가 맞지 않아요");
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher(url);
        dispatcher.forward(request, response);
    }
}
