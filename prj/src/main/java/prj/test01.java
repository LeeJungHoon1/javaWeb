package prj;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/test1")
public class test01 extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		String su1_ = request.getParameter("su1");
		String su2_ = request.getParameter("su2");
		
		int su1 = Integer.parseInt(su1_);
		int su2 = Integer.parseInt(su2_);
		
		int add = su1+su2;
		int sub = su1-su2;
		int mul = su1*su2;
		int div = su1/su2;
		
		response.setContentType("text/html; charset=UTF-8");	
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<meta charset=\"UFT-8\">");
		out.println("<title> 실습1 </title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h2>실습1</h2>");	 
		out.println("두수의 덧셈은: " + add);
		out.println("두수의 뺄셈는: " + sub);
		out.println("두수의 곱셈은: " + mul);
		out.println("두수의 나눗셈은: " + div);
		out.println("</body>");
		out.println("</html>");
		
	}
}
