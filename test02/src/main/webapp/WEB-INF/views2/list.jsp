<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%-- <% ArrayList<Customer> list = ( ArrayList<Customer>) requeat.getAttribute("list"); %> --%>

<c:forEach var="i" items="${list}">
${i}
</c:forEach>

</body>
</html>