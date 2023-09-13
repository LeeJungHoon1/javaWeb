package Ex;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DAO {

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
			con = DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return con;
	}

	public ArrayList<String> GoodsAll() {
		con = condb();
		ArrayList<String> list = new ArrayList<>();

		String sql = "select name, price from goods";

		try {
			st = con.prepareStatement(sql);
			rs = st.executeQuery();
			while (rs.next()) {
				list.add(rs.getString(1));
				list.add(rs.getString(2));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		close(rs, st, con);

		return list;
	}
	
	public Goods goodsCheck(String id) {
		con = condb();
		
		String sql = "select * from goodstbl where id=?";
		Goods g = null;
		try {
			st = con.prepareStatement(sql);
			st.setString(1,id);
			rs= st.executeQuery();
			if(rs.next()) {
				String id_ = rs.getString(1);
				String name_ = rs.getString(2);
				int price_ = rs.getInt(3);
				g = new Goods(id_,name_,price_);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		close(rs,st,con);
		return g;
	}
	
	public void ChangePrice(Goods g) {
		con = condb();
		String sql = "update goodstbl set price =? where id = ?";
		
		try {
			st = con.prepareStatement(sql);
			st.setInt(1,g.getPrice());
			st.setString(2,g.getId());
		    st.executeUpdate();
		    

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		close(st,con);
	}
	
	public void delete(Goods g) {
		con = condb();
		String sql = "delete from goodstbl where id = ?";
		
		try {
			st = con.prepareStatement(sql);
			st.setString(1,g.getId());
			st.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		close(st,con);
	}
	
	public void regist(Goods g) {
		con = condb();
		String sql = "insert into goodstbl values(?,?,?)";
		
		try {
			st = con.prepareStatement(sql);
			st.setString(1, g.getId());
			st.setString(2, g.getName());
			st.setInt(3, g.getPrice());
			st.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		close(st,con);
		
	}

	public void close(AutoCloseable... a) {
		for (AutoCloseable i : a) {
			try {
				i.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
