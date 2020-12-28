<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="/jsp/menu.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보조회</title>

<style>
body{background-color: #F0ECDD;}
table {width:80%;}
#user td {width:50;}
tr {height:4rem;}
table {border:10px solid white;}
tr{background:white; }
input {background:#F0ECDD; border:0; height:2rem;}
select {background:#F0ECDD; border:0; height:2rem;}
</style>
</head>


<script type="text/javascript">
	function SelectFunction(str) {
		if(str == 'E') 
			document.frm.action = "/Commfy/RegiEdit.do";
		else
			document.frm.action = "/Commfy/RegiList.do";
		document.frm.submit();
	}
</script>


</head>
<body >
<div align="center">
	<div><h1>회원 정보 수정</h1></div>
	<div>
	<form id="frm" name="frm" action="/Commfy/RegiUpdate.do" method="get">
	
		<table >
			<tr>
				<th width="100">어카운트</th>
				<td width="100">${vo.account }</td>
				
				<th width="100">이 름</th>
				<td align="center">${vo.nickName }</td>
			</tr>
			<tr>	
				<th width="100">권 한</th>
				<td align="center">
				
				<select name="nusertype" id="nusertype">
				<option value="${vo.userType }" selected>current : ${vo.userType }</option>
				<option value="manager">manager</option>
				<option value="user">user</option>
				</select>
				
				</td>
				
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
				<td align="center" colspan=3><input style="width:98%" type="text" name="ninterest" id="ninterest" value="${vo.interests }"></td>
			</tr>
			<tr>	
				<th width="100">길드</th>
				<td align="center"><input type="text" name="nroom" id="nroom" value="${vo.rooms }"></td>
			
				<th width="100">MBTI</th>
				<td align="center"><input type="text" name="nmbti" id="nmbti" value="${vo.MBTIcode }"></td>
			</tr>
			<tr>	
				<th width="100">직업</th>
				<td align="center" colspan=3><input style="width:98%" type="text" name="njob" id="njob" value="${vo.occupation }"></td>
			</tr>
		</table>
		<br/>
	
<input type="hidden" id = "account" name="account" value="${vo.account}">
<input type = "submit" value="수정하기 " style="background:white">
<input type = "button" style="background:white" onClick="location.href='/Commfy/RegiRead.do?account=${vo.account}'" id="cancel" name="cancel" value="수정취소">
<input type ="button" style="background:white" onClick="location.href='/Commfy/RegiList.do'" id="list" name="list" value ="목록으로">
</form>
	
	</div>
	
</div>
</body>
</html>