package com.keduit;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LifeCycle", value = "/LifeCycle")
public class LifeCycle extends HttpServlet {
    public LifeCycle(){
        super();
    }

    int initCount = 1;
    int doGetCount = 1;
    int destroyCount = 1;

    public void init(ServletConfig config) throws ServletException{
        System.out.println("init 메소드는 첫 요청만 호출됨: " + initCount++);
    }

    public void destroy(){
        System.out.println("destroy 메소드는 tomcat 이 종료될 때 호출됨: " + destroyCount++);
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("doGet 메소드가 호출됨: " + doGetCount++);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
