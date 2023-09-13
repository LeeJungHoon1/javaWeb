<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@  page import="java.sql.*" %>


<%

//jsp  내장객체 
// request, response , out 

//0. 넘어온 값들에 대해서 encoding
request.setCharacterEncoding("UTF-8");

//1. 넘어온 값들 꺼내기 

int gamenum  =Integer.parseInt(request.getParameter("gamenum"));
String gamedate = request.getParameter("gamedate");
String gametime  = request.getParameter("gametime");
int hometeam  = Integer.parseInt(request.getParameter("hometeam"));
int awayteam = Integer.parseInt(request.getParameter("awayteam"));

System.out.println(gamenum );
System.out.println( gamedate);
System.out.println( gametime);
System.out.println( hometeam);
System.out.println( awayteam);
//2. 데이터베이스에 연결하고  테이블에  insert 쿼리 실행하기 

 
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
		String sql =" insert into schedule_result(gamenum, gamedate, gametime, hometeam, awayteam)"+
				" values (?,?,?,?,?) "; 		
		st = con.prepareStatement(sql);
		
		st.setInt(1, gamenum);
		st.setString(2,gamedate);
		st.setString(3, gametime);	
		st.setInt(4, hometeam);
		st.setInt(5, awayteam);
			 
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


 