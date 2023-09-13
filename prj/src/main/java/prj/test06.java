package prj;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/test6")
public class test06 extends HttpServlet{
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
		out.println("<title> 실습6 </title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h2>실습6</h2>");	
		out.println(su+"의 약수는 :");
		for(int i = 1; i<=su; i++) {
			if(su%i==0) {
				out.print(su/i + ", ");
			}else {
				continue;
			}
		}
		out.println("</html>");
		
	}
}
