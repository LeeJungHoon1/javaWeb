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

<%
String[] a = {"화이팅","아자아자","넌 할수있어"};
int ren = (int) (Math.random()*3);
%>

<h2>화이팅 메시지</h2>

<p><%=a[ren] %></p>



</body>
</html>