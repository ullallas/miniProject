<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<meta charset="UTF-8">
<title>회원정보수정</title>
<style type="text/css">
#updateForm div {
	color: red;
	font-size: 8pt;
	font-weight: bold;
}
</style>

<h3>회원정보수정</h3>
<form name="updateForm" id="updateForm" method="post" action="/miniProject/member/update.do">
	<table border="1" cellpadding="5" cellspacing="0">
		<tr>
			<td align="center" width="100">이름</td>
   			<td>
    			<input type="text" name="name" id="name" value="${memberDTO.name }">
    			<div id="nameDiv"></div>
   			</td>
  		</tr>
  		
  		<tr>
			<td align="center">아이디</td>
			<td>
				<input type="text" name="id" id="id" value="${memberDTO.id }" readonly>
				
	   		</td>
		</tr>
		
		<tr>
			<td align="center">비밀번호</td>
			<td>
				<input type="password" name="pwd" id="pwd">
				<div id="pwdDiv_write"></div>
	   		</td>
		</tr>
		
		<tr>
			<td align="center">재확인</td>
			<td>
				<input type="password" name="repwd" id="repwd">
	   		</td>
		</tr>
		
		<tr>
			<td align="center">성별</td>
			<td>
				<input type="radio" name="gender" value="0">남
				<input type="radio" name="gender" value="1">여
			</td>
		</tr>
		
		<tr>
			<td align="center">이메일</td>
			<td>
				<input type="text" name="email1" value="${memberDTO.email1 }">
				@
				<input type="email" list="email2" name="email2">
				<datalist id="email2">
					<option value="gmail.com">
					<option value="daum.net">
  	  				<option value="naver.com">
				</datalist>
			</td>
		</tr>
		
		<tr>
			<td align="center">핸드폰</td>
			<td>
				<select name="tel1" style="width: 70px;">
					<option value="010">010</option>
					<option value="011">011</option>
					<option value="019">019</option>
				</select>
				-
				<input type="text" name="tel2" size="5" value="${memberDTO.tel2 }">
				-
				<input type="text" name="tel3" size="5" value="${memberDTO.tel3 }">
			</td>
		</tr>
		
		<tr>
			<td align="center">주소</td>
			<td>
				<input type="text" name="zipcode" id="zipcode" value="${memberDTO.zipcode }" readonly>
				<input type="button" value="우편번호검색" onclick="checkPost()"><br>
				<input type="text" name="addr1" id="addr1" value="${memberDTO.addr1 }" size="50" readonly><br>
				<input type="text" name="addr2" id="addr2" value="${memberDTO.addr2 }" size="50">
			</td>
		</tr>
		
		<tr>
			<td colspan ="2" align = "center">
				<input type="button" value="회원정보수정" onclick="checkUpdate()">
				<input type="reset"  value="다시작성" onclick="location.reload()">
			</td>
		</tr>
	</table>
</form>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="../script/member.js"></script>
<script>
window.onload=function(){
	document.updateForm.gender['${memberDTO.gender}'].checked = true;
	document.updateForm.email2.value = '${memberDTO.email2}';
	document.updateForm.tel1.value = '${memberDTO.tel1}';
}
</script>
<script>
function checkUpdate(){
	document.getElementById("nameDiv").innerText = "";
	document.getElementById("pwdDiv_write").innerText = "";
	
	if(document.updateForm.name.value == "")
		document.getElementById("nameDiv").innerText = "이름 입력";
		
	else if(document.updateForm.pwd.value == "")
		document.getElementById("pwdDiv_write").innerText = "비밀번호 입력";
		
	else if(document.updateForm.pwd.value != document.updateForm.repwd.value)
		document.getElementById("pwdDiv_write").innerText = "비밀번호가 맞지 않습니다";
	
	else 
		document.updateForm.submit();
}
</script>








