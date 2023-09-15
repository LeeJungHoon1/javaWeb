package userReg;

public class RegService {
	RegDAO dao = new RegDAO();
	
	public void regUser(User u ) {
		dao.insertUser(u);
		
	}
	public void deleteUser(String id ) {
		dao.deleteUser(id);;
	}
}
