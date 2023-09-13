package prj0905_survey;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/result")
public class ResultServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String flower = req.getParameter("flower");

		// 좋아하는 동물정보
		HttpSession session = req.getSession();
		String animal = (String) session.getAttribute("animal");

		// 좋아하는 꽃정보

		// 데이터심기

		req.setAttribute("flower", flower);
		req.setAttribute("animal", animal);

		req.getRequestDispatcher("WEB-INF/views/result.jsp").forward(req, resp);
	}

}
