package 실습;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ex02")
public class Ex02 extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		ServiceEx02 e = new ServiceEx02();
		String[] m = e.getMovie();
		
		req.setAttribute("movie",m);
		req.getRequestDispatcher("WEB-INF/views/Ex02.jsp").forward(req,resp);
	}
	
}
