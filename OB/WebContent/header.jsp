<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>탬플릿</title>
<style>
body {
	padding: 0;
	margin: 0;
}

#logo { /* 로고크기에 따라 여백따로 설정 */
	height: 110px;
	width: 250px;
}

.fixhead {
	margin: 0;
	position: fixed;
	width: 100%;
	background-color: #292929;
	padding: 0;
	width: 100%;
}

.menubar {
	float: right;
	border: none;
	border: 0px;
	margin: 0px;
	padding: 0px;
	font: 67.5% "Lucida Sans Unicode", "Bitstream Vera Sans",
		"Trebuchet Unicode MS", "Lucida Grande", Verdana, Helvetica,
		sans-serif;
	font-size: 14px;
	font-weight: bold;
}

.menubar ul {
	background: #292929;
	height: 50px;
	list-style: none;
	margin: 0;
	padding: 0;
}

.menubar li {
	float: left;
	padding: 0px;
}

.menubar li a {
	background: #292929;
	color: #cccccc;
	display: block;
	font-weight: normal;
	line-height: 50px;
	margin: 0px;
	padding: 0px 25px;
	text-align: center;
	text-decoration: none;
}

.menubar li a:hover, .menubar ul li:hover a {
	background: rgb(71, 71, 71);
	color: #FFFFFF;
	text-decoration: none;
}

.menubar li ul {
	background: #292929;
	display: none;
	/* 평상시에는 드랍메뉴가 안보이게 하기 */
	height: auto;
	padding: 0px;
	margin: 0px;
	border: 0px;
	position: absolute;
	width: 200px;
	z-index: 200;
	/*top:1em;
/*left:0;*/
}

.menubar li:hover ul {
	display: block;
	/* 마우스 커서 올리면 드랍메뉴 보이게 하기 */
}

.menubar li li {
	background: #292929;
	display: block;
	float: none;
	margin: 0px;
	padding: 0px;
	width: 200px;
}

.menubar li:hover li a {
	background: none;
}

.menubar li ul a {
	display: block;
	height: 50px;
	font-size: 12px;
	font-style: normal;
	margin: 0px;
	padding: 0px 10px 0px 15px;
	text-align: left;
}

.menubar li ul a:hover, .menubar li ul li:hover a {
	background: rgb(71, 71, 71);
	border: 0px;
	color: #ffffff;
	text-decoration: none;
}
</style>
</head>

<body>
	<div class="fixhead">
		<a href="controller?type=main"><img id="logo"
			src="imgs/bitcamp_logo.png" alt="회사로고"></a>
		<div class="menubar">
			<ul>
				<li><a href="#">TEST#</a></li>
				<li><a href="#">TEST#</a></li>
				<li><a href="controller?type=location">지역</a></li>
				<li><a href="controller?type=event">이벤트</a></li>
				<li><a href="#" id="current">더보기</a>
					<ul>
						<li><a href="controller?type=notice">공지사항</a></li>
						<li><a href="controller?type=question">자주 묻는 질문</a></li>
						<li><a href="controller?type=premium">프리미엄 후기</a></li>
						<li><a href="controller?type=agree">약관 및 동의사항</a></li>
					</ul></li>
				<li><a href="controller?type=login">로그인</a></li>

			</ul>
		</div>
	</div>
</html>
