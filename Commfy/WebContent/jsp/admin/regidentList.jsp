<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="/jsp/menu.jsp" />
<!DOCTYPE html>
<html>
<head>
	<script type="text/javascript">
	function SearchFunction(str) {
		document.frm.mid.value = str;
		document.frm.action = "/Commfy/RegiEdit.do";
		document.frm.submit();
	}
</script>

</head>
<body style="background-color:white">
<div align="center">
	<div><h1>회 원 목 록</h1></div>	
	<div align="right" style="padding-right:5%;">
	<button id="regiadd" onclick="location.href='/Commfy/jsp/login/register.jsp'">회원추가</button></div>
	<br>
	<div>
		<table border="1">
			<tr>
				<th width="100">어카운트</th>
				<th width="100">이 름</th>
				<th width="100">권 한</th>
				<th width="100">지역</th>
				<th width="100">성 별</th>
				<th width="100">혈액형</th>
				<th width="100">생 일</th>
				<th width="100">가입일</th>
				
				<th width="100">길드</th>
				<th width="100">MBTI</th>
				<th width="100">직업</th>
			</tr>
			<c:forEach var="vo" items="${regidents }">
				<tr class="row" onclick="SearchFunction('${vo.account }')"> 
					<td align="center">${vo.account }</td>
					<td align="center">${vo.nickName }</td>
				 	<td align="center">${vo.userType }</td>
					<td align="center">${vo.area }</td>
					<td align="center">${vo.gender }</td>
					<td align="center">${vo.bloodType }</td>
					<td align="center">${vo.birthDate }</td>
					<td align="center">${vo.regiDate }</td>
					
					<td align="center">${vo.rooms }</td>
					<td align="center">${vo.MBTIcode }</td>
					<td align="center">${vo.occupation }</td>
				</tr>
			</c:forEach>
		</table>
		<form id="frm" name="frm" method="post">
			<input type="hidden" id="mid" name="mid">
		</form>
	</div>


</div>
</body>
</html>