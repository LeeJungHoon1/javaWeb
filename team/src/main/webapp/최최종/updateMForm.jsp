<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@  page import="java.sql.*"%>

<%
String order_code = request.getParameter("order_code");
out.println(order_code);

String id = "";
String goods_code = "";
String goods_cnt = "";

Connection con = null;
Statement st = null;
ResultSet rs = null;
try {
	// 데이터베이스 연결정보
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "scott";
	String password = "tiger";

	//1. 오라클드라이버 로딩
	Class.forName(driver);
	//2. 데이터베이스 연결
	con = DriverManager.getConnection(url, user, password);
	//3. statement 얻어오기
	st = con.createStatement();
	//4. 필요한 sql 작성
	String sql = "select * from goods_order where order_code='" + order_code + "'"; //5. 최종적으로 실행
	rs = st.executeQuery(sql);
	//6. 가져온 쿼리 결과를 화면에 출력하기
	if (rs.next()) {
		//out.print(rs.getString(1)); // out은 브라우저에 출력을 의미함
		//out.print(rs.getString(2));
		//out.print(rs.getString(3)+"<br>");
		id = rs.getString(2);
		goods_code = rs.getString(3);
		goods_cnt = rs.getString(4);

	}
} catch (Exception e) {
	e.printStackTrace();
} finally { //자원의 반납
	if (rs != null)
		rs.close();
	if (st != null)
		st.close();
	if (con != null)
		con.close();
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="./css/home.css" rel="stylesheet"/>
<link href="./css/default.css" rel="stylesheet"/>
<style>
.table1{
	margin : 0 auto;
	margin-top: 100px;
}
</style>
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
	<form name="frm" action="update_M_action.jsp" method="post">
		
		<table class="table1">
			<tr>
				<td>주문코드</td>
				<td><input type="text" readonly="readonly" name="order_code"></td>
			</tr>
			<tr>
				<td>고객아이디</td>
				<td><input type="text" readonly="readonly" name="id"></td>
			</tr>
			<tr>
				<td>상품코드</td>
				<td><input type="text" readonly="readonly" name="goods_code"></td>
			</tr>
			<tr>
				<td>상품수량</td>
				<td><input type="text" name="goods_cnt"></td>
			</tr>
			<tr>
				<td colspan='2'><input type="submit" value="변경"></td>
			</tr>
		</table>
		
	</form>
	<script>
		let frm= document.frm;
		frm.order_code.value="<%=order_code%>";
		frm.id.value="<%=id%>";
		frm.goods_code.value="<%=goods_code%>";
		frm.goods_cnt.value="<%=goods_cnt%>";
	</script>
	
</section>
<footer>
	MUSINSA
</footer>
</body>
</html>