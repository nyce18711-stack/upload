package com.kky.web;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/all")
public class HelloServlet extends HttpServlet {


    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        //전체 조회
        MemberDAO.getAllMember(request);
        //어디로?
        request.getRequestDispatcher("member_list.jsp").forward(request, response);

    }


    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        //멤버추가
        MemberDAO.addMember(request);


        //어디로?
        //MemberDAO.getAllMember(request);
        //request.getRequestDispatcher("member_list.jsp").forward(request,response);
        response.sendRedirect("all");


    }


    public void destroy() {
    }
}