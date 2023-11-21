<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#subjectA:link {color: black; text-decoration: none;}
#subjectA:visited {color: black; text-decoration: none;}
#subjectA:hover {color: green; text-decoration: underline;}
#subjectA:active {color: #d81e5b; text-decoration: none;}

#currentPaging {
	color: red;
	text-decoration: underline;
}
#paging {
	color: black;
	text-decoration: none;
}
</style>
</head>
<body>
<table border="1" cellspacing="0" cellpadding="5" frame="hsides" rules="rows">
	<tr>
		<th width="100">글번호</th>
		<th width="300">제목</th>
		<th width="100">작성자</th>
		<th width="100">작성일</th>
		<th width="100">조회수</th>
	</tr>
	
	<c:if test="${requestScope.list != null }">
		<c:forEach var="boardDTO" items="${requestScope.list }">
			<tr>
				<td align="center">${boardDTO.seq }</td>
				<td>
					<a id="subjectA" href="#" onclick="isLogin(${boardDTO.seq })">
						<c:forEach var="i" begin="1" end="${boardDTO.lev }" step="1">
							&emsp;
						</c:forEach>
						<c:if test="${boardDTO.pseq != 0 }">
							<img src="../image/reply.gif">
						</c:if>
						${boardDTO.subject }
					</a>
				</td>
				<td align="center">${boardDTO.id }</td>
				<td align="center">
					<fmt:formatDate value="${boardDTO.logtime }" pattern="yyyy.MM.dd"/>
				</td>
				<td align="center">${boardDTO.hit }</td>
			</tr>
		</c:forEach>
	</c:if>
</table>
<div style="width: 800px; text-align: center;">
	<input type="button" value="글쓰기" style="float: left; margin: 5px;" 
		   onclick="location.href='/miniProject/board/boardWriteForm.do'">

	<c:forEach var="i" begin="1" end="${requestScope.totalP }" step="1">
		<c:if test="${i == pg }">
			[ <a id="currentPaging" href="/miniProject/board/boardList.do?pg=${i }">${i }</a> ]
		</c:if>
		<c:if test="${i != pg }">
			[ <a id="paging" href="/miniProject/board/boardList.do?pg=${i }">${i }</a> ]
		</c:if>
	</c:forEach>
</div>

<script type="text/javascript">
function isLogin(seq){
	if(${empty memId}){
		alert("먼저 로그인하세요");
	}else{
		location.href = "/miniProject/board/boardView.do?seq="+seq+"&pg=${requestScope.pg}";
	}
}
</script>
</body>
</html>




















