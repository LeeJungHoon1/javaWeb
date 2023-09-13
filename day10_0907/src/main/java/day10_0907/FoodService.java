package day10_0907;

import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONObject;

public class FoodService {

	FoodDAO dao = new FoodDAO();
	
	public JSONArray getFoodList(){
		
		ArrayList<Food> list  = dao.FoodAll();
		JSONArray jlist = new JSONArray();
		
		for(int i = 0; i<list.size();i++) {
			Food f = list.get(i);
			JSONObject o = new JSONObject();
			o.put("name", f.getName());
			o.put("price", f.getPrice());
			
			jlist.put(o);
			
		}
		return jlist;
	}
}
