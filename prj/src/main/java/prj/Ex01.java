package prj;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lotte3.do")
public class Ex01 extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/plain;charset=utf-8");	// 서버가 보내는 데이터의 형식 html형식임을 알려줌	"text/plain"
		response.setCharacterEncoding("utf-8"); // utf-8형식으로 데이터를 보낸다는 의미
		PrintWriter out = response.getWriter();	
		out.println("<html>");					// html,css
		out.println("<head>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h2>hi servlet와</h2>");
		out.println("</body>");
		out.println("</html>");
		
	}
	
}
