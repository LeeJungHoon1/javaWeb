<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@  page import="java.sql.*" %>  
 
 <%
 
 
 	request.setCharacterEncoding("UTF-8");
 
 	String gamenum  = request.getParameter("gamenum");
	String gamedate=request.getParameter("gamedate");
	String gametime=request.getParameter("gametime");
	String hometeam=request.getParameter("hometeam");
	String awayteam=request.getParameter("awayteam");
	String score=request.getParameter("score");
	String home_arena=request.getParameter("home_arena");
 
 

 out.println( gamenum);
 out.println( gamedate);
 out.println( gametime);
 out.println( hometeam);
 out.println( awayteam);
 out.println( score);
 out.println( home_arena);
 
 //update ddfd set score=? where

		 
//데이터베이스 연결, sql, update 실행
	Connection con=null;
	PreparedStatement st = null;
	
	try{ 
		String driver = "oracle.jdbc.driver.OracleDriver" ;
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="scott";
		String password="tiger";
		
		 //1. 오라클드라이버 로딩
		Class.forName(driver); //2. 데이터베이스 연결
		con= DriverManager.getConnection(url, user, password); //3. statement 얻어오기
		String sql =" update schedule_result "; //5. 최종적으로 실행
			   sql += " set score = ?   ";
			   sql += " gamedate = ? , ";
			   sql += " gametime = ? ,";
			//   sql += " hometeam = ? ,";
			//   sql += " awayteam = ? ,";
			//   sql += " home_arena = ? ";
			   sql += " where gamenum = ? ";
   
	
		System.out.println( sql);
		st = con.prepareStatement(sql);
		st.setString(1, score);
		st.setString(2, gamedate);
		st.setString(3, gametime);
		//st.setString(4, hometeam);
		//st.setString(5, awayteam);
		//st.setString(6, home_arena);
		st.setString(4, gamenum);
		
		//실행
		st.executeUpdate();

	}catch(Exception e){
		e.printStackTrace();
	}
	finally{ //자원의 반납
		if( st != null) st.close();
		if( con != null) con.close();
	}		 
		 
		 
response.sendRedirect("manager.jsp");
 %>