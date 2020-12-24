<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="/jsp/menu.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보조회</title>
<script type="text/javascript">
	function SelectFunction(str) {
		if(str == 'E') 
			document.frm.action = "/Member/RegiEdit.do";
		else
			document.frm.action = "/Commfy/RegiList.do";
		document.frm.submit();
	}
</script>
</head>
<body style="background-color:white">
<div align="center">
	<div><h1>회원정보 조회</h1></div>
	<div>
		<table border="1">
			<tr>
				<th width="100">어카운트</th>
				<td width="100">${vo.account }</td>
				
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
				
				<th width="100">생 일</th>
				<td align="center">${vo.birthDate }</td>
			</tr>
			<tr>
				<th width="100">관심사</th>
				<td align="center">${vo.interests }</td>
			</tr>
			<tr>	
				<th width="100">길드</th>
				<td align="center">${vo.rooms }</td>
			
				<th width="100">MBTI</th>
				<td align="center">${vo.MBTIcode }</td>
				
				<th width="100">직업</th>
				<td align="center">${vo.occupation }</td>
			</tr>
		</table>
		<br/>
	</div>
	<div>
		<form id="frm" name="frm" method="post">
			<input type="hidden" id="mid" name="mid">
			<button type="button" onclick="SelectFunction('E')">회원정보수정</button>&nbsp;&nbsp;
			<button type="reset">취 소</button>&nbsp;&nbsp;
			<button type="button" onclick="SelectFunction('L')">회원목록</button>
		</form>
	</div>
</div>
</body>
</html>