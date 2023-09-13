package day08_survey;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/결과")
public class ResultServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String flower = request.getParameter("flower");
		
		//데이터심기
		//좋아하는 동물정보
		HttpSession session = request.getSession();
		String animal = (String)session.getAttribute("inanimal");
		System.out.println(animal);
		//좋아하는 꽃정보
		
		request.setAttribute("inanimal", animal);
		request.setAttribute("inflower", flower);
		request.getRequestDispatcher("WEB-INF/views/result.jsp").forward(request, response);
	}
}
