<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function check(){	
	//return false;	
	let frm =document.frm;
	let userid= frm.userid;
	let userpw = frm.userpw;
	let username = frm.username;
	
	if( userid.value  ==""){
		alert("아이디입력");
		userid.focus();
		return false;
	}
	if( userpw.value ==""	){
		alert("비번입력");
		userpw.focus();
		return false;	
	}	
	
	
	return true;	
}
</script>
</head>
<body>
<!--submit을 중지하고 싶을 때 사용할 수 있음 -->
<form  name="frm"  action="login_action.jsp" method="post"  onsubmit="return check()" >	
	<input type="text" name="userid"> 
	<input type="text" name="userpw">
	<button>로그인</button>		
</form>
</body>
</html>