<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="/jsp/menu.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
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
	<h1>마이페이지 </h1>
		<table id="mbtitown">
		  	<tr>	
				<th width="100">어카운트</th>
				<td align="center" colspan=3>${uaccount}</td>
			</tr>	
			<tr>	
				<th width="100">별명</th>
				<td align="center" colspan=3>${nickname}</td>
			</tr>	
			<tr>	
				<th width="100">MBTI코드</th>
				<td align="center" colspan=3>${mbticode}</td>
			</tr>	
			<tr>
				<th width="100">타 운</th>
				<td align="center">${town }</td>
				<th width="100">위 치</th>
				<td align="center">${isla }</td> 
			</tr>
			<tr>	
				<th width="100">특 징</th>
				<td align="center" colspan=3>${desc }</td>
			</tr>	
			
			<tr>
				<th width="100">베스트매치</th>
				<td align="center" colspan=3>${bestm }</td>
			</tr>
			<tr>
				<th width="100">굿매치</th>
				<td align="center" colspan=3>${goodm }</td>
			</tr>
			<tr>
				<th width="100">오케이매치</th>
				<td align="center" colspan=3>${okaym }</td>
			</tr>
			<tr>
				<th width="100">배드매치</th>
				<td align="center" colspan=3>${badm }</td>
			</tr>
			<tr>
				<th width="100">워스트매치</th>
				<td align="center" colspan=3>${worstm }</td>
			</tr>
			<tr>
				<th width="100">직업 목록</th>
				<td align="center" colspan=3>${jobList }</td>
			</tr>
			<!-- 워스트매치 보기 -->
		</table>
		<br><br>
 
<div align="center">
		<form id="frm" name="frm" method="post" action="">
		<input type="hidden" id="account" name="account" value="${vo2.mbtiCode}">
		
		<!-- 아까 히든 말들어준데어데? -->
		<button type ="submit" onClick='formSubmit()'>수정</button>&nbsp;&nbsp;&nbsp;
		<!-- <button type ="submit" onClick='formSubmit("2")'>삭제</button>&nbsp;&nbsp;&nbsp; -->
		<button type ="button" onClick="location.href='/Commfy/MBTIList.do'">목록으로</button>

		</form>
		</div>	 

</div>
</body>

<script type="text/javascript">
function formSubmit(){
		frm.action="/Commfy/RegiRoadToEdit.do";
		//요것 바꾸기  MBTIRoadToEdit
</script>
</html>