package com.mz.tag.bmi;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "bmic", value = "/bmi-menu")
public class BMIC extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        request.setAttribute("contentPage", "bmi/bmi_byGPT_in.jsp");
        request.getRequestDispatcher("main.jsp").forward(request,response);


    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        System.out.println("doPost");
        BMIModel.calcBMI(request);

        request.setAttribute("contentPage", "bmi/bmi_byGPT.jsp");
        request.getRequestDispatcher("main.jsp").forward(request,response);
    }


}