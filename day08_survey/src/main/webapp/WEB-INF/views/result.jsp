<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%String animal = (String)request.getAttribute("inanimal"); 
String flower = (String)request.getAttribute("inflower"); %>

<h2>설문 결과 페이지</h2>
<h3>당신이 좋아하는 것은?</h3>
좋아하는 동물은? <%=animal%><br>
좋아하는 꽃은? <%=flower %>
</body>
</html>