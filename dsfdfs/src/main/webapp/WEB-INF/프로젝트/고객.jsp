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
	
	border: 1px solid black;
	border-collapse: collapse;
	height: 500px;
	margin: auto ;
	
}


td{

	border: 1px solid black;
	text-align: center;
	
}


</style>
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



</body>
</html>