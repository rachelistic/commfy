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
		document.frm.action = "/Commfy/.do";
		document.frm.submit();
	}
</script>
<style>
button {
	background: white;
	border: 0;
	height: 2rem;
}

input {
	background: white;
	border: 0;
	height: 2rem;
}

select {
	background: white;
	border: 0;
	height: 2rem;
}

tr:hover {
	background: white;
	color: black;
}
</style>
</head>
<body style="background-color: clouds; float: left; display: inline">
	<div align="center">

		<div id="title">
			<br>
			<br>
			<h1>게 시 판</h1>
			<br>
		</div>
		<div id="navi" style="display: inline position:relative">

			<div style="float: left; padding-left: 2%; position: relative">
				<button id="regiadd"
					onclick="location.href='/Commfy/jsp/board/writePost.jsp'">글쓰기</button>

			</div>


			<div style="float: right; padding-right: 2%; position: relative">
				<form id="searchform" name="searchform">
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
			<table>
				<tr style="background: white; color: black">
					<th width="50">ID.</th>
					<th width="400">제 목</th>
					<th width="100">게시일</th>
					<th width="100">지 역</th>
					<th width="100">글종류</th>
					<th width="100">글쓴이</th>
					<th width="50">조회수</th>
				</tr>
				<c:forEach var="vo" items="${posts }">
					<tr class="row"
						onClick="location.href='/Commfy/BoardRead.do?postid=${vo.postId }'">
						<td align="center">${vo.postId }</td>
						<td align="center">${vo.postTitle}</td>
						<td align="center">${vo.postDate }</td>
						<td align="center">${vo.postArea }</td>
						<td align="center">${vo.postCategory }</td>
						<td align="center">${vo.postWriter }</td>
						<td align="center">${vo.postHit }</td>
					</tr>
				</c:forEach>
			</table>

			<form id="frm" name="frm" method="post">
				<input type="hidden" id="postid" name="postid">
			</form>
		</div>


	</div>
</body>
</html>