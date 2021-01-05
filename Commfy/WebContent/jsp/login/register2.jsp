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





<title>Register</title>

<script type="text/javascript">
	function add() {
		document.frm.submit();
		alert("Registered");
	}

	function DrDw2(F, b) {
		var aCL = F.split("~");
		var iC = aCL.length;
		if (aCL[iC - 1] == "")
			iC--;
		var i = 0;
		while (i < iC) {
			document.write("<option value=\"" + aCL[i] + "\""
					+ (b == aCL[i] ? " selected" : "") + ">" + aCL[i + 1]);
			i = i + 2;
		}
	}
	
	
</script>



</head>
<body>
	<form id="frm" name="world" action="/Commfy/RegiAdd.do" method="get">
		<div id="firstsec" align="center">
			<br> <br>
			<a href="/Commfy/jsp/login/register2.jsp">ENGLISH</a> / <a href="/Commfy/jsp/login/register.jsp">KOREAN</a>
			<h3>Wecome to Commfy Planet</h3>
			<br>
			<h1>Register</h1>

			<div id="regi">
				<table>
					<tr>
						<th>account</th>
						
						<td colspan="2">
						
						<input name="account" id="account" type="text" required class="form-group">
						<input type="button" id="idcheck" value="check">
					</tr>

					<tr>
						<th>name</th>
						<td colspan="2"><input name="nickname" type="text" required>
							<input name="usertype" type="text" value="user" readonly
							style="display: none"></td>
					</tr>
					<tr>
						<th>password</th>
						<td colspan="2"><input name="pw" type="password" required></td>
					</tr>
					<tr>
						<th>password check</th>
						<td colspan="2"><input type="password">
						<input type="text" id="pwconfirm" value="re-type" readonly
							style="background: none; border: none; width: 60px;"></td>
					</tr>
					<tr>
						<th>nationality</th>
						
						<td colspan="1"> 
						<select id="iRegion" 
							name=h_area1 style="ime-mode: disabled; width:175px;" />
						<script type="text/javascript">
								DrDw2(
										"DGHJLNS~Select One~AF~Afghanistan~AL~Albania~DZ~Algeria~AS~American Samoa~AD~Andorra~AO~Angola~AI~Anguilla~AQ~Antarctica~AG~Antigua and Barbuda~AR~Argentina~AM~Armenia~AW~Aruba~AC~Ascension Island~AU~Australia~AT~Austria~AZ~Azerbaijan~BS~Bahamas~BH~Bahrain~BD~Bangladesh~BB~Barbados~BY~Belarus~BE~Belgium~BZ~Belize~BJ~Benin~BM~Bermuda~BT~Bhutan~BO~Bolivia~BA~Bosnia and Herzegovina~BW~Botswana~BV~Bouvet Island~BR~Brazil~IO~British Indian Ocean Territory~BN~Brunei~BG~Bulgaria~BF~Burkina Faso~BI~Burundi~KH~Cambodia~CM~Cameroon~CA~Canada~CV~Cape Verde~KY~Cayman Islands~CF~Central African Republic~TD~Chad~CL~Chile~CN~China~CX~Christmas Island~CC~Cocos (Keeling) Islands~CO~Colombia~KM~Comoros~CG~Congo~CD~Congo (DRC)~CK~Cook Islands~CR~Costa Rica~CI~C?e d'Ivoire~HR~Croatia~CU~Cuba~CY~Cyprus~CZ~Czech Republic~DK~Denmark~DJ~Djibouti~DM~Dominica~DO~Dominican Republic~EC~Ecuador~EG~Egypt~SV~El Salvador~GQ~Equatorial Guinea~ER~Eritrea~EE~Estonia~ET~Ethiopia~FK~Falkland Islands (Islas Malvinas)~FO~Faroe Islands~FJ~Fiji Islands~FI~Finland~FR~France~GF~French Guiana~PF~French Polynesia~TF~French Southern and Antarctic Lands~GA~Gabon~GM~Gambia, The~GE~Georgia~DE~Germany~GH~Ghana~GI~Gibraltar~GR~Greece~GL~Greenland~GD~Grenada~GP~Guadeloupe~GU~Guam~GT~Guatemala~GG~Guernsey~GN~Guinea~GW~Guinea-Bissau~GY~Guyana~HT~Haiti~HM~Heard Island and McDonald Islands~HN~Honduras~HK~Hong Kong SAR~HU~Hungary~IS~Iceland~IN~India~ID~Indonesia~IR~Iran~IQ~Iraq~IE~Ireland~IM~Isle of Man~IL~Israel~IT~Italy~JM~Jamaica~JP~Japan~JE~Jersey~JO~Jordan~KZ~Kazakhstan~KE~Kenya~KI~Kiribati~KR~Korea~KW~Kuwait~KG~Kyrgyzstan~LA~Laos~LV~Latvia~LB~Lebanon~LS~Lesotho~LR~Liberia~LY~Libya~LI~Liechtenstein~LT~Lithuania~LU~Luxembourg~MO~Macao SAR~MK~Macedonia, Former Yugoslav Republic of~MG~Madagascar~MW~Malawi~MY~Malaysia~MV~Maldives~ML~Mali~MT~Malta~MH~Marshall Islands~MQ~Martinique~MR~Mauritania~MU~Mauritius~YT~Mayotte~MX~Mexico~FM~Micronesia~MD~Moldova~MC~Monaco~MN~Mongolia~MS~Montserrat~MA~Morocco~MZ~Mozambique~MM~Myanmar~NA~Namibia~NR~Nauru~NP~Nepal~NL~Netherlands~AN~Netherlands Antilles~NC~New Caledonia~NZ~New Zealand~NI~Nicaragua~NE~Niger~NG~Nigeria~NU~Niue~NF~Norfolk Island~KP~North Korea~MP~Northern Mariana Islands~NO~Norway~OM~Oman~PK~Pakistan~PW~Palau~PS~Palestinian Authority~PA~Panama~PG~Papua New Guinea~PY~Paraguay~PE~Peru~PH~Philippines~PN~Pitcairn Islands~PL~Poland~PT~Portugal~PR~Puerto Rico~QA~Qatar~RE~Reunion~RO~Romania~RU~Russia~RW~Rwanda~WS~Samoa~SM~San Marino~ST~S? Tom?and Pr?cipe~SA~Saudi Arabia~SN~Senegal~YU~Serbia and Montenegro~SC~Seychelles~SL~Sierra Leone~SG~Singapore~SK~Slovakia~SI~Slovenia~SB~Solomon Islands~SO~Somalia~ZA~South Africa~GS~South Georgia and the South Sandwich Islands~ES~Spain~LK~Sri Lanka~SH~St. Helena~KN~St. Kitts and Nevis~LC~St. Lucia~PM~St. Pierre and Miquelon~VC~St. Vincent and the Grenadines~SD~Sudan~SR~Suriname~SJ~Svalbard and Jan Mayen~SZ~Swaziland~SE~Sweden~CH~Switzerland~SY~Syria~TW~Taiwan~TJ~Tajikistan~TZ~Tanzania~TH~Thailand~TP~Timor-Leste~TG~Togo~TK~Tokelau~TO~Tonga~TT~Trinidad and Tobago~TA~Tristan da Cunha~TN~Tunisia~TR~Turkey~TM~Turkmenistan~TC~Turks and Caicos Islands~TV~Tuvalu~UG~Uganda~UA~Ukraine~AE~United Arab Emirates~UK~United Kingdom~US~United States~UM~United States Minor Outlying Islands~UY~Uruguay~UZ~Uzbekistan~VU~Vanuatu~VA~Vatican City~VE~Venezuela~VN~Vietnam~VI~Virgin Islands~VG~Virgin Islands, British~WF~Wallis and Futuna~YE~Yemen~ZM~Zambia~ZW~Zimbabwe",
										"KR");
							</script> 
						</select>
						</td>
					</tr>
					<tr>
						<th>gender</th>
						<td colspan=1><input type="radio" name="gender" value="남성">male
							<input type="radio" name="gender" value="여성">female</td>

						<th colspan=1>bloodtype</th>
						<td colspan=1><select name="bloodtype">
								<option>-select-</option>
								<option value="A">A</option>
								<option value="B">B</option>
								<option value="O">O</option>
								<option value="AB">AB</option>
						</select></td>
					</tr>
					<tr>
						<th>birthday</th>
						<td><input name="bdate" type="date"> <input
							type="date" id="currentDate" name="currentDate" readonly
							style="display: none"></td>
					</tr>




				</table>
				<br> <br> <br>
			</div>


		</div>

		<div class="section" align="center">
			<br> <br> <br> <a>N E X T</a>
			<h1>▼</h1>
			<br>
			<h1>personal trait</h1>
			<table id="mbti" style="text-align: center;">
			<br>
				<tr>
					<td colspan=5><input type="radio" id="mbtis" value="a"
						name="mbtis" onchange="ShowHideDiv()"> I know my MBTI.</td>
					<td colspan=5>
						<div id="selmbti" class="selmbti" style="display: none">
							<select name="mbti">
								<option id="선택" value="">==select==</option>
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
						name="mbtis" onchange="ShowHideDiv()"> I don't know my MBTI.</td>
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
			<h1>My Interest</h1>


			<br> <br>

			<jsp:include page="/jsp/login/interests.jsp" />
			<div id='result'>
			<input type="text" id=int name=int readonly style="display: none;"></div>
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
			All done! <input type="submit" value="register" onClick="add()">
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