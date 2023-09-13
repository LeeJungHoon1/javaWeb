package prj0905_login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/logout")
public class LogoutServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		//세션개체 제거함
		session.invalidate();
		//session.setMaxInactiveInterval(3); //3초후에 로그아웃
		
		req.getRequestDispatcher("WEB-INF/views/home.jsp").forward(req, resp);
		resp.sendRedirect("/prj0905_login/home");
		
		
	}

}
