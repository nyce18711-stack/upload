package com.kky.tag.bmi;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "bmiC", value = "/bmi")
public class bmiC extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

//        Model.makeInfo(request);

        //어디로?
        request.setAttribute("contentPage","bmi/bmimenu.jsp");
        request.getRequestDispatcher("main.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Model.makeInfo(request);

        request.setAttribute("contentPage","bmi/output.jsp");
        request.getRequestDispatcher("main.jsp").forward(request,response);

    }

    public void destroy() {

    }
}