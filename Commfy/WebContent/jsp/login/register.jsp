<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/jsp/menu.jsp" />
<!DOCTYPE html>

<html>
<link href="/Commfy/css/register.css" rel="stylesheet">

<style>
</style>

<script>
	
</script>
<head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha.6/css/bootstrap.min.css">
<meta charset="UTF-8">





<title>회원 등록</title>

<script type="text/javascript">
	function add() {
		document.frm.submit();
		alert("등록되었습니다.");
	}

	/* window.onload = function() {
		var dt = new Date();
		var Year = dt.getFullYear();
		var Month = "" + (dt.getMonth() + 1);
		var Day = "" + dt.getDate();

		if (Month.length < 2)
			Month = "0" + Month;
		if (Day.length < 2)
			Day = "0" + Day;

		var Today = Year.toString() + "-" + Month + "-" + Day;

		document.getElementById("TODAY").value=Today;
	} */

	var cat1_num = new Array(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15,
			16);
	var cat1_name = new Array('서울', '부산', '대구', '인천', '광주', '대전', '울산', '강원',
			'경기', '경남', '경북', '전남', '전북', '제주', '충남', '충북');

	var cat2_num = new Array();
	var cat2_name = new Array();

	cat2_num[1] = new Array(17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29,
			30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41);
	cat2_name[1] = new Array('강남구', '강동구', '강북구', '강서구', '관악구', '광진구', '구로구',
			'금천구', '노원구', '도봉구', '동대문구', '동작구', '마포구', '서대문구', '서초구', '성동구',
			'성북구', '송파구', '양천구', '영등포구', '용산구', '은평구', '종로구', '중구', '중랑구');

	cat2_num[2] = new Array(42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54,
			55, 56, 57);
	cat2_name[2] = new Array('강서구', '금정구', '남구', '동구', '동래구', '부산진구', '북구',
			'사상구', '사하구', '서구', '수영구', '연제구', '영도구', '중구', '해운대구', '기장군');

	cat2_num[3] = new Array(58, 59, 60, 61, 62, 63, 64, 65);
	cat2_name[3] = new Array('남구', '달서구', '동구', '북구', '서구', '수성구', '중구', '달성군');

	cat2_num[4] = new Array(66, 67, 68, 69, 70, 71, 72, 73, 74, 75);
	cat2_name[4] = new Array('계양구', '남구', '남동구', '동구', '부평구', '서구', '연수구',
			'중구', '강화군', '옹진군');

	cat2_num[5] = new Array(76, 77, 78, 79, 80);
	cat2_name[5] = new Array('광산구', '남구', '동구', '북구', '서구');

	cat2_num[6] = new Array(81, 82, 83, 84, 85);
	cat2_name[6] = new Array('대덕구', '동구', '서구', '유성구', '중구');

	cat2_num[7] = new Array(86, 87, 88, 89, 90);
	cat2_name[7] = new Array('남구', '동구', '북구', '중구', '울주군');

	cat2_num[8] = new Array(91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102,
			103, 104, 105, 106, 107, 108);
	cat2_name[8] = new Array('강릉시', '동해시', '삼척시', '속초시', '원주시', '춘천시', '태백시',
			'고성군', '양구군', '양양군', '영월군', '인제군', '정선군', '철원군', '평창군', '홍천군',
			'화천군', '횡성군');

	cat2_num[9] = new Array(109, 110, 111, 112, 113, 114, 115, 116, 117, 118,
			119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131,
			132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144,
			145, 146, 147, 148);
	cat2_name[9] = new Array('고양시 덕양구', '고양시 일산구', '과천시', '광명시', '광주시', '구리시',
			'군포시', '김포시', '남양주시', '동두천시', '부천시 소사구', '부천시 오정구', '부천시 원미구',
			'성남시 분당구', '성남시 수정구', '성남시 중원구', '수원시 권선구', '수원시 장안구', '수원시 팔달구',
			'시흥시', '안산시 단원구', '안산시 상록구', '안성시', '안양시 동안구', '안양시 만안구', '오산시',
			'용인시', '의왕시', '의정부시', '이천시', '파주시', '평택시', '하남시', '화성시', '가평군',
			'양주군', '양평군', '여주군', '연천군', '포천군');

	cat2_num[10] = new Array(149, 150, 151, 152, 153, 154, 155, 156, 157, 158,
			159, 160, 161, 162, 163, 164, 165, 166, 167, 168);
	cat2_name[10] = new Array('거제시', '김해시', '마산시', '밀양시', '사천시', '양산시', '진주시',
			'진해시', '창원시', '통영시', '거창군', '고성군', '남해군', '산청군', '의령군', '창녕군',
			'하동군', '함안군', '함양군', '합천군');

	cat2_num[11] = new Array(169, 170, 171, 172, 173, 174, 175, 176, 177, 178,
			179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191,
			192);
	cat2_name[11] = new Array('경산시', '경주시', '구미시', '김천시', '문경시', '상주시', '안동시',
			'영주시', '영천시', '포항시 남구', '포항시 북구', '고령군', '군위군', '봉화군', '성주군',
			'영덕군', '영양군', '예천군', '울릉군', '울진군', '의성군', '청도군', '청송군', '칠곡군');

	cat2_num[12] = new Array(193, 194, 195, 196, 197, 198, 199, 200, 201, 202,
			203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214);
	cat2_name[12] = new Array('광양시', '나주시', '목포시', '순천시', '여수시', '강진군', '고흥군',
			'곡성군', '구례군', '담양군', '무안군', '보성군', '신안군', '영광군', '영암군', '완도군',
			'장성군', '장흥군', '진도군', '함평군', '해남군', '화순군');

	cat2_num[13] = new Array(215, 216, 217, 218, 219, 220, 221, 222, 223, 224,
			225, 226, 227, 228, 229);
	cat2_name[13] = new Array('군산시', '김제시', '남원시', '익산시', '전주시 덕진구', '전주시 완산구',
			'정읍시', '고창군', '무주군', '부안군', '순창군', '완주군', '임실군', '장수군', '진안군');

	cat2_num[14] = new Array(230, 231, 232, 233);
	cat2_name[14] = new Array('서귀포시', '제주시', '남제주군', '북제주군');

	cat2_num[15] = new Array(234, 235, 236, 237, 238, 239, 240, 241, 242, 243,
			244, 245, 246, 247, 248);
	cat2_name[15] = new Array('공주시', '논산시', '보령시', '서산시', '아산시', '천안시', '금산군',
			'당진군', '부여군', '서천군', '연기군', '예산군', '청양군', '태안군', '홍성군');

	cat2_num[16] = new Array(249, 250, 251, 252, 253, 254, 255, 256, 257, 258,
			259, 260);
	cat2_name[16] = new Array('제천시', '청주시 상당구', '청주시 흥덕구', '충주시', '괴산군', '단양군',
			'보은군', '영동군', '옥천군', '음성군', '진천군', '청원군');

	function cat1_change(key, sel) {
		if (key == '')
			return;
		var name = cat2_name[key];
		var val = cat2_num[key];

		for (i = sel.length - 1; i >= 0; i--)
			sel.options[i] = null;
		sel.options[0] = new Option('-선택-', '', '', 'true');
		for (i = 0; i < name.length; i++) {
			sel.options[i + 1] = new Option(name[i], val[i]);
		}
	}
