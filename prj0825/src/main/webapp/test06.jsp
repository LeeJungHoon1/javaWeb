<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="prj0825.MyUtils" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% String s_ = request.getParameter("su"); %>

<p><%=s_ %>의 약수</p>

<%
int s = Integer.parseInt(s_);
MyUtils U = new MyUtils();
out.println(U.getDivisor(s));
%>



</body>
</html>