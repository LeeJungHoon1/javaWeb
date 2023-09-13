<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
String driver = "oracle.jdbc.driver.OracleDriver";
String url = "jdbc:oracle:thin:@localhost:1521:xe";
String user = "scott";
String password = "tiger";

Connection con = null;
Statement st = null;
ResultSet rs = null;

Class.forName(driver);
con = DriverManager.getConnection(url, user, password); //3. statement 얻어오기
st = con.createStatement();

String sql = "select goods_code 상품코드,";
sql += " brand_name 브랜드,";
sql += " goods_name 상품명,";
sql += " category 카테고리,";
sql += " g_size 사이즈,";
sql += " to_char(price, '999,999') || '원' 가격";
sql += " from product_tbl";
rs = st.executeQuery(sql);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="./css/home.css" rel="stylesheet"/>
<link href="./css/default.css" rel="stylesheet"/>
</head>
<body>
<header>
	<a class="home" href="Mindex.jsp">MUSINSA</a>
</header>
<nav>
	<ul>
		<li><a class="regi" href="user_register.html">회원가입</a></li>
		<li><a class="check" href="MList.jsp">주문조회</a></li>
	</ul>
</nav>
<section>
	<table>
		<tr>
			<td>브랜드</td>
			<td>상품명</td>
			<td>카테고리</td>
			<td>사이즈</td>
			<td>가격</td>
			<td></td>
		</tr>





		<%
		while (rs.next()) {
		%>
		<form name="frm" action="goods.jsp?goods_code=<%=rs.getString(1)%>" method="post">
			<tr>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getString(3)%></td>
				<td><%=rs.getString(4)%></td>
				<td><%=rs.getString(5)%></td>
				<td><%=rs.getString(6)%></td>
				<td><button>상품보기</button></td>
			</tr>
		</form>
		<%
		}
		//자원의 반납
		if (rs != null)
		rs.close();
		if (st != null)
		st.close();
		if (con != null)
		con.close();
		%>



	</table>
	
</section>
<footer>
	MUSINSA
</footer>
</body>
</html>