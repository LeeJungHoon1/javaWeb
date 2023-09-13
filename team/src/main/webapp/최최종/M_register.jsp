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
	Statement st = null;
	ResultSet rs = null;
	  
	Class.forName(driver);  
	con= DriverManager.getConnection(url, user, password); //3. statement 얻어오기
	st = con.createStatement();
	 
	
	String sql ="select * from  goods_order  ";
	rs = st.executeQuery( sql) ; 
	 
	rs.close();
	st.close();
	con.close(); 

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
	
<form name="frm" action="M_action.jsp" method="get" onsubmit="return check()">
	<table class="table1">
		<caption>주문등록</caption>
		<tr>
			<td>주문번호</td>
			<td><input type="text" name="order_code"placeholder="G000"></td>
		</tr>
		<tr>
			<td>고객아이디</td>
			<td><input type="text" name="id" placeholder="내 아이디"></td>
		</tr>
		<tr>
			<td>상품코드</td>
			<td><input type="text" name="goods_code" readonly="readonly"></td>
		</tr>
		<tr>
			<td>주문수량</td>
			<td><input type="text" name="goods_cnt" placeholder="주문할 상품수"></td>
		</tr>
		<tr>
			<td colspan='2'>
				<button>등록하기</button>
				<button type="reset">다시입력</button>
			</td>
		</tr>
	</table>
</form>
</section>
<footer>
	MUSINSA
</footer>

</body>
<script>
		let frm = document.frm;
	function check(){		
		let order_code = frm.order_code;
		let id = frm.id;
		let goods_code = frm.goods_code;
		let goods_cnt = frm.goods_cnt;
		
		if(order_code==""){
			alert("주문번호를 입력하시오.");
			order_code.focus();
			return false;
		}
		if(id==""){
			alert("유저아이디를 입력하시오.");
			id.focus();
			return false;
		}
		if(goods_code==""){
			alert("상품코드를 입력하시오.");
			goods_code.focus();
			return false;
		}
		if(goods_cnt==""){
			alert("주문수량을 입력하시오.");
			goods_cnt.focus();
			return false;
		}
		return true;
	}
	frm.goods_code.value="<%=goods_code%>";
</script>
</html>