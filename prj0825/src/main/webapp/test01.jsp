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
String su1_ = request.getParameter("su1");
String su2_ = request.getParameter("su2");

int su1 = Integer.parseInt(su1_); 
int su2 = Integer.parseInt(su2_); 

int add = su1+su2;
int sub = su1-su2;
int mul = su1*su2;
int div = su1/su2;
%>
<p> 두수의 덧셈은 : <%=add %></p>
<p> 두수의 뺄셈은 : <%=sub %></p>
<p> 두수의 곱셈은 : <%=mul %></p>
<p> 두수의 나눗셈은 : <%=div %></p>


</body>
</html>