package userReg;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/reg.do")
public class RegServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		req.getRequestDispatcher("WEB-INF/views/reg.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		String name = req.getParameter("name");
		String birth = req.getParameter("birth");
		String tel = req.getParameter("tel");
		
		RegService s = new RegService();
		resp.setContentType("text/html; charset=UTF-8");
		s.regUser(new User(id,pw,name,birth,tel));
		boolean result = (id.equals(null))? true:(pw.equals(null))? true:(name.equals(null))? true:(birth.equals(null))? true:(tel.equals(null))? true:false;
		PrintWriter out = resp.getWriter();
		
		if(result) {
			out.println("<script>");
			out.println("alert('삭제된 게시글입니다.!!!');");
			out.println("</script>");
			req.getRequestDispatcher("WEB-INF/views/reg.jsp").forward(req,resp);
		}else {
			out.println("<script>");
			out.println("alert('삭제된 게시글입니다.!!!');");
			out.println("</script>");
			req.getRequestDispatcher("WEB-INF/views/login.jsp").forward(req,resp);
		}
		

		
	}

}