</script>



</head>
<body>
	<form id="frm" name="frm" action="/Commfy/RegiAdd.do" method="get">
		<div id="firstsec" align="center">
			<br> <br>
			<a href="/Commfy/jsp/login/register2.jsp">ENGLISH</a> / <a href="/Commfy/jsp/login/register.jsp">KOREAN</a>
			<h3>컴피플래닛에 오신것을 환영합니다.</h3>
			<br>
			<h1>컴피플래닛 주민 등록</h1>

			<div id="regi">
				<table>
					<tr>
						<th>어카운트</th>
						<td colspan="2"><input name="account" type="text"
							required></td>
						<td><input type="button" value="중복체크"></td>
					</tr>

					<tr>
						<th>별명</th>
						<td colspan="2"><input name="nickname" type="text" required>
					<input name="usertype" type="text"
							value="user" readonly style="display:none"></td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td colspan="2"><input name="pw" type="password" required></td>
					</tr>
					<tr>
						<th>비밀번호 확인</th>
						<td colspan="2"><input type="password"></td>
						<td id="pwconfirm"><input type="text" value="재입력" readonly style="background:none; border:none; width:60px;"></td>
					</tr>
					<tr>
						<th>활동 지역</th>
						<!-- https://sinna94.tistory.com/entry/%EB%A7%88%EC%9D%B4%EB%B0%94%ED%8B%B0%EC%8A%A4-%EB%8D%B0%EC%9D%B4%ED%84%B0-%EA%B0%80%EC%A0%B8%EC%98%A4%EB%8A%94-%EB%B0%A9%EB%B2%95 -->
						<td colspan="1"><select id="uarea" name="h_area1"
							onChange="cat1_change(this.value,h_area2)">
								<option>-선택-</option>
								<option value='1'>서울</option>
								<option value='2'>부산</option>
								<option value='3' selected>대구</option>
								<option value='4'>인천</option>
								<option value='5'>광주</option>
								<option value='6'>대전</option>
								<option value='7'>울산</option>
								<option value='8'>강원</option>
								<option value='9'>경기</option>
								<option value='10'>경남</option>
								<option value='11'>경북</option>
								<option value='12'>전남</option>
								<option value='13'>전북</option>
								<option value='14'>제주</option>
								<option value='15'>충남</option>
								<option value='16'>충북</option>
						</select> <select name="h_area2">
								<option>-선택-</option>
								<option value='58'>남구</option>
								<option value='59'>달서구</option>
								<option value='60'>동구</option>
								<option value='61'>북구</option>
								<option value='62'>서구</option>
								<option value='63'>수성구</option>
								<option value='64'>중구</option>
								<option value='65'>달성군</option>

						</select></td>
					</tr>
					<tr>
						<th>성별</th>
						<td colspan=1><input type="radio" name="gender" value="남성">남성
							<input type="radio" name="gender" value="여성">여성</td>

						<th colspan=1>혈액형</th>
						<td colspan=1><select name="bloodtype">
								<option>-선택-</option>
								<option value="A">A</option>
								<option value="B">B</option>
								<option value="O">O</option>
								<option value="AB">AB</option>
						</select></td>
					</tr>
					<tr>
						<th>생년월일</th>
						<td><input name="bdate" type="date">
						<input type="date" id="currentDate" name="currentDate"
							readonly style="display:none"></td>
					</tr>
					
						
						
					
				</table>
				<br> <br> <br>
			</div>


		</div>

		<div class="section" align="center">
			<br> <br> <br> <a>N E X T</a>
			<h1>▼</h1>
			<br>
			<h1>성향 등록</h1>
			<table id="mbti" style="text-align: center;">

				<tr>
					<td colspan=5><input type="radio" id="mbtis" value="a"
						name="mbtis" onchange="ShowHideDiv()">내 mbti디폴트로 저장하기</td>
					<td colspan=5>
						<div id="selmbti" class="selmbti" style="display: none">
							<select name="mbti">
								<option id="선택" value="">==선택==</option>
								<option id="INTJ" value="INTJ">INTJ</option>
								<option id="INTP" value="INTP">INTP</option>
								<option id="ENTJ" value="ENTJ">ENTJ</option>
								<option id="ENTP" value="ENTP">ENTP</option>

								<option id="INFJ" value="INFJ">INFJ</option>
								<option id="INFP" value="INFP">INFP</option>
								<option id="ENFJ" value="ENFJ">ENFJ</option>
								<option id="ENFP" value="ENFP">ENFP</option>

								<option id="ISTJ" value="ISTJ">ISTJ</option>
								<option id="ISFJ" value="ISFJ">ISFJ</option>
								<option id="ESTJ" value="ESTJ">ESTJ</option>
								<option id="ESFJ" value="ESFJ">ESFJ</option>

								<option id="ISTP" value="ISTP">ISTP</option>
								<option id="ISFP" value="ISFP">ISFP</option>
								<option id="ESTP" value="ESTP">ESTP</option>
								<option id="ESFP" value="ESFP">ESFP</option>
							</select>
						</div>


					</td>
				<tr>
				<tr>
					<td colspan=5><input type="radio" id="mbtis" value="b"
						name="mbtis" onchange="ShowHideDiv()">정확한 MBTI 검사하기</td>
					<td colspan=7><a href="https://www.16personalities.com/ko"
						id="link">Go to the Link</a></td>
				</tr>
			</table>


			<table border=1 id="test" style="text-align: center; display: none;">
				<tr>
					<td colspan=12>MBTI검사 결과</td>
				</tr>

				<tr>
					<td colspan=2>E</td>
					<td colspan=8>https://codepen.io/mygumi/pen/EQypKX</td>
					<td colspan=2>I</td>
				</tr>
				<tr>
					<td colspan=1>외향</td>
					<td colspan=1><input id="ue" type="text" id="e">%</td>
					<td colspan=8></td>
					<td colspan=1><input id="ui" type="text" id="i">%</td>
					<td colspan=1>내향</td>
				</tr>

				<tr>
					<td colspan=2>S</td>
					<td colspan=8>bar</td>
					<td colspan=2>N</td>
				</tr>
				<tr>
					<td colspan=1>감각</td>
					<td colspan=1><input id="us" type="text" id="s">%</td>
					<td colspan=8></td>
					<td colspan=1><input id="un" type="text" id="n">%</td>
					<td colspan=1>직관</td>
				</tr>

				<tr>
					<td colspan=2>T</td>
					<td colspan=8>bar</td>
					<td colspan=2>F</td>
				</tr>
				<tr>
					<td colspan=1>사고</td>
					<td colspan=1><input id="ut" type="text" id="t">%</td>
					<td colspan=8></td>
					<td colspan=1><input id="uf" type="text" id="f">%</td>
					<td colspan=1>감정</td>
				</tr>

				<tr>
					<td colspan=2>J</td>
					<td colspan=8>bar</td>
					<td colspan=2>P</td>
				</tr>
				<tr>
					<td colspan=1>판단</td>
					<td colspan=1><input id="uj" type="text" id="j">%</td>
					<td colspan=8></td>
					<td colspan=1><input id="up" type="text" id="p">%</td>
					<td colspan=1>인식</td>
				</tr>
				<tr>
					<td colspan="12"><h2>당신은 __입니다.</h2></td>
				</tr>



			</table>


			<br> <br>
			<h1>나의 관심사</h1>


			<br> <br>

			<jsp:include page="/jsp/login/interests.jsp" />
 <div id='result'></div> 
<input type="text" id=int name=int readonly style="display:none;">
		</div>



		<!-- 	<div class="wrap">
				<nav class='circle-nav'>
					<a class="circle" href='#' class='center'></a> 
					<a href='#' class='circle nav-item-1'></a> 
					<a href='#'class='circle nav-item-2'></a>
					<a href='#' class='circle nav-item-3'></a> 
					<a href='#' class='circle nav-item-4'></a> 
					<a href='#' class='circle nav-item-5'></a> 
					<a href='#' class='circle nav-item-6'></a>
				</nav>
			</div> -->

		<div align="center">
			정보 입력 완료 ! <input type="submit" value="등록하기" onClick="add()">
			<br> <br> <br> <br> <br>
		</div>

	</form>





</body>
<script>
	document.getElementById('currentDate').value = new Date().toISOString()
			.substring(0, 10);

	function ShowHideDiv() {
		obj = document.getElementById('mbtis');
		if (obj.value == 'a') {
			document.getElementById('selmbti').style.display = 'block';

		} else if (obj.value == 'b') {
			document.getElementById('selmbti').style.display = 'none';
			document.getElementById('test').style.display = 'block';
		}
	}
</script>


</html>