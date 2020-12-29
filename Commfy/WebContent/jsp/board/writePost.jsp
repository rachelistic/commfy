<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/jsp/menu.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Write Post</title>
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
		<h1 style="color: white">글 쓰 기</h1>
		
		<table id="post">

			<tr>
				<th width="100">글 종류</th>
				<td align="center" colspan=3><select>
						<option>1</option>
						<option>2</option>
						<option>3</option>
				</select></td>
			</tr>

			<tr>
				<th width="100">글 제목</th>
				<td align="center"><input type="Text" id="ptitle"></td>
			</tr>
			<tr>
					<th width="100">설 명</th>
					<td align="center" colspan=3><textarea rows="10">
					</textarea>
				</tr>
		
		

			<tr>
				<th width="100">공고지역</th>
				<td align="center" colspan=3><select>
						<option>1</option>
						<option>2</option>
						<option>3</option>
				</select></td>
			</tr>

			<tr>
				<th width="100">공개범위</th>
				<td align="center" colspan=3><select>
						<option>같은 마을 사람</option>
						<option>같은 섬 사람</option>
						<option>100% 맞는 매치</option>
						<option>75% 맞는 매치</option>
						<option>50% 맞는 매치</option>
						<option>25% 맞는 매치</option>
						<option>전체 공개</option>
				</select></td>
			</tr>

		</table>
		<br> <a id="eventmsg">이벤트로 만들겠습니까?</a>
		<button id="eventon" onClick='showEvent()'>이벤트로 만들기</button>
		<button id="eventclose" onClick='closeEvent()' style="display: none">
			일반 글로 만들기</button>

		<br> <br>

		<div id="thisevent" align="center" style="display: none">
			<table>
				<tr>
					<th width="100">이벤트 타이틀</th>
					<td align="center"><input type="Text" id="ptitle"></td>
				</tr>

				<tr>
					<th width="100">이벤트 날짜</th>
					<td align="center"><input type="date" id="edate">
				
					 <input type="text" id="etime" placeholder="24:00로 표기" >시</td>

				</tr>
				<tr>
					<th width="100">이벤트 장소</th>
					<td align="center"><input type="text" id="eplace"></td>


				</tr>
				<tr>
					<th width="100">모집 인원</th>
					<td align="center">최소 <input type="text" id="emin">명
						부터 최대 <input type="text" id="emax">명 까지
					</td>
				</tr>
				<tr>
					<th width="100">참가 요금</th>
					<td align="center"><input type="text" placeholder="0" id="efee"></td>
				</tr>
				<tr>
					<th width="100">설 명</th>
					<td align="center" colspan=3><textarea rows="10">
					</textarea>
				</tr>
				<tr>
					<th width="100">현재 모집된 인원</th>
					<td align="center"><input type="text" placeholder="최소 1" id="ejoin">
					<input type="hidden" value="0" id="phit">
					</td>
				</tr>

			</table>

		</div>

		<br>

		<div align="center">
			<form id="frm" name="frm" method="post" action="">
				<input type="hidden" id="postid" name="postid" value="${vo.postId}">

				<!-- 아까 히든 말들어준데어데? -->
				<button type="button"
					onClick="location.href='/Commfy/BoardUpdate.do'">등록하기</button>
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

	function showEvent() {
		document.getElementById('eventon').style.display = "none";
		document.getElementById('thisevent').style.display = "block";
		document.getElementById('eventmsg').style.display = "none";
		document.getElementById('eventclose').style.display = "block";
	}

	function closeEvent() {
		document.getElementById('eventon').style.display = "block";
		document.getElementById('thisevent').style.display = "none";
		document.getElementById('eventclose').style.display = "none";
	}
</script>

</html>