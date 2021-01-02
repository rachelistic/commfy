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

table input {
	width: 90%;
	background-color: lightgrey;
	border: 0;
	height: 2rem;
}

table select {
	width: 90%;
	background: lightgrey;
	border: 0;
	height: 2rem;
}

table textarea {
	width: 90%;
	background: lightgrey;
	border: 0;
}
.eventb {display:none;}
</style>
<script type="text/javascript">


ShowHideDiv(obj);



function showEvent(){
	
	document.getElementById('eventon').style.display="none";
	document.getElementById('thisevent').style.display="block";
	document.getElementById('eventmsg').style.display="none";
	document.getElementById('eventclose').style.display="block";
}

function closeEvent() {document.getElementById('eventon').style.display="block";
	document.getElementById('thisevent').style.display="none";
	document.getElementById('eventclose').style.display="none";
}


function add(){
	document.frm.submit();
	alert("등록되었습니다.");
}

</script>


</head>
<body>


	<div id="userform" align="center">
		<h1 style="color: white">글 쓰 기</h1>
<form id="frm" name="frm" action="/Commfy/BoardInsert.do" method="get">
		<table id="post">

			<tr>

				<th width="100">글 종류</th>
				<td align="center" colspan=3>
		
				<select id='pcategory'name='pcategory' style="width:200px" onchange="ShowHideDiv(this)">
						<option value="일반글">일반글</option>
						<option value="컨택트모임">컨택트모임</option>
						<option value="언택트모임">언택트모임</option>
						<option value="동호회">동호회</option>
						<option value="사고팔기">사고팔기</option>
						<option value="구인구직">구인구직</option>
				</select>
				<input type="date" id="currentDate" name="currentDate" style="width:150px">
	
				</td>
				
			</tr>
<tr>
				<th width="100">글쓴이</th>
				<td align="center"><input type="Text" style="background:none;width:80%;" readonly id="pwriter" name='pwriter' value="${uaccount}"></td>
			</tr>
			
