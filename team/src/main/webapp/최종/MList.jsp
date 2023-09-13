<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
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
			<th>주문번호</th>
			<th>고객아이디</th>
			<th>상품코드</th>
			<th>주문수량</th>
			<th>관리</th>
		</tr>
		<%
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
			String sql = "select * from goods_order"; //5. 최종적으로 실행
			rs = st.executeQuery(sql);
			//6. 가져온 쿼리 결과를 화면에 출력하기
			while (rs.next()) {
		%>

		<tr>
			<td><%=rs.getString(1)%></td>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>
			<td><%=rs.getString(4)%></td>
			
			<td><a href="updateMForm.jsp?order_code=<%=rs.getString(1)%>">수정</a>/
				<a href="deleteM_action.jsp?order_code=<%=rs.getString(1)%>">삭제</a></td>
		</tr>

		<%
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
	</table>
</section>
<footer>
	MUSINSA
</footer>
	
</body>
</html>