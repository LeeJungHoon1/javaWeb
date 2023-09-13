package prj;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//서블릿의 시작이 service 매서드 작성해야함
public class SecondServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("senond servlet");
		PrintWriter out = response.getWriter(); //응답할 출력스트림 얻어오기
		out.print("hi second servlet!!");
		
		
	}
}
