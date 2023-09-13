<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%  Integer totalCnt  =  (Integer) request.getAttribute("totalCnt"); 
    Integer pageSize  =  (Integer) request.getAttribute("pageSize");
    Integer p   =        (Integer) request.getAttribute("page");
    
    
    out.println( totalCnt);
    out.println( pageSize);
    out.println( p);
%>



</body>
</html>