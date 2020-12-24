<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<link href="/Commfy/css/menu.css" rel="stylesheet">
<style>
body {
	margin: 0;
	padding: 0;
	width: 100%;
	background-color: #81b2b7;
}

nav {
	height: 60px;
	margin: 10px;
	position: relative;
	width: 97%;
	
	left: 1%;
}
</style>
<head>
<meta charset="UTF-8">
<title>menu</title>
</head>
<body>
	<nav>
		<a style="float: left;font-size: 3rem;font-weight: 1000;">COMMFY PLANET</a>
		<div id="menu"  style="float: right;">
			<ul id="navi">
				<li><a style="color: white; float: right;font-size: 3rem;
								font-weight: 1000;">MENU</a>
					<ul>
						<li><a href="/Commfy/RegiList.do">회원정보관리</a></li>
						<li><a href="#">mbti관리</a></li>
					</ul></li>
			</ul>
		</div>
	</nav>



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

