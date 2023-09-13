package 실습;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ex03")
public class Ex03 extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		ServiceEx03 b = new ServiceEx03();
		ArrayList<BucketList> list = b.getbucket();

		req.setAttribute("bucket" ,list);
		req.getRequestDispatcher("WEB-INF/views/Ex03.jsp").forward(req, resp);
	}

}
