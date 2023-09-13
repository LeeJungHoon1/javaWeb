<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="java.sql.*" %>
    <%
    //1.
    request.setCharacterEncoding("UTF-8");
    //2.
    String userid = request.getParameter("userid");
    String userpw = request.getParameter("userpw");
    String username = request.getParameter("username");
    
    out.println(userid);
    out.println(userpw);
    out.println(username);
    //데이터베이스 연결, sql,update 실행
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
		String sql = "update acorntbl";
			   sql += " set pw=?";
			   sql += " where id=?"; 
		st = con.prepareStatement(sql);
		st.setString(1,userpw);
		st.setString(2,userid);
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
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>