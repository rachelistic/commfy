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
	height:80vh;
	padding:20px;
	
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
			
			<h1>${nickname}님 환영합니다.</h1>
<h1>당신은 ${isla} 섬의 ${mbtitown} 마을 ${usertype} 입니다.</h1>
오늘은 무슨일이 일어나고 있을까요?
<br>${mbtitown}마을 소식 <a href="#">바로가기</a>
<br> ${isla} 섬 소식 <a href="#">바로가기</a><br><br>
관심있는 태그에 새 피드가 있어요 <br>
태그별 피드 보기<br>
		</c:if>
		<!-- c:if는 엘즈가 없음  -->
		<c:if test="${usertype eq null}">
			<br>
			<h1>${vo.account}가존재하지 않거나</h1>
			<h1>패스워드가 일치하지 않습니다.</h1>
			<a href="jsp/login.jsp">로그인 페이지로</a>
			<div></div>
		</c:if>

</div>
<div class="col-12">
	
	<div class="map">
		<div class="img" align="center" >
			<img src="/Commfy/jsp/login/map.jpg" width="50%">
		</div>
	</div>
</div>
</body>
</html>