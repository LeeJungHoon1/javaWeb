<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<h2> 상품 상세페이지</h2>

<% String item = (String) request.getAttribute("item"); %>
<%=item %>

<a href="/cartPrj/addCart?code=<%=item%>">장바구니 추가</a>
</body>
</html>