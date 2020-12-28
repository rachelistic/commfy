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
		document.frm.action = "/Commfy/RegiRead.do";
		document.frm.submit();
	}
</script>
<style>
button{background:white; border:0; height:2rem;}
input{background:white; border:0; height:2rem;}
select{background:white; border:0; height:2rem;}
tr:hover {background:white; color:black;}

</style>
</head>
<body style="background-color: #F0ECDD; float: left; display: inline">
	<div align="center">
	
		<div id="title">
		<br><br>
			<h1>회 원 목 록</h1>
			<br>
		</div>
		<div id="navi" style="display: inline position:relative">

			<div style="float: left; padding-left: 2%; position: relative">
				<button id="regiadd"
					onclick="location.href='/Commfy/jsp/login/register.jsp'">회원추가</button>

			</div>


			<div style="float: right; padding-right: 2%; position: relative">
				<form id="searchform" name="searchform" >
				<select id="searchopt" name="searchopt">
					<option value="" selected>==전체 검색==</option>
					<option value="usertype">권한별 검색</option>
					<option value="area">지역별 검색</option>
					<option value="gender">성별 검색</option>
					<option value="mbticode">mbti 검색</option>
				</select> <input type="text" id="searchbar"> <input type="button"
					id="search" value="검색">
				</form>
			</div>
		</div>
		<br>
		<div>
			<br>
			<table >
				<tr style="background:white; color:black">
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
					<tr class="row"
						onClick="location.href='/Commfy/RegiRead.do?account=${vo.account }'">
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