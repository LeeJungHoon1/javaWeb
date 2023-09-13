<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% 
String star_ = request.getParameter("star");
%>
<h2>별 <%=star_ %>개 만들기</h2>
<% int s = Integer.parseInt(star_); 
for(int i = 1; i<=s; i++ ){
	out.println("*");
}

%>



</body>
</html>