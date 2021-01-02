<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="/jsp/menu.jsp" />
<!DOCTYPE html>
<html>
<head>

<script type="text/javascript">
function formSubmit(){
		frm.action="/Commfy/MBTIUpdate.do";
		//요것 바꾸기  MBTIRoadToEdit

 }
 
</script>

<meta charset="UTF-8">
<title>MBTI Edit</title>
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
	<h1>MBTI타운 수정</h1>
		<form id="frm" name="frm" method="post" action="">
		<table id="mbtitown">
		
			<tr>
				<th width="100">타 운</th>
				<td align="center">${vo.town }</td>
				<th width="100">코 드 </th>
				<td align="center">${vo.mbtiCode }</td>
				<th width="100">위 치</th>
				<td align="center">${vo.isla }</td> 
			</tr>
			<tr>	
				<th width="100">특 징</th>
				<td align="center" colspan=6>
				<input type="text" id="desc" name="desc" value="${vo.description }">
				</td>
			</tr>	
			
			<tr>
				<th width="100">베스트매치</th>
				<td align="center" colspan=6>
				<input type="text" id="bestm" name="bestm" value="${vo.bestMatch100 }">
				</td>
			</tr>
			<tr>
				<th width="100">굿매치</th>
				<td align="center" colspan=6>
				<input type="text" id="goodm" name="goodm" value="${vo.goodMatch75 }">
				</td>
			</tr>
			<tr>
				<th width="100">오케이매치</th>
				<td align="center" colspan=6>
				<input type="text" id="okaym" name="okaym" value="${vo.okayMatch50 }">
				</td>
			</tr>
			<tr>
				<th width="100">배드매치</th>
				<td align="center" colspan=6>
				<input type="text" id="badm" name="badm" value="${vo.badMatch25 }"></td>
			</tr>
			<tr>
				<th width="100">워스트매치</th>
				<td align="center" colspan=6>
				<input type="text" id="worstm" name="worstm" value="${vo.worstMatch0 }"></td>
			</tr>
			<tr>
				<th width="100">직업 목록</th>
				<td align="center" colspan=6><input type="text" id="job" name="job" value="${vo.jobList }"></td>
			</tr>
			<!-- 워스트매치 보기 -->
		</table>
		<br><br>
 

		
		<input type="hidden" id="mbticode" name="mbticode" value="${vo.mbtiCode}">
		
		<!-- 아까 히든 말들어준데어데? -->
		<button type ="submit" onClick='formSubmit()'>수정</button>&nbsp;&nbsp;&nbsp;
		<!-- <button type ="submit" onClick='formSubmit("2")'>삭제</button>&nbsp;&nbsp;&nbsp; -->
		<button type ="button" onClick="location.href='/Commfy/MBTIList.do'">목록으로</button>

		</form>
		</div>	 

</body>


</html>
