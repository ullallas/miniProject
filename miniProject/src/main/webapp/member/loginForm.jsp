<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style type="text/css">
#loginForm  div {
	color: red;
	font-size: 8pt;
	font-weight: bold;
}
</style>

<form name="loginForm" id="loginForm" class="loginForm" method="post" action="/miniProject/member/login.do">
	<table border="1" cellpadding="5" cellspacing="0">
		<tr>
			<td align="center">아이디</td>
			<td>
				<input type="text" name="id" id="id" placeholder="아이디 입력">
				<div id="idDiv"></div>
	   		</td>
		</tr>
		
		<tr>
			<td align="center">비밀번호</td>
			<td>
				<input type="password" name="pwd" id="pwd">
				<div id="pwdDiv"></div>
	   		</td>
		</tr>
		
		<tr>
			<td colspan ="2" align = "center">
				<input type="button" value="로그인" onclick="checkLogin()">
				<input type="button"  value="회원가입" onclick="location.href='/miniProject/member/writeForm.do'">
			</td>
		</tr>
	</table>
</form>
<script type="text/javascript">
function checkLogin(){
	document.getElementById("idDiv").innerText = "";
	document.getElementById("pwdDiv").innerText = "";
	
	if(document.loginForm.id.value == "")
		document.getElementById("idDiv").innerText = "아이디 입력";
	else if(document.loginForm.pwd.value == "")
		document.getElementById("pwdDiv").innerText = "비밀번호 입력";
	else 
		document.loginForm.submit();
}
</script>












