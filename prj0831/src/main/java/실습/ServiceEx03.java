package 실습;

import java.util.ArrayList;

public class ServiceEx03 {

	public ArrayList<BucketList> getbucket(){
		
		ArrayList<BucketList> b = new ArrayList<>();
		
		b.add(new BucketList(1,"해외여행 다른 나라로 3번가기"));
		b.add(new BucketList(2,"40세 전까지 국내여행 혼자 5번가기"));
		b.add(new BucketList(3,"번지점프해보기"));
		b.add(new BucketList(4,"태권도3단 취득"));
		
		
		return b;
	}
}
