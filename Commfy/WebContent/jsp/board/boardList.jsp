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
	height: 2.5rem;
}

input {
	background: white;
	border: 0;
	height: 2.5rem;
}

#navi {width:85%;}
select {
	background: white;
	border: 0;
	height: 2.5rem;
}
table {width:85%;
		border:10px solid white;
		}

tr {height:3rem; background: white}

tr:hover {
	background: #EDD3BC;
	color: black;
}



</style>
</head>
<body style="background-color: clouds; float: left; display: inline">
	<div class="container" align="center">

		<div id="title">
			<br>
			<br>
			<h1 style="color:white">전 체 게 시 판</h1>
			<form id=sort name=sort action="sortSearch.do">
			<input type="checkbox" name="sort" onClick="getCheckboxValue()" value="${bestm}">BEST매치 100%
			<input type="checkbox" name="sort" onClick="getCheckboxValue()" value="${goodm}">GOOD매치 75%
			<input type="checkbox" name="sort" onClick="getCheckboxValue()" value="${okaym}">OKAY매치 50%
			<input type="checkbox" name="sort" onClick="getCheckboxValue()" value="${badm}">Bad매치 25%
			<input type="checkbox" name="sort" onClick="getCheckboxValue()" value="${isla}">우리섬(비슷한성향)
			<input type="checkbox" name="sort" onClick="getCheckboxValue()" value="${mbticode}">우리마을(같은mbti)
			<br><br>
			<div id="result" style="display:none;"></div>
			<input id="sortresult" name="sortresult" style="width:800px;">
			<input type="submit" value="search">
			</form>
			
			
			<br>
		</div>
		<div id="navi" style="display: inline position:relative">

			<div style="float: left; padding-left: 2%; position: relative">
				<button id="regiadd" style="width:100px"
					onclick="location.href='/Commfy/jsp/board/writePost.jsp'">글쓰기</button>

			</div>

			<div style="float: right; padding-right: 2%; position: relative" id="searchwriter">
				<form id="searchform" name="searchform">
					<select id="searchopt" name="searchopt">
						<option value="" selected>==전체 검색==</option>
						<option value="usertype">권한별 검색</option>
						<option value="area">지역별 검색</option>
						<option value="gender">성별 검색</option>
						<option value="mbticode">mbti 검색</option>
					</select> <input type="text" id="searchbar"> <input type="button"
						id="search" value="search">
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
				<c:forEach var="vo" items="${posts }">
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
<script>
function getCheckboxValue()  {
	  // 선택된 목록 가져오기
	  const query = 'input[name="sort"]:checked';
	  const selectedEls = 
	      document.querySelectorAll(query);
	  
	  // 선택된 목록에서 value 찾기
	  let result = "";
	  selectedEls.forEach((el) => {
	    result += el.value + ',';
	  });
	  
	  // 출력
	  document.getElementById('result').innerText
	    = result;
	  document.getElementById('sortresult').value
	    = result;
	}
</script>
</html>