<tr>
				<th width="100">마을</th>
				<td align="center">${isla }, ${town }마을(<input type="Text" style="background:none;width:50px" readonly id="pmbti" name='pmbti' value="${mbticode}">)</td>
			</tr>
			<tr>
				<th width="100">글 제목</th>
				<td align="center"><input type="Text" id="ptitle" name='ptitle'></td>
			</tr>
			<tr>
				<th width="100">설 명</th>
				<td align="center" colspan=3><textarea rows="10" id="pcontent"
						name='pcontent'>
					</textarea>
			</tr>



			<tr>
				<th width="100">공고지역</th>

				<td align="center" colspan=3><select id="parea" name="h_area1"
					onChange="cat1_change(this.value,h_area2)" style="width: 200px">
						<option>-선택-</option>
						<option value='서울'>서울</option>
						<option value='부산'>부산</option>
						<option value='대구'>대구</option>
						<option value='인천'>인천</option>
						<option value='광주'>광주</option>
						<option value='대전'>대전</option>
						<option value='울산'>울산</option>
						<option value='강원'>강원</option>
						<option value='경기'>경기</option>
						<option value='경남'>경남</option>
						<option value='경북'>경북</option>
						<option value='전남'>전남</option>
						<option value='전북'>전북</option>
						<option value='제주'>제주</option>
						<option value='충남'>충남</option>
						<option value='충북'>충북</option>
				</select></td>
			</tr>

			<tr>
				<th width="100">공개범위</th>
				<td align="center" colspan=3 >
				<select name="prange" id="prange">
						<option value="town">같은 마을 사람에게만</option>
						<option value="isla">같은 섬 사람에게만</option>
						<option value="best">100% 베스트 매치까지</option>
						<option value="good">75% 굿 매치까지</option>
						<option value="okay">50% 오케이 매치까지</option>
						<option value="bad">25% 배드 매치까지</option>
						<option value="all">전체 공개</option>
				</select>
				</td>
			</tr>

		</table>
		
		<div id="eventb" class="eventb">
		<br> <a id="eventmsg">이벤트로 만들겠습니까?</a>
		<input type="button" id="eventon" onClick='showEvent()' value="이벤트로 만들기">
		<input type="button" id="eventclose" onClick='closeEvent()'  value="일반 글로 만들기" style="display: none">
			

		<br> <br>
		</div>

		<div id="thisevent" align="center" style="display: none">
			<table>
				<tr>
					<th width="100">이벤트 이름</th>
					<td align="center"><input type="Text" name="etitle"
						id="etitle"></td>
				</tr>

				<tr>
				<th width="100">이벤트 날짜</th>
				<td align="center">
				   
				    <input type="date" id="edate" name="edate" style="width:150px">
					<input type="text" id="etime" name="etime" placeholder="24:00로 표기" style="width: 100px;">시
				</td>

				</tr>
				<tr>
					<th width="100">이벤트 장소</th>
					<td align="center"><input type="text" name="eplace" id="eplace"></td>


				</tr>
				<tr>
					<th width="100">모집 인원</th>
					<td align="center">최소 <input type="text" name="emin" id="emin" value="1" style="width: 100px;">명 부터 최대 
					<input type="text" id="emax" name="emax" value="1" style="width: 100px;">명
						까지
					</td>
				</tr>
				<tr>
					<th width="100">참가 요금</th>
					<td align="center"><input type="text" value="0" name="efee" id="efee" style="width: 100px;">원</td>
				</tr>
				<tr>
					<th width="100">분 류</th>
					<td align="center" colspan=3>
					 
					<select name="interest" id="interest" style="width:200px;">
					<option value="여행/아웃도어">여행/아웃도어</option>
					<option value="운동/스포츠">운동/스포츠</option>
					<option value="책/인문학/글쓰기">책/인문학/글쓰기</option>
					<option value="직무/커리어">직무/커리어</option>
					<option value="IT/기술">IT/기술</option>
					<option value="외국어/언어">외국어/언어</option>
					<option value="문화/예술">문화/예술</option>
					<option value="음악/악기">음악/악기</option>
					<option value="댄스/무용">댄스/무용</option>
					<option value="사진/영상">사진/영상</option>
					<option value="패션/스타일">패션/스타일</option>
					<option value="식음료/요리">식음료/요리</option>
					<option value="사교/인맥">사교/인맥</option>
					<option value="영화/드라마">영화/드라마</option>
					<option value="게임/오락">게임/오락</option>
					<option value="라이프스타일">라이프스타일</option>
					<option value="반려동물/동물">반려동물/동물</option>
					<option value="교육/유학">교육/유학</option>
					<option value="종교/신념">종교/신념</option>
					<option value="봉사활동/자선">봉사활동/자선</option>
					<option value="사회운동/정책">사회운동/정책</option>
					
					</select>
					 활동 : 
				<input type="text" placeholder="예)일출감상,등산,미술수업 등등"name="interestsm" id="interestsm" style="width:200px;">
					</td>
				</tr>
				<tr>
					<th width="100">현재 모집된 인원</th>
					<td align="center"><input type="text" value="1" 
						name="ejoin" id="ejoin" style="width: 100px;">명</td>
				</tr>

			</table>

		</div>

		<br>

		<div align="center">
			
				<input type="hidden" id="postid" name="postid" value="${vo.postId}">
	
				<input type="button" value="등록하기" onClick="add()">
				<button type="button" onClick="location.href='/Commfy/BoardList.do'">목록으로</button>
		
			<br> <br>
		</div>



			</form>

	</div>
</body>


<script type="text/javascript">



function ShowHideDiv(obj) {
	if (obj.value =='컨택트모임' ||obj.value =='언택트모임'){
		document.getElementById('eventb').style.display = 'block';
	}else{
		document.getElementById('eventb').style.display = 'none';
	}
	}




document.getElementById('currentDate').value = 
	new Date().toISOString().substring(0, 10);
	
document.getElementById('edate').value = 
	new Date().toISOString().substring(0, 10);

function formSubmit(n) {
	if (n == "1") {
		frm.action="/Commfy/BoardInsert.do" ;

	} else if
					(n== "2") {
		frm.action="/Commfy/RegiDel.do" ;
	}
}
	

	/* var cat1_num=new
						Array(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14,
			15, 16);
	var
						cat1_name=newArray('서울', '부산', '대구', '인천', '광주', '대전', '울산',
			'강원', '경기', '경남', '경북', '전남', '전북', '제주', '충남', '충북');
	 */
</script>
</html>