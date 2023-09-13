<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	
	String u_id = request.getParameter("u_id");
	String u_pw = request.getParameter("u_pw");
	String name = request.getParameter("name");
	String adress = request.getParameter("adress");
	String tel = request.getParameter("tel");
	String gender = request.getParameter("gender");
	
	System.out.println(u_id);
	System.out.println(u_pw);
	System.out.println(name);
	System.out.println(adress);
	System.out.println(tel);
	System.out.println(gender);
	
	String driver = "oracle.jdbc.driver.OracleDriver" ;
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String user="system";
	String password="1234";
	
	Connection con=null; 
	PreparedStatement st = null;
	  
	Class.forName(driver);  
	con= DriverManager.getConnection(url, user, password);  
	 
	
	String sql ="insert into u_info values(?,?,?,?,?,?)"; 
	st = con.prepareStatement(sql);
	
	st.setString(1,u_id);
	st.setString(2,u_pw);
	st.setString(3,name);
	st.setString(4,adress);
	st.setString(5,tel);
	st.setString(6,gender);
	
	st.executeUpdate() ; 

	st.close();
	con.close();
	
	
	//response.sendRedirect("user_goods_check.jsp");
%>