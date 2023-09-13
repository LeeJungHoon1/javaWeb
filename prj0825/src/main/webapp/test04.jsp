<%@page import="prj0825.Book"%>
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
Book b = new Book("어린왕자","생택쥐페리",10000);
out.print(b);
%>


</body>
</html>