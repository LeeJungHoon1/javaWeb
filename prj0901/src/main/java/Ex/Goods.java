package Ex;

public class Goods {
	String id;
	String name;
	int price;
	public Goods() {
		super();
	}
	public Goods(String id, String name, int price) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
	}
	public Goods(String id, int price) {
		super();
		this.id = id;
		this.price = price;
	}
	public Goods(String id, String name) {
		super();
		this.id = id;
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "Goods [id=" + id + ", name=" + name + ", price=" + price + "]";
	}
	
	
}
