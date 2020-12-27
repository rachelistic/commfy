<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<div class="col-12">
____ 님 환영합니다.
오늘 _____ 마을에서는 무슨일이 일어나고 있을까요?
마을 바로가기<br>
오늘 마을에서 뜨는 검색어 ____<br>
관심있는 태그에 새 피드가 있어요 <br>
태그별 피드 보기<br>

마을이 자라나고 있는 모습 실시간 보여줌

</div>
<div class="col-12">
	
	<div class="map">
		<div class="img" align="center" >
			<img src="map.jpg">
		</div>
	</div>
</div>
</body>
</html>