package ex;

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
	PreparedStatement pst = null;
	ResultSet rs = null;
	
	public Connection dbcon() {
		
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url,user,password);
			if(con != null) System.out.println("ok");
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
		
	}
	
	
	public ArrayList<Customer> AllList(){
		con=dbcon();
		String sql = "select * from acorntbl";
		
		ArrayList<Customer> list = new ArrayList<>();
		
		try {
			pst = con.prepareStatement(sql);
			rs = pst.executeQuery();
			
			
			while(rs.next()) {
				Customer c = new Customer(rs.getString(1),rs.getString(2),rs.getString(3));
				list.add(c);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		close(rs,pst,con);
		return list;
		
		
	}
	
	
	public void close(AutoCloseable...a) {
		for(AutoCloseable i : a) {
			try {
				i.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}

