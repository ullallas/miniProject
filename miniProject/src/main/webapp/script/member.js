function checkWrite(){
	//alert("오니??")
	console.log("오니??");
	
	document.getElementById("nameDiv").innerText = "";
	document.getElementById("idDiv_write").innerText = "";
	document.getElementById("pwdDiv_write").innerText = "";
	
	if(document.writeForm.name.value == "")
		document.getElementById("nameDiv").innerText = "이름 입력";
		
	else if(document.writeForm.id.value == "")
		document.getElementById("idDiv_write").innerText = "아이디 입력";
		
	else if(document.writeForm.pwd.value == "")
		document.getElementById("pwdDiv_write").innerText = "비밀번호 입력";
		
	else if(document.writeForm.pwd.value != document.writeForm.repwd.value)
		document.getElementById("pwdDiv_write").innerText = "비밀번호가 맞지 않습니다";
		
	else if(document.writeForm.id.value != document.writeForm.check.value)
		//document.getElementById("pwdDiv_write").innerText = "중복체크 하세요";
		alert("중복체크 하세요");
	else 
		document.writeForm.submit();
}

//중복체크
function checkId(){
	var sId = document.writeForm.id.value;
	document.getElementById("idDiv_write").innerText = "";
	if(sId == "")
		document.getElementById("idDiv_write").innerText = "먼저 아이디 입력";
	else
		window.open("/miniProject/member/checkId.do?id="+sId, "checkId", "width=450 height=150");
}





//DAUM 우편번호
function checkPost() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('zipcode').value = data.zonecode;
            document.getElementById("addr1").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("addr2").focus();
        }
    }).open();
}