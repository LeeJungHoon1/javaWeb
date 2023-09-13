package prj0905_survey2;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/survey2")
public class SurveyServlet2 extends HttpServlet{
		
		@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			
			String ainmal = req.getParameter("animal");
			// 사용자가 선택한 animal 정보세션하기
			
			req.getRequestDispatcher("WEB-INF/views/survey2.jsp").forward(req, resp);
		}

	}


