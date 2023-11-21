<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form name="boardViewForm">
<input type="hidden" name="seq" value="${boardDTO.seq }">
<input type="hidden" name="pg" value="${pg}">

<table border="1" width="450" cellspacing="0" cellpadding="5" frame="hsides" rules="rows">
	<tr>
		<td colspan="3">
			<h2>${boardDTO.subject }</h2>
		</td>
	</tr>
	<tr>
		<td width="150" align="center">글번호 : ${boardDTO.seq }</td>
		<td width="150" align="center">작성자 : ${boardDTO.id }</td>
		<td width="150" align="center">조회수 : ${boardDTO.hit }</td>
	</tr>
	<tr>
		<td colspan="3" height="300" valign="top">
			<div style="border: 1px red solid; width: 100%; height: 100%; overflow: auto;">
				<pre style="white-space: pre-line; word-break; break-all;">
					${boardDTO.content }
				</pre>
			</div>
		</td>
	</tr>
</table>

<input type="button" value="목록" style="margin: 5px;" onclick="location.href='/miniProject/board/boardList.do?pg=${pg}'">

<c:if test="${memId == boardDTO.id }">	   
	<input type="button" value="글수정" onclick="mode(1)">
	<input type="button" value="글삭제 - 주말 숙제 - seq" onclick="mode(2)">
</c:if>

<input type="button" value="답글" onclick="mode(3)">
</form>

<script type="text/javascript">
function mode(num){
	if(num==1){ //글수정
		document.boardViewForm.method = "post";
		document.boardViewForm.action = "/miniProject/board/boardUpdateForm.do";
		document.boardViewForm.submit();
		
	}else if(num==2){ //글삭제
		if(confirm("정말로 삭제하시겠습니까?")){
			document.boardViewForm.method = "post";
			document.boardViewForm.action = "/miniProject/board/boardDelete.do";
			document.boardViewForm.submit();
		}
		
	}else if(num==3){ //답글
		document.boardViewForm.method = "post";
		document.boardViewForm.action = "/miniProject/board/boardReplyForm.do";
		document.boardViewForm.submit();
	}
}
</script>
</body>
</html>














