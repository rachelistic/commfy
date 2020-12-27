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

.greeting {
	padding-top:20%;
	padding-left:5%;
	text-align: center;
}

.col-4 {
	position: relative;
	float: left;
	width: 30%;
}

}
.col-6 {
	position: relative;
	float: left;
	width: 70%;
	align-content: center;
}

.divimg {
	
	
}

img {
	width: 60%;
	height:auto;
}

input {
	height: 1.5rem;
}

.login-page {
	width: 300px;
	padding: 8% 0 0;
	margin: auto;
}

.form {
	position: relative;
	z-index: 1;
	max-width: 360px;
	margin: 0 auto 100px;
	text-align: center;
}

.form input {
	font-family: "Roboto", sans-serif;
	outline: 0;
	background: #f2f2f2;
	width: 100%;
	border: 0;
	margin: 0 0 15px;
	padding: 15px;
	box-sizing: border-box;
	font-size: 14px;
}

.form button {
	font-family: "Roboto", sans-serif;
	text-transform: uppercase;
	outline: 0;
	background: DarkSlateGrey;
	width: 100%;
	border: 0;
	padding: 15px;
	color: #FFFFFF;
	font-size: 14px;
	-webkit-transition: all 0.3 ease;
	transition: all 0.3 ease;
	cursor: pointer;
}

.form button:hover, .form button:active, .form button:focus {
	background: #43A047;
}

.form .message {
	margin: 15px 0 0;
	color: white;
	font-size: 12px;
}

.form .message a {
	color: #black;
	text-decoration: none;
}

.form .register-form {
	display: none;
}

.container {
	position: relative;
	z-index: 1;
	max-width: 300px;
	margin: 0 auto;
}

.container:before, .container:after {
	content: "";
	display: block;
	clear: both;
}

.container .info {
	margin: 50px auto;
	text-align: center;
}

.container .info h1 {
	margin: 0 0 15px;
	padding: 0;
	font-size: 36px;
	font-weight: 300;
	color: #1a1a1a;
}

.container .info span {
	color: #4d4d4d;
	font-size: 12px;
}

.container .info span a {
	color: #000000;
	text-decoration: none;
}

.container .info span .fa {
	color: #EF3B3A;
}

body {
	font-family: "Roboto", sans-serif;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
}
</style>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="col-12">
	<div class="col-4">
		<div class="greeting">
			<h1>컴피플래닛에 오신 것을 환영합니다.</h1>

			<h3>
				컴피플래닛에서는 마음 맞는 사람들끼리 모여 마을을 이루고 살아가고 있습니다. <br>마음 가장 편안한 커뮤니티를
				만나보세요.
			</h3>


			<div class="login-page">
				<div class="form">
					<form class="register-form">
						<input type="text" placeholder="name" /> <input type="password"
							placeholder="password" /> <input type="text"
							placeholder="email address" />
						<button>create</button>
						<p class="message">
							Already registered? <a href="#">Sign In</a>
						</p>
					</form>
					<form class="login-form">
						<input type="text" placeholder="username" /> <input
							type="password" placeholder="password" />
						<button>login</button>
						<p class="message">
							Not registered? <a href="#">Create an account</a>
						</p>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="col-6">
		<div class="img" align="center" >
			<img src="map.jpg">
		</div>
	</div>
</div>
</body>
</html>