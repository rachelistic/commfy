<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/jsp/menu.jsp" />
<!DOCTYPE html>
<html>
<link
	href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css"
	rel="stylesheet">
<style>
body{float:left; position:relative; display:inline;}
.greeting {
	padding-top: 15%;
}

.col-4 {
	width: 40%; position:relative;
}

.col-6 {
	width: 30%; position:relative;
}

div img {
	width: 50%;
}
input{height:1.5rem;}
</style>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<br>
	<div class="col-4">
		<div class="greeting">
			<h1>
				컴피플래닛에<br> 오신 것을 환영합니다.
			</h1>
			<br>
			<h3>
				컴피플래닛에서는 마음 맞는 사람들끼리 모여 마을을 이루고 살아가고 있습니다. <br>내게 가장 편안한 커뮤니티를
				만나보세요.
				</h2>

				<br>

				<div class="login-box well">
					<form accept-charset="UTF-8" role="form" method="post" action="">

						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-user"></i></span>
							<input type="text" id="userid" value=''
								placeholder="E-mail을 입력하세요" class="form-control" />
						</div>
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-lock"></i></span>
							<input type="password" id="password" value=''
								placeholder="비밀번호를 입력하세요" class="form-control" />
						</div>
						<button type="submit" id="login-submit"
							class="btn btn-default btn-block" />
						로그인
						</button>
						<span class='text-center'><a href="" class="text-sm">비밀번호
								찾기</a></span>
						<div class="form-group">
							<a href="registerForm.php" class="btn btn-default btn-block">
								회원가입</a>
						</div>
					</form>
				</div>
		</div>
	</div>
	
		<img src="map.jpg" style="width:50%;">
	
</body>
</html>