package prj;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/test4")
public class test04 extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Book B = new Book();
		B.title = "어린왕자";
		B.price = 10000;
		B.author = "생텍쥐페리";
		response.setContentType("text/html; charset=UTF-8");	
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<meta charset=\"UFT-8\">");
		out.println("<title> 실습4 </title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h2>실습4</h2>");	 
		out.println(B.toString());
		out.println("</html>");
		
	}
}
