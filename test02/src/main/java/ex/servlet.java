package ex;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/list")
public class servlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		service s = new service();
		
		ArrayList<Customer> c = s.getList();
		
		req.setAttribute("list", c);
		req.getRequestDispatcher("WEB-INF/views2/list.jsp").forward(req, resp);
	}

}
