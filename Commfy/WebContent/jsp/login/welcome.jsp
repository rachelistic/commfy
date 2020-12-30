<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/jsp/menu.jsp" />
<!DOCTYPE html>
<html>

<style>
body {
	float: left;
	display: inline;
}

.col-4 {
	position: relative;
	float: left;
	width: 30%;
}

}
.map {
	position: relative;
	float: left;
	width: 100%;
	align-content: center;
}

img {
	width: auto;
	height: 80vh;
	padding: 20px;
}

body {
	font-family: "Roboto", sans-serif;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
}
</style>

<head>
<meta charset="UTF-8">
<title>Welcome</title>

</head>
<body>


	<div class="col-12" align="center">

		<c:if test="${usertype ne null}">

			<h2>${usertype} ${nickname}님 환영합니다.</h2>
			<h1>당신은 ${isla}의 <br>${town}입니다.</h1>
			<h2><a href="#">우리마을 소식</a> <a href="#">우리섬 소식</a></h2>
			<br>
			<br>

		</c:if>
		<!-- c:if는 엘즈가 없음  -->
		<c:if test="${usertype eq null && vo.account ne null}">
			<br>
			<h1>입력하신 [${vo.account}]가 존재하지않거나</h1>
			<h1>패스워드가 일치하지 않습니다.</h1>
			<a href="/Commfy/jsp/login.jsp">로그인 페이지로</a>
			<div></div>
		</c:if>
		<c:if test="${uaccount eq null}">
			<h1>환영합니다. 로그인 해주세요</h1>
			<a href="/Commfy/jsp/login/login.jsp">로그인 페이지로</a>
		</c:if>
		


	</div>
	<div class="col-12">

		<div class="map">
			<div class="img" align="center">
				<img src="/Commfy/jsp/login/map.jpg" width="50%">
			</div>
		</div>
	</div>
</body>



</html>