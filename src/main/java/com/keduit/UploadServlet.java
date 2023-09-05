package com.keduit;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/upload.do")
public class UploadServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();

        String savePath = "230905/upload";
        int uploadFileSizeLimit = 5 * 1024 * 1024; /* 5MB */
        String encType = "UTF-8";

        ServletContext context = getServletContext();
        String uploadFilePath = context.getRealPath(savePath);
        System.out.print("서버상의 실제 디렉터리: ");
        System.out.println(uploadFilePath);

        MultipartRequest multi = new MultipartRequest(
                request, uploadFilePath, uploadFileSizeLimit, encType, new DefaultFileRenamePolicy());
        String fileName = multi.getFilesystemName("uploadFile");
        if (fileName == null) {
            System.out.println("파일이 업로드 되지 않음.");
        }else {
            out.println("<br>글쓴이: " + multi.getParameter("name"));
            out.println("<br>제목: " + multi.getParameter("title"));
            out.println("<br>파일명: " + fileName);
        }
    }
}
