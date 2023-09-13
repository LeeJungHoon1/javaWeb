<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%

	request.setCharacterEncoding("UTF-8");	

	String gamenum  = request.getParameter("gamenum");
	//out.println(gamenum);
	
	
 	String gamedate="";
 	String gametime="";
 	String hometeam="";
 	String awayteam="";
 	String score="";
 	String home_arena="";
	
	
	//
	 
		String driver = "oracle.jdbc.driver.OracleDriver" ;
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="scott";
		String password="tiger";
		
		Connection con=null; 
		Statement st = null;
		ResultSet rs = null;
		  
		Class.forName(driver);  
		con= DriverManager.getConnection(url, user, password); //3. statement 얻어오기
		st = con.createStatement();
		 
	 
		String sql = "select gamenum, to_char(gamedate, 'YYYY-MM-DD'), gametime, (SELECT NAME FROM PROTEAM WHERE teamnum = HOMETEAM), (SELECT NAME FROM PROTEAM WHERE teamnum = AWAYTEAM), score, home_arena from schedule_result where gamenum='"+gamenum+"'";
		rs = st.executeQuery( sql) ; 
		 
		if( rs.next() ) {
		//	out.print(rs.getString(1)); // 
		//	out.print(rs.getString(2));
		gamedate = rs.getString(2);
		gametime = rs.getString(3);
		hometeam = rs.getString(4);
		awayteam = rs.getString(5);
		score = rs.getString(6);
		home_arena = rs.getString(7);
		
		
		
		
		}
		
		rs.close();
		st.close();
		con.close(); 


%>

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
function update() {	
	
	alert("dkfdkdfkdfk");
	
	let frm = document.frm;
	alert( frm);
	frm.submit();
	
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


<form name="frm"  action="update_action.jsp" method="post">
<table>

	<td>경기번호</td><td><input type="text" name="gamenum" ></input></td>
		
	</tr>
		
	<tr>	
	<td>경기날짜</td><td><input type="text"  name="gamedate" ></input></td>
	</tr>
	
	<tr>
	<td>경기시간</td><td><input type="text" name="gametime"></input></td>
	</tr>
	
	<tr>
	<td>홈팀번호</td><td><input type="text" name="hometeam"></input></td>
	</tr>
	
	<tr>
	<td>어웨이팀번호</td><td><input type="text" name="awayteam"></input></td>
	</tr>
	
	<tr>
	<td>스코어</td><td><input type="text" name="score"></input></td>
	</tr>

	<tr>
	<td>홈팀구장</td><td><input type="text" name="home_arena"></input></td>
	</tr>
	
	
	<tr>
	<td colspan="2"><button   type="button"  onclick="update()">등록</button></td>
	<tr>
	
	
	</table>

</form>

<script>


 let frm = document.frm;
 frm.gamenum.value  ="<%=gamenum%>";
 frm.gamedate.value  ="<%=gamedate%>";
 frm.gametime.value  ="<%=gametime%>";
 frm.hometeam.value  ="<%=hometeam%>";
 frm.awayteam.value  ="<%=awayteam%>";
 frm.score.value  ="<%=score%>";
 frm.home_arena.value  ="<%=home_arena%>";

</script>

</body>
</html>