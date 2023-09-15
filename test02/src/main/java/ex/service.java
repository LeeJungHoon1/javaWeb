package ex;

import java.util.ArrayList;

public class service {

	DAO dao = new DAO();
	
	public ArrayList<Customer> getList(){
		ArrayList<Customer> c = dao.AllList();
		
		return c;
	}
}
