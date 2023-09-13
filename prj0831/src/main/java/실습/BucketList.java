package 실습;

public class BucketList {
	int num;
	String bucket;
	
	
	public BucketList(int num, String bucket) {
		super();
		this.num = num;
		this.bucket = bucket;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getBucket() {
		return bucket;
	}
	public void setBucket(String bucket) {
		this.bucket = bucket;
	}
	@Override
	public String toString() {
		return "BucketList " + num + ". " + bucket;
	}
	
	
	
}
