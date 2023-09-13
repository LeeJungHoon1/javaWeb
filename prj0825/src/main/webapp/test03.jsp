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
String su = request.getParameter("su");
%>
<h2><%=su %>단</h2>
<%
int a = Integer.parseInt(su);
for(int i = 1; i<=9; i++){
%>
	<p><%=a+" * "+i+" = "+a*i%></p>
<%
}
%>


</body>
</html>