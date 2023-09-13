<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="실습.BucketList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2>버킷리스트</h2>

<% 
ArrayList<BucketList> list = (ArrayList<BucketList>) request.getAttribute("bucket");

for(int i = 0; i<list.size();i++){
	out.println(list.get(i)+"<br>");
}
%>
</body>
</html>