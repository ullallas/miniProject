<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	margin: 0;
	padding: 0;
	height: 100%;
	width: auto;
}

#header {
	margin: 0 auto;
	/* margin-left: 30px;
	margin-right: 30px; */
	width: 1500px;
	height: 10%;
	text-align: center;
}

#container {
	margin: 0 auto;
	/* margin-left: 30px; */
	/* margin-right: 30px; */
	width: 1500px;
	height: 500px;
}

#container:after {
	content: '';
	display: block;
	clear: both;
	float: none;
}

#nav {
	margin-left: 10px;
	width: 28%;
	height: 100%;
	float: left;
}

#section {
	margin-left: 10px;
	width: 70%;
	height: 100%;
	float: left;
}

#footer {
	margin: 0 auto;
	width: 1500px;
	height: 10%;
}
</style>
</head>
<body>
<div id="header">
	<h1>
		<img src="/miniProject/image/망상토끼.gif" width="70" height="70" 
		alt="망상토끼" onclick="location.href='/miniProject/index.jsp'" style="cursor: pointer;"> MVC를 이용한 미니 프로젝트
	</h1>
	<br>
	<jsp:include page="./main/menu.jsp" />
</div>
<div id="container">
	<div id="nav">
		<jsp:include page="./main/nav.jsp"></jsp:include>
	</div>
	<div id="section">
		<c:if test="${empty display }">
			<h1>
				방문해주셔서 감사합니다. <br>
				Have a nice day!! <br>
				<img src="/miniProject/image/망상토끼.gif" alt="망상토끼">
			</h1>
		</c:if>
	
		<c:if test="${not empty display }">
			<jsp:include page="${display }" />
		</c:if>
	</div>
</div>
<div id="footer">
	<p>비트캠프</p>
</div>
</body>
</html>












