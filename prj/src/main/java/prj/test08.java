package prj;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/test8")
public class test08 extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		String[] a = {"화이팅","아자아자","넌 할수있어"};
		int ren = (int) (Math.random()*3);
		
		
		response.setContentType("text/html; charset=UTF-8");	
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<meta charset=\"UFT-8\">");
		out.println("<title> 실습8 </title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h2>실습8</h2>");	
		out.println(a[ren]);
		out.println("</html>");
		
	}
}
