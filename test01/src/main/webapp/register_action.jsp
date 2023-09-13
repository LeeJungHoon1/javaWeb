<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
	request.setCharacterEncoding("UTF-8");

	String userid = request.getParameter("userid");
	String username = request.getParameter("username");
	String birthday = request.getParameter("birthday");
	String gender = request.getParameter("gender");
	String specialty = request.getParameter("specialty");
	String charm = request.getParameter("charm");
	
	System.out.println("userid"+userid);
	System.out.println("username"+username);
	System.out.println("birthday"+birthday);
	System.out.println("gender"+gender);
	System.out.println("specialty"+specialty);
	System.out.println("charm"+charm);

	Connection con=null; 
	PreparedStatement st = null;
	try{ 
		//데이터베이스 연결정보
		String driver = "oracle.jdbc.driver.OracleDriver" ;
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="scott";
		String password="tiger";
		 //1. 오라클드라이버 로딩
		Class.forName(driver); 
		 //2. 데이터베이스 연결
		con= DriverManager.getConnection(url, user, password); 
		 //3. statement 얻어오기
		String sql ="insert into tbl_join_200 values(?,?,?,?,?,?)";
		st = con.prepareStatement(sql);

		st.setString(1,userid);
		st.setString(2,username);
		st.setString(3,birthday);
		st.setString(4,gender);
		st.setString(5,specialty);
		st.setString(6,charm);
		
		st.executeUpdate() ; 
		}catch(Exception e){
		e.printStackTrace();
		}
	finally{ //자원의 반납 
	if( st != null) st.close();
	if( con != null) con.close();
	}
%>