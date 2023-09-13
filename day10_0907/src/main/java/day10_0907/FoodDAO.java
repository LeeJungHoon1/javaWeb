package day10_0907;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class FoodDAO {
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "scott";
	String password = "tiger";
	
	Connection con = null;
	PreparedStatement st = null;
	ResultSet rs = null;
	
	public Connection condb() {
		
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url,user,password);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}
	
	public ArrayList<Food> FoodAll(){
		
		con = condb();
		ArrayList<Food> list = new ArrayList<>();
		String sql = "select * from foodtbl";
		
		try {
			st = con.prepareStatement(sql);
			rs = st.executeQuery();
			
			while(rs.next()) {
				String name = rs.getString(1);
				String price = rs.getString(2);
				
				Food food = new Food(name,price);
				list.add(food);
			}
			rs.close();
			st.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
	
	
}
