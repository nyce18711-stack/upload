package com.mz.tag.unit;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "unitc", value = "/unit-menu")
public class UnitC extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        request.setAttribute("contentPage", "unit/index.jsp");
        request.getRequestDispatcher("main.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println(1111);
        UnitModel.calc(request);
        request.setAttribute("contentPage", "unit/output.jsp");
        request.getRequestDispatcher("main.jsp").forward(request,response);

    }

    public void destroy() {
    }
}