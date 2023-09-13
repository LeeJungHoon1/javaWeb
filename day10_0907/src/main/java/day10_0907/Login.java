package day10_0907;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class Login extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("WEB-INF/views/login.jsp").forward(req,resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		
		HttpSession s = req.getSession();
		String sid = (String) s.getAttribute("id");
		String spw = (String) s.getAttribute("pw");
		
		
		boolean result = true;
		result = (id.equals(sid))? (pw.equals(spw))? true:false:false;
		if(result == true) {
			s.setAttribute("id", id);
			req.getRequestDispatcher("webapp/food.html").forward(req,resp);
		}
		else {
			String m = URLEncoder.encode("아이디확인","utf-8");
			resp.sendRedirect("/day10_0907/login?m="+m);
			
		}
		
	}
}
