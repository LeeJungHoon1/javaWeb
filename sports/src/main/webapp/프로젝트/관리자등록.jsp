<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function check(){	
	//return false;	
	let frm =document.frm;
	let gamenum= frm.gamenum;
	let gamedate= frm.gamedate;
	let gametime= frm.gametime;
	let hometeam = frm.hometeam;
	let awayteam = frm.awayteam;
	alert("Dfdfs");
		
	if( gamenum.value  ==""){
		alert("gamenum입력");
		gamenum.focus();
		return false;
	}
	if( gamedate.value ==""	){
		alert("gamedate입력");
		gamedate.focus();
		return false;	
	}	
	
	if( gametime.value ==""	){
		alert("gametime입력");
		gametime.focus();
		return false;	
	}	
	if( hometeam.value ==""	){
		alert("hometeam입력");
		hometeam.focus();
		return false;	
	}	
	
	if( awayteam.value ==""	){
		alert("awayteam입력");
		awayteam.focus();
		return false;	
	}	
		
	return true;	
}

</script>
</head>
<body>
<form name="frm"  action="관리자등록_action.jsp" method="post" onsubmit="return check()" >
<table>

	<td>경기번호</td><td><input type="text" name="gamenum" ></input></td>
		
	</tr>
		
	<tr>	
	<td>경기날짜(예).2023-08-22)</td><td><input type="text"  name="gamedate" ></input></td>
	</tr>
	
	<tr>
	<td>경기시간(예).14:00)</td><td><input type="text" name="gametime"></input></td>
	</tr>
	
	<tr>
	<td>홈팀번호</td><td><input type="text" name="hometeam"></input></td>
	</tr>
	
	<tr>
	<td>어웨이팀번호</td><td><input type="text" name = "awayteam"></input></td>
	</tr>
	
	
	<tr>
	<td colspan="2"><button>등록</button></td>
	<tr>
	
	
	</table>

</form>

</body>
</html>