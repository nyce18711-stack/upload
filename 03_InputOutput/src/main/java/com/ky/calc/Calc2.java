package com.ky.calc;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DecimalFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Calc2")
public class Calc2 extends HttpServlet {
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	 int xx = Integer.parseInt(request.getParameter("x"));
	 int yy = Integer.parseInt(request.getParameter("y"));
	 String[] op = request.getParameterValues("opper");
	 System.out.println(xx);
	 System.out.println(yy);
		
		
		//브라우저에 뭘 쓰고 싶음 (html)
				response.setCharacterEncoding("utf-8");
				
				PrintWriter out =  response.getWriter();
				out.print("<html>");
				
				out.print("<head>");
				out.print("<meta charset=\"UTF-8\">");
				out.print("</head>");
				
				out.print("<body>");
				
				out.print("<div style=\"width: 500px; background-color: ivory; border: 2px solid\">");
				
				
				for (String operator : op) {
					//a,b,c,d
					if (operator.equals("a")) {
						out.printf("<div>%d + %d = %d</div>",xx, yy, xx+yy);
						
					} else if (operator.equals("b")) {
						out.printf("<div>%d - %d = %d</div>",xx, yy, xx-yy);
						
					} else if (operator.equals("c")) {
						out.printf("<div>%d x %d = %d</div>",xx, yy, xx*yy);
						
					} else if (operator.equals("d") && yy !=0 ) {
						double result = xx /(double)yy;
						DecimalFormat df = new DecimalFormat("#.##");
						String ttt = df.format(result);
						out.printf("<div>%d / %d = %s</div>",xx, yy, ttt);
					} else if (operator.equals("d") && yy == 0) {
						out.print("0으로 나눌 수 없어요..");
					}
				}	
					
					
				out.print("</div>");
				
				out.print("</body>");
				
				out.print("</html>");
				
				
				
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
	
	}

}
