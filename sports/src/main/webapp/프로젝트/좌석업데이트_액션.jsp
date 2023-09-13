<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@  page import="java.sql.*" %> 


<%
	//1.
	request.setCharacterEncoding("UTF-8");
	String userid = (String) session.getAttribute("userid");
	int gamenum = Integer.parseInt((String) session.getAttribute("gamenum"));
	
	//2.
	String state = request.getParameter("state");
	String seatnum = request.getParameter("seatnum");
	//데이터베이스 연결, sql, update 실행
	
	out.println( state);
	
	
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
		String sql =" update seat "; //5. 최종적으로 실행
			   sql += " set state = ? ";
			   sql += " where seatnum = ? ";
			   
	   String sql2 =" insert into reservation(reservnum,gamenum,seatnum)"; //5. 최종적으로 실행
	   sql2 += " values (?,?,?)";

       int resnumber = 1;
       
       resnumber++;
	
		System.out.println( sql);
		st = con.prepareStatement(sql);
		st.setString(1, state);
		st.setString(2, seatnum);		
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