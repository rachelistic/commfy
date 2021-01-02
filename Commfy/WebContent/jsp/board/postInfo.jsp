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
		<table id="post">
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
					${vo.postWriter }
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
		<c:if test="${vo.postCategory eq '컨택트모임' || vo.postCategory eq '언컨택트모임'}">
			<a id="eventmsg">이 게시글은 이벤트를 포함하고 있습니다.</a>
			<button id="eventon" onClick='showEvent()'>이벤트 상세보기</button> 
			<button id="eventclose" onClick='closeEvent()' style="display:none">이벤트 상세 페이지 닫기</button> 
		</c:if>
		<br> <br>
		
		<div id="thisevent" align="center" style="display:none">
		
		<h2>본 이벤트는 [ ${vo.eventTitle} ] 입니다.</h2>
				<table id="event">

			<tr>
				<th width="100">이벤트 날짜</th>
				<td align="center">${vo.eventDate } 일 ${vo.eventTime} 분에 </td>
			</tr>
			<tr>
				<th width="100">이벤트 장소</th>
				<td align="center">${vo.eventPlace } 에서</td>

				
			</tr>
			<tr>
				<th width="100">모집 인원</th>
				<td align="center" colspan=3>최소 ${vo.eventMin }명부터 최대 ${vo.eventMax } 명까지 </td>
			</tr>
			<tr>
				<th width="100">참가 요금</th>
				<td align="center" colspan=3>${vo.eventFee } 원의 참가비로</td>
			</tr>
			<tr>
				<th width="100">설 명</th>
				<td align="center" colspan=3>${vo.interest } 에 관심있는 분들과 ${vo.interestSm}를 하고자 합니다. </td>
			</tr>
			<tr>
				<th width="100">현재 인원</th>
				<td align="center" colspan=3> 현재 모집된 인원은 ${vo.eventJoin } 명 입니다. 
				<br>
				<br> 참가하시겠습니까? 
				
				
				<button type="button" onClick="location.href='/Commfy/JoinEvent.do'" style="border:1px solid black">참가하기</button>
				<br>
				<!--한명씩 추가되는 !  -->
				
				 </td>
			</tr>
	
		</table>
		
		</div>
		
		<br>

		<div align="center">
			<form id="frm" name="frm" method="post" action="">
				<input type="hidden" id="postid" name="postid" value="${vo.postId}">

				<!-- 아까 히든 말들어준데어데? -->
				<c:if test="${vo.postWriter eq uaccount}">
				이부분은 글쓴이에게만 보입니다.
				<button type="submit" onClick='formSubmit("1")'>글수정</button>
				&nbsp;&nbsp;&nbsp;
				<button type="submit" onClick='formSubmit("2")'>글삭제</button>
				&nbsp;&nbsp;&nbsp;
				
				</c:if>
				
				<button type="button" onClick="location.href='/Commfy/BoardList.do'">목록으로</button>
				
			</form>
			<br>
			<br>
		</div>

	</div>
</body>

<script type="text/javascript">
	
	function formSubmit(n) {
	if (n == "1") {
			frm.action = "/Commfy/RegiRoadToEdit.do";

		} else if (n == "2") {
			frm.action = "/Commfy/RegiDel.do";
		}
	}
	
	function showEvent()
	{	document.getElementById('eventon').style.display="none";
		document.getElementById('thisevent').style.display="block";
		document.getElementById('eventmsg').style.display="none";
		document.getElementById('eventclose').style.display="block";
	}
	
	function closeEvent()
	{	document.getElementById('eventon').style.display="block";
		document.getElementById('thisevent').style.display="none";
		document.getElementById('eventclose').style.display="none";
	}
	
</script>

</html>