<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<!-- <link href="/Commfy/css/menu.css" rel="stylesheet"> -->
<style>
body {
	margin: 0;
	padding: 0;
	width: 100%;
	background-color: #81b2b7;
}


nav {
	height: 100px;
	position: relative;
	width: 100%;
	list-style: none;
	float: left;
}

nav>ul>li {
	list-style: none;
	font-size: 35px;
	font-weight:bold;
	display: inline;
	width:100px;
}

a:visited {text-decoration: none;} 

nav>ul>li a {
text-decoration: none; 
}
nav>ul>li a:visited {
text-decoration: none;color:black;
}
nav>ul>li a:hover {
text-decoration: none;
}
nav>ul>li>ul>li {
width:110px;
background:grey;
float:left;
font-size:15px;
}

nav ul {margin:10px;padding:0;}

#menu {
	position:relative;
	color:white;
	float: right;
	right:20px;
}

nav ul li ul {opacity:0;
list-style:none;
width:80px;

}

nav li:hover ul{
	opacity: 1;
	float:right;
}

nav li ul a {
	color:white;
	padding-left:10px;
	padding-right:10px;
	text-decoration: none;
	
}
nav li ul a:visited {
	color:white;
	padding-left:10px;
	padding-right:10px;
	text-decoration: none;
	
}

nav li ul li:hover{
background:#EDD3BC;
color:white;
}


/* nav li ul a:hover {
background:black;
color:white;

}  */

</style>
<head>
<meta charset="UTF-8">
<title>menu</title>
</head>
<body>

	<nav>
		<ul>
			<li><a href="/Commfy/jsp/login/welcome.jsp">COMMFY PLANET</a></li>
			<li id="menu"><a>MENU</a>
				<ul>
					<li><a href="#">내정보</a></li>
					<li><a>게시판</a></li>
					<li><a>매칭 보기</a></li>
					<li><a href="/Commfy/RegiList.do">회원정보관리</a></li>
					<li><a>MBIT관리</a></li>
				</ul>
			</li>
		</ul>
	</nav>

	<!-- 

	<nav>
		<ul id="navi">
		<li><a style="float: left;font-size: 3rem;font-weight: 1000;">COMMFY PLANET</a></li>
		
		
						
				<li><a style="color: white; float: right; font-size: 3rem;
								font-weight: 1000;">MENU</a>
					<ul>
						<li><a href="/Commfy/RegiList.do">회원정보관리</a></li>
						<li><a href="#">mbti관리</a></li>
					</ul>
				</li>
			
			</ul>
		
		
	</nav> -->



	<%-- <ul id="nav">
		<c:if test="${id eq null || auth eq null}">
			<li><a href="/Commfy/jsp/login.jsp">로그인</a></li>
		</c:if>
		<c:if test="${id ne null && auth ne null }">
			<li><a href="#">마이페이지</a>		</li>			
		</c:if>
		<li><a href="#">메인메뉴2</a>
			<ul>
				<li><a href="#">2-1</a></li>
				<li><a href="#">2-2</a></li>
			</ul>
		</li>
		<li><a href="#">회원가입</a></li>
		<c:if test="${id ne null && auth eq 'user' }">
			<li><a href="/Member/NoticeList.do">공지사항</a></li>
		</c:if>
		<li><a href="/Member/BorderList.do">자유게시판</a></li>
		<c:if test="${auth eq 'admin' }">
			<li><a href="#">기본정보관리</a>
				<ul>
					<li><a href="/Member/MemberList.do">회원관리</a></li>
					<li><a href="/Member/NoticeList.do">공지사항관리</a></li>
					<li><a href="#">3-3</a></li>
					<li><a href="#">3-4</a></li>
					<li><a href="#">3-5</a></li>
					<li><a href="#">3-6</a></li>
				</ul>
			</li>
		</c:if>
		<c:if test="${id ne null && auth ne null }">
			<li><a href="/Member/Logout.do">로그아웃</a></li>
		</c:if>
	</ul> --%>

</body>
<!-- jstl 은 ,, ojdbc디비 연결용 -->
</html>

