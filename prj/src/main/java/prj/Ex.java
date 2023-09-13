package prj;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/eximage")
public class Ex   extends HttpServlet{	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {	
		response.setContentType("text/html;charset=utf-8");	// 서버가 보내는 데이터의 형식 html형식임을 알려줌	"text/plain"
		response.setCharacterEncoding("utf-8"); // utf-8형식으로 데이터를 보낸다는 의미
	
		
		PrintWriter out  =response.getWriter();		
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<meta charset=\"UFT-8\">");
		out.println("<title> Insert title here </title>");
		out.println("</head>"); 
		out.println("<img src =\"/prj/img/cut3.jpg\">");
		out.println("</body>");
		out.println("</html>");
		
		
	}

}
