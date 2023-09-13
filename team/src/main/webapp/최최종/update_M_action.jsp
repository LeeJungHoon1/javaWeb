<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@  page import="java.sql.*" %>
<%
//1.
request.setCharacterEncoding("UTF-8");
//2. 넘어온 데이터 확인
String order_code= request.getParameter("order_code");
String id= request.getParameter("id");
String goods_code= request.getParameter("goods_code");
String goods_cnt= request.getParameter("goods_cnt");

out.println(order_code);
out.println(id);
out.println(goods_code);
out.println(goods_cnt);

//데이터베이스 연결, sql update 실행
	Connection con= null;
	PreparedStatement st = null;
	
	try{ 
		// 데이터베이스 연결정보
		String driver = "oracle.jdbc.driver.OracleDriver" ;
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="scott";
		String password="tiger";
		
		 
		Class.forName(driver); 
		con= DriverManager.getConnection(url, user, password); 
		 
		String sql =" update goods_order";
				sql+=" set goods_code= ?";
				sql+="id=?";
				sql+="goods_cnt=?";
				sql+="goods_code=?";
				sql+=" where order_code= ?"; 
				
		st = con.prepareStatement(sql);
		st.setString(1,goods_code);
		st.setString(2,id);
		st.setString(3,goods_cnt);
		st.setString(4,goods_code);
				
		//실행
		st.executeUpdate();
		
		
	}catch(Exception e){
		e.printStackTrace();
	}
	finally{ //자원의 반납
		if( st != null) st.close();
		if( con != null) con.close();
	}

//
//response.sendRedirect("index.jsp");
%>