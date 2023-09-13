<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
	request.setCharacterEncoding("UTF-8");

	String goods_code = request.getParameter("goods_code");

	String driver = "oracle.jdbc.driver.OracleDriver" ;
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String user="scott";
	String password="tiger";
	
	Connection con=null; 
	PreparedStatement st = null;
	ResultSet rs = null;
	  
	Class.forName(driver);  
	con= DriverManager.getConnection(url, user, password);  
	 
	
	String sql ="select goods_code 상품코드,";
    	   sql +=" brand_name 브랜드,";
    	   sql +=" goods_name 상품명,";
    	   sql +=" category 카테고리,";
    	   sql +=" g_size 사이즈,";
    	   sql +=" to_char(price, '999,999') || '원' 가격";
    	   sql +=" from product_tbl where goods_code= ?";  
	st = con.prepareStatement(sql);
	
	st.setString(1,goods_code);
	rs = st.executeQuery( ) ; 
	 

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="./css/default.css" rel="stylesheet"/>
<style>
* {
	padding: 0px;
	margin: 0px;
}

header {
	padding: 20px;
	background-color: black;
	text-align: center;
	color: white;
}

nav {
	padding: 10px;
	background-color: cadetblue;
}

section {
	background-color: aliceblue;
	height: 500px;
	padding: 30px;
}

section ol {
	margin-top: 50px;
}

footer {
	padding: 20px;
	background-color: black;
	color: white;
	text-align: center;
}

.ul1 {
	list-style: none;
}

.ul1 li {
	display: inline-block;
	padding-right: 20px;
	color: white;
	font-weight: bold;
}

.ul2 {
	width: 300px;
	margin : 0 auto;
	margin-top: 100px;
}


div{
	text-align: center;
	padding-top: 30px;
}

</style>
</head>
<body>
<header>
	MUSINSA
</header>
<nav>
	<ul class="ul1">
		<li>회원가입</li>
		<li>주문조회</li>
	</ul>
</nav>
<section>
<% if( rs.next() ) { %>

	<ul class="ul2">
		<li>브랜드 : <%=rs.getString(2) %></li>
		<li>상품명 : <%=rs.getString(3) %></li>
		<li>카테고리 : <%=rs.getString(4) %></li>
		<li>사이즈 : S / M / L / XL</li>
		<li>가격 : <%=rs.getString(6) %></li>
	</ul>
	<div>
	<form name="frm" action="M_register.jsp?goods_code=<%=rs.getString(1) %>" method="post">
	<button>주문하기</button>
	</form>
</div>
<%	}		
	if( rs != null) rs.close();
	if( st != null) st.close();
	if( con != null) con.close();
%>
	
</section>
<footer>
	MUSINSA
</footer>



</body>
</html>