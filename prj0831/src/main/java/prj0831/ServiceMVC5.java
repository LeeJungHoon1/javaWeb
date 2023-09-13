package prj0831;

import java.util.ArrayList;

public class ServiceMVC5 {

	public ArrayList<Member> getList(){
		ArrayList<Member> list = new ArrayList<>();
		list.add(new Member("dy","4482","곽단야"));
		list.add(new Member("mg","1234","김민규"));
		list.add(new Member("mj","0000","김민지"));
		list.add(new Member("bj","6666","김병진"));
		
		return list;
	
	}
}
