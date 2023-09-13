<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<h2>인기영화</h2>


<ol>
<%

String[] m = (String[]) request.getAttribute("movie");

for(int i= 0; i<m.length;i++){
	%>
	<li><% out.println(m[i]); }%></li>
	
</ol>




</body>
</html>