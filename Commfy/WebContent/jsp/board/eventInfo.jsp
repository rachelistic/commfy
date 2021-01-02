<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/jsp/menu.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Info</title>
<style>
body {
	background-color: clouds;
}

table {
	width: 80%;
}

#user td {
	width: 50;
}

tr {
	height: 4rem;
}

table {
	border: 10px solid white;
}

tr {
	background: white;
}

button {
	background: white;
	border: 0;
	height: 2rem;
}

a:link {
	text-decoration: none;
	color: white;
}

a:visited {
	text-decoration: none;
	color: white;
}

a:hover {
	text-decoration: underline;
}

a:active {
	text-decoration: underline;
}
</style>
</head>
<body>


	<div id="userform" align="center">
		<h1 style="color: white">게시글 보기</h1>
		<h4 style="color: white">
			종목 : <a href="#">${vo.postCategory }</a> / 글id : ${vo.postId } / 조회수
			: ${vo.postHit }
		</h4>
		<table id="user">
			<tr>
				<th width="100">글제목</th>
				<td align="center">${vo.postTitle }</td>
			</tr>
		</table>
		<br>
		<table id="user">
			<tr>
				<th width="100">글쓴이</th>
				<td align="center" colspan=3>
				
					 ${vo.mbti } 어디 마을 주민 <%-- ${vo.유저타입} ---%> ${vo.postWriter }
				</td>
			</tr>
			<tr>
				<th width="100">글쓴날짜</th>
				<td align="center">${vo.postDate }</td>

				<th width="100">공고지역</th>
				<td align="center">${vo.postArea }</td>

			</tr>
			<tr>
				<th width="100">글제목</th>
				<td align="center" colspan=3>${vo.postContent }</td>
			</tr>
			<tr>
				<th width="100">공개범위</th>
				<td align="center" colspan=3>${vo.postRange }</td>
			</tr>
	
		</table>
		<br>
		<c:if test="${vo.eventTitle ne null}">
			<a>이 이벤트에 관심이 있나요?</a>
			<button type="submit" onClick='formSubmit("0")'>이벤트 상세보기</button> 
		</c:if>
		<br> <br>

		<div align="center">
			<form id="frm" name="frm" method="post" action="">
				<input type="hidden" id="postid" name="postid" value="${vo.postId}">

				<!-- 아까 히든 말들어준데어데? -->
				<c:if test="${vo.postWriter eq account}">
				<button type="submit" onClick='formSubmit("1")'>글수정</button>
				&nbsp;&nbsp;&nbsp;
				<button type="submit" onClick='formSubmit("2")'>글삭제</button>
				&nbsp;&nbsp;&nbsp;
				<button type="button" onClick="location.href='/Commfy/BoardList.do'">목록으로</button>
				</c:if>
				<c:if test="${vo.postWriter ne account}">
				<button type="button" onClick="location.href='/Commfy/BoardList.do'">목록으로</button>
				</c:if>
			</form>
		</div>

	</div>
</body>

<script type="text/javascript">
	function formSubmit(n) {
		if(n =="0"){
			frm.action="/Commfy/EventInfo.do"
		}
		
		else if (n == "1") {
			frm.action = "/Commfy/RegiRoadToEdit.do";

		} else if (n == "2") {
			frm.action = "/Commfy/RegiDel.do";
		}
	}
</script>

</html>