<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
.mainnav {
	background-color: #A288E3;
	list-style: none;
	color: #ffff00;
}
.mainnav li {
	display: inline-block;
	justify-content: space-between;
}

.mainnav li a {
	display: block;
	color: #ffff00;
	padding: 0 13px; /* 위/아래, 좌우 */
	font: bold 16px/40px 'Nanum Gothic', sans-serif;
	  /*폰트의 굵기 | 글자의 크기/line-height 줄간격 |  글꼴 - 앞의 글꼴 없으면 다음 글꼴*/
	text-transform: uppercase;
	text-decoration: none;
}

.mainnav li a:hover {
	color: #ffffff;
	background-color: #483D8B;
}

</style>

<ul class="mainnav">
	<c:if test="${memId != null }">
		<li><a href="/miniProject/board/boardWriteForm.do">글쓰기</a></li>
	</c:if>
	<li><a href="/miniProject/board/boardList.do?pg=1">목록</a></li>
</ul>











