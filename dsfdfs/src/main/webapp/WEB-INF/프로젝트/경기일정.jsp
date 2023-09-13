<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배구 경기 일정</title>
<style>


*{
	margin: 0;
	padding: 0;
}


header{
	height: 80px;
	background-color: skyblue;
	text-align: center;
}


h2{

	padding-top: 20px;

}


nav{
	padding: 10px;
	background-color: lightpink;
	color:white;

}


ul li{
	padding-right: 10px;
}


nav ul > li{
		display: inline-block;
}


a{
	color: black;
	text-decoration: none;
}


table{
	
	margin-top: 20px;
	border: 1px solid black;
	border-collapse: collapse;
	height: 500px;
	margin: auto ;
	
}


td{

	border: 1px solid black;
	text-align: center;
	
}


button{

	background-color:white;

}



</style>



<script>


function num( gamenum) {
	window.location.href="좌석.jsp?gamenum="+gamenum;
}


</script>


</head>
<body>

<header>
<h2>배구 경기 일정</h2>
</header>


<nav>

	<ul>
	
	<li><a href="프로팀.jsp">프로팀</a></li>
	<li><a href="고객.jsp">고객</a></li>
	<li><a href="경기일정.jsp">경기일정 및 결과</a></li>
	<li><a href="좌석.jsp">좌석예매</a></li>
	<li><a href="관리자페이지.jsp">관리자 페이지</a></li>
	<li><a href="경기홈.jsp">홈으로</a></li>
	
	</ul>

</nav>


<table border="1">
	<caption>경기일정</caption>
	
	<tr>
	
	
	<td>경기번호</td>
	<td>경기날짜</td>
	<td>경기시간</td>
	<td>홈팀번호</td>
	<td>어웨이팀번호</td>
	<td>스코어</td>
	<td>홈팀구장</td>
	
	
	</tr>
	

<%
Connection con=null;
Statement st = null;
ResultSet rs = null;
try{ 
	String driver = "oracle.jdbc.driver.OracleDriver" ;
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String user="scott";
	String password="tiger";
	
	 //1. 오라클드라이버 로딩
	Class.forName(driver); //2. 데이터베이스 연결
	con= DriverManager.getConnection(url, user, password); //3. statement 얻어오기
	st = con.createStatement();
	 //4. 필요한 sql 작성
			String sql = "select gamenum, to_char(gamedate, 'YYYY-MM-DD'), gametime, (SELECT NAME FROM PROTEAM WHERE teamnum = HOMETEAM), (SELECT NAME FROM PROTEAM WHERE teamnum = AWAYTEAM), score, home_arena from schedule_result";
    System.out.println( sql);
	rs = st.executeQuery( sql) ;
	 //6. 가져온 쿼리 결과를 화면에 출력하기
	while( rs.next() ) { 
%>


<tr>
		<td> <%= rs.getString(1) %></td>
		<td><%= rs.getString(2) %></td>
		<td><%= rs.getString(3) %></td>
		<td><%= rs.getString(4) %></td>
		<td><%= rs.getString(5) %></td>
		<td>
		 <% if(rs.getString(6) == null){%>
		 <button onclick="num( <%= rs.getString(1) %> )">예매</button>
		 <%}else{ %>
			 <%=rs.getString(6)%>
			<% } %>
		 
		
		</td>
		<td><%= rs.getString(7) %></td>				

</tr>



<%
	}
	}catch(Exception e){
		e.printStackTrace();
	}
	finally{ //자원의 반납
		if( rs!= null) rs.close();
		if( st != null) st.close();
		if( con != null) con.close();
	}
%>





</table>



</body>
</html>