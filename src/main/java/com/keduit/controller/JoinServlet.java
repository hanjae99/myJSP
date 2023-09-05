//package com.keduit.controller;
//
//import javax.servlet.*;
//import javax.servlet.http.*;
//import javax.servlet.annotation.*;
//import java.io.IOException;
//
//@WebServlet(name = "JoinServlet", value = "/join.do")
//public class JoinServlet extends HttpServlet {
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        RequestDispatcher dispatcher = request.getRequestDispatcher("230904/member/join.jsp");
//        dispatcher.forward(request, response);
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//    }
//}
package com.keduit.controller;

import com.keduit.dao.MemberDAO;
import com.keduit.dto.MemberVO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/join.do")
public class JoinServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher =request.getRequestDispatcher("230904/member/join.jsp");
        dispatcher.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String name = request.getParameter("name");
        String userid = request.getParameter("userid");
        String pwd = request.getParameter("pwd");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String admin = request.getParameter("admin");

        MemberVO mVO = new MemberVO();
        mVO.setName(name);
        mVO.setUserid(userid);
        mVO.setPwd(pwd);
        mVO.setEmail(email);
        mVO.setPhone(phone);
        mVO.setAdmin(Integer.parseInt(admin));

        MemberDAO mDAO = MemberDAO.getInstance();
        int result = mDAO.insertMember(mVO);

        HttpSession session = request.getSession();
        // insert 성공
        if (result > 0){
            session.setAttribute("userid", mVO.getUserid());
            request.setAttribute("message", "회원가입에 성공했습니다.");
        }else{
            // insert 실패
            request.setAttribute("message", "회원가입에 실패했습니다.");
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher("230904/member/login.jsp");
        dispatcher.forward(request, response);
    }
}
