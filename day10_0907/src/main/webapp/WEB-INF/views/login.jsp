<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
 	String m = request.getParameter("m");
	if(m != null){
		%>alert(<%=URLDecoder.decode(m,"utf-8")%>);
<%
	}
%>

<form action="login" method = "get" name= "frm">
 	id<input type="text" name ="id">
 	pw<input type="text" name ="pw">
 	<button>로그인</button>
</form>
</body>
</html>