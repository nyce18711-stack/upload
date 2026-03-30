package com.kky.web;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "MemberC", value = "/del")
public class MemberC extends HttpServlet {


    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        MemberDAO.delMember(M.getMember(request));

        //어디로?
        response.sendRedirect("all");
    }


    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {




    }


    public void destroy() {
    }
}