<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="/jsp/menu.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Info</title>
<style>
body{background-color: clouds;}
table {width:80%;}
#user td {width:50;}
tr {height:4rem;}
table {border:10px solid white;}
tr{background:white; }
button{background:white; border:0; height:2rem;}
</style>
</head>
<body>


<div id="userform" align="center" >
	<h1>회원 상세 정보</h1>
		<table id="user">
			
			<tr>
				<th width="100">어카운트</th>
				<td align="center">${vo.account }</td>
				<th width="100">이 름</th>
				<td align="center">${vo.nickName }</td>
			</tr>
			<tr>
				<th width="100">권 한</th>
				<td align="center">${vo.userType }</td> 
				<th width="100">지역</th>
				<td align="center">${vo.area }</td>
			</tr>
			<tr>	
				<th width="100">성 별</th>
				<td align="center">${vo.gender }</td>
				<th width="100">혈액형</th>
				<td align="center">${vo.bloodType }</td>
			</tr>
			<tr>	
				<th width="100">생 일</th>
				<td align="center">${vo.birthDate }</td>
				<th width="100">가입일</th>
				<td align="center">${vo.regiDate }</td>
			</tr>
			<tr>
				<th width="100">관심사</th>
			</tr>
			<tr>	
				<th width="100">길드</th>
				<td align="center">${vo.rooms }</td>
				
				<th width="100">MBTI</th>
				<td align="center">${vo.MBTIcode }</td>
			</tr>
			<tr>	
				<th width="100">직업</th>
				<td align="center" colspan=3>${vo.occupation }</td>
			</tr>
			
		</table>
		<br><br>

<div align="center">
		<form id="frm" name="frm" method="post" action="">
		<input type="hidden" id="account" name="account" value="${vo.account}">
		
		<!-- 아까 히든 말들어준데어데? -->
		<button type ="submit" onClick='formSubmit("1")'>글수정</button>&nbsp;&nbsp;&nbsp;
		<button type ="submit" onClick='formSubmit("2")'>글삭제</button>&nbsp;&nbsp;&nbsp;
		<button type ="button" onClick="location.href='/Commfy/RegiList.do'">목록보기</button>

		</form>
		</div>	

</div>
</body>

<script type="text/javascript">
function formSubmit(n){
	if(n=="1"){
		frm.action="/Commfy/RegiRoadToEdit.do";
		
	}else if(n=="2"){
		frm.action="/Commfy/RegiDel.do";
		}
 }
 
</script>

</html>