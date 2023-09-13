package prj0831;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/mvc4")
public class MVCServlet4 extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// model 얻어오기
		
		ServiceMVC4 s = new ServiceMVC4();
		ArrayList<String> result = s.getMovies();
		
		//view foward
		request.setAttribute("movies",result);
		request.getRequestDispatcher("WEB-INF/views/movies.jsp").forward(request,response);
	}

}
