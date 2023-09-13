package 실습;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ex01")
public class Ex01 extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		ServiceEx01 fs = new ServiceEx01();
		ArrayList<String> list = fs.getList();

		req.setAttribute("favorite", list);;
		req.getRequestDispatcher("WEB-INF/views/Ex01.jsp").forward(req, resp);
	}
}
