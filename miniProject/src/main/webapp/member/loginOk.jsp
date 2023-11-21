<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
//쿠키
/*
Cookie[] ar = request.getCookies(); //특정 쿠키를 얻을수 없으므로 모든 쿠키를 가져온다.

if(ar != null){
	for(int i=0; i<ar.length; i++){
		String cookieName = ar[i].getName();
		String cookieValue = ar[i].getValue();
		System.out.println("쿠키명 = " + cookieName);
		System.out.println("쿠키값 = " + cookieValue);
	}//for
}//if
*/
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>${sessionScope.memName }님 로그인</h3>
<input type="button" value="로그아웃" onclick="location.href='/miniProject/member/logout.do'">
<input type="button" value="회원정보수정" onclick="location.href='/miniProject/member/updateForm.do'">       
</body>
</html>














