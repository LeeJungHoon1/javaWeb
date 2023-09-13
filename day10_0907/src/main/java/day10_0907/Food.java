package day10_0907;

public class Food {
	String name;
	String price;
	public Food(String name, String price) {
		super();
		this.name = name;
		this.price = price;
	}
	public Food() {}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "FoodDAO [name=" + name + ", price=" + price + "]";
	}
	
	
}
