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
			document.frm.action = "/Commfy/RegiEdit.do";
		else
			document.frm.action = "/Commfy/RegiList.do";
		document.frm.submit();
	}
</script>
</head>
<body style="background-color:white">
<div align="center">
	<div><h1>글수정</h1></div>
	<div>
	<form id="frm" name="frm" action="/Commfy/RegiInput.do" method="get">
	
		<table border="1">
			<tr>
				<th width="100">어카운트</th>
				<td width="100">${vo.account }</td>
				
				<th width="100">이 름</th>
				<td align="center">${vo.nickName }</td>
			</tr>
			<tr>	
				<th width="100">권 한</th>
				<td align="center"><input type="text" name="nusertype" id="nusertype" value="${vo.userType }"></td>
				
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
				<td align="center"><input type="text" name="ninterest" id="ninterest" value="${vo.interests }"></td>
			</tr>
			<tr>	
				<th width="100">길드</th>
				<td align="center"><input type="text" name="nroom" id="nroom" value="${vo.rooms }"></td>
			
				<th width="100">MBTI</th>
				<td align="center"><input type="text" name="nmbti" id="nmbti" value="${vo.MBTIcode }"></td>
				
				<th width="100">직업</th>
				<td align="center"><input type="text" name="njob" id="njob" value="${vo.occupation }"></td>
			</tr>
		</table>
		<br/>
	
<input type="hidden" id = "account" name="account" value="${vo.account}">
<input type = "submit" value="수정하기 ">
<input type = "button" onClick="location.href='/Commfy/RegiRead.do?account=${vo.borderId}'" id="cancel" name="cancel" value="수정취소">
<input type ="button" onClick="location.href='/Commfy/RegiList.do'" id="list" name="list" value ="목록으로">
</form>
	
	</div>
	
</div>
</body>
</html>