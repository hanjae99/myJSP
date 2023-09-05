package com.keduit;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

@WebServlet("/multiUpload.do")
public class MultiUploadServlet extends HttpServlet {
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//    }

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

        MultipartRequest multi = new MultipartRequest(
                request, uploadFilePath, uploadFileSizeLimit, encType, new DefaultFileRenamePolicy());
        Enumeration<String> files = multi.getFileNames();
        while (files.hasMoreElements()){
            String file = files.nextElement();
            String file_Name = multi.getFilesystemName(file);
            out.println("<br>업로드된 파일명: " + file_Name);
            file_Name = multi.getOriginalFileName(file);
            out.println("<br>원본 파일명: " + file_Name);
            out.println("<hr>");
        }
    }
}
