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
String[] a = {"./img/img1.jpg","./img/img2.jpg","./img/cut3.jpg"};
int ren = (int) (Math.random()*3);
%>
<h2>이미지</h2>

<img src =<%=a[ren] %> width = 100px height =100px>



</body>
</html>