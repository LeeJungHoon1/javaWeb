package prj;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/test5")
public class test05 extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String su_ = request.getParameter("su");
		int su = Integer.parseInt(su_);


		
		response.setContentType("text/html; charset=UTF-8");	
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<meta charset=\"UFT-8\">");
		out.println("<title> 실습5 </title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h2>실습5</h2>");	 
		for(int i = 1; i<=su; i++) {
			out.println("*");
		}
		out.println("</html>");
		
	}
}
