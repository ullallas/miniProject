<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>답글쓰기</title>
</head>

<style>
   .alertMsg{
      background-color : yellow;
      color : red;
      font-size : 10px;
      width : 150px;
   }
   
</style>
<body>
<h3>답글쓰기</h3>
<form name="boardReplyForm" action="boardReply.do" method="post">
<input type="hidden" name="pseq" value="${requestScope.pseq }">
<input type="hidden" name="pg" value="${pg }">

	<table border="1" cellspacing="0" cellpadding="5">
         <tr>
            <td width="70" align="center">제목</td>
            <td>
            	<input type="text" name="subject" id="subject" placeholder="제목을 입력하세요 ">
            	<div class="alertMsg" id="subjectDiv"></div>    
            </td>        
         </tr>

         <tr>
            <td align="center">내용</td>
            <td>
            	<textarea name="content" id="content" rows="15" cols="50" placeholder="내용을 입력하세요 "></textarea>
            	<div class="alertMsg" id="contentDiv"></div>
            </td>
         </tr>
         
         <tr>
            <td colspan="2" align="center"> 
               	<input type="button" value="답글쓰기" onclick="checkBoardReply();">
               	<input type="reset" value="다시작성">
				<input type="button" value="목록" onclick="location.href='boardList.do?pg=1'">
            </td>
         </tr>
         
      </table>
   </form>
   
   <script>
      function checkBoardReply(){
         const subjectEle = document.getElementById('subject');
         const contentEle = document.getElementById('content');
         const subjectDiv = document.getElementById('subjectDiv');
         const contentDiv = document.getElementById('contentDiv');

         subjectDiv.innerText = "";
         contentDiv.innerText = "";
         
         if(subjectEle.value === ""){
            subjectDiv.innerText="제목을 입력해야합니다.";
         }else if(contentEle.value === ""){
			contentDiv.innerText="내용을 입력해야합니다.";
         }else{
			document.boardReplyForm.submit();             
         }
      }
   </script>

</body>
</html>