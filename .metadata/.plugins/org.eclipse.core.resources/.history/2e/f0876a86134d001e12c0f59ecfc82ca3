package acorn;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

@WebServlet("/food5")
public class FoodServlet5 extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// json 관련 라이브러리
		response.setCharacterEncoding("utf-8");
		response.setContentType("Text/html;charset=utf-8");

		FoodService service = new FoodService();
		JSONArray arr = service.getFoodRealList();

		response.getWriter().println(arr);

	}
}
