<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="/jsp/menu.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body><%-- 
서치리스트 ${searchList }<br>쉼표로 구분해 리스트에 넣은것 ${sortresult }<br>어래이 쉼표로 구분한것 ${sortresultArray} 
 --%>	<div class="container" align="center">

		<div id="title">
			<br>
			<br>
			<h1 style="color:white">전 체 게 시 판</h1>
			
				<br>
		</div>
		<div id="navi" style="display: inline position:relative">

			<div style="float: left; padding-left: 2%; position: relative">
				<button id="regiadd" style="width:100px"
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
<br>		
			<table>
				<tr style="background: white; color: black">
					<th width="50">ID.</th>
					<th width="400">제 목</th>
					<th width="100">게시일</th>
					<th width="100">지 역</th>
					<th width="100">글종류</th>
					<th width="100">글쓴이</th>
					<th width="100">MBTI</th>
					<th width="50">조회수</th>
					
				</tr>
				<c:forEach var="vo" items="${searchList }">
					<tr class="row"
						onClick="location.href='/Commfy/BoardRead.do?postid=${vo.postId }'">
						<td align="center">${vo.postId }</td>
						<td align="center">${vo.postTitle}</td>
						<td align="center">${vo.postDate }</td>
						<td align="center">${vo.postArea }</td>
						<td align="center">${vo.postCategory }</td>
						<td align="center">${vo.postWriter }</td>
						<td align="center">${vo.mbti }</td>
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