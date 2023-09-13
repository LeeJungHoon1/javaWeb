<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2>좋하하는 것</h2>

<% 
ArrayList<String> list = (ArrayList<String>) request.getAttribute("favorite");

for(String item : list){
	out.println(item+"<br>");
}

%>
</body>
</html>