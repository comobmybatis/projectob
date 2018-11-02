<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>head.jsp</title>
<link href="./css/header.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div class="header-wrap">
	<div id="header">
		<a href="controller?type=main"><img id="logo" src="imgs/logo.jpg" alt="회사로고"></a>
	</div>
	<div id="menu">
		<ul>
			<li><a href="#">menu1</a></li>
			<li><a href="#">menu2</a></li>
			<li><a href="controller?type=location">지역</a></li>
			<li><a href="controller?type=event">이벤트</a></li>
		  	<li class="dropdown">
		  		<a class="dropbtn">더보기</a>
		  		<div class="dropdown-content">
		  			<a href="controller?type=notice">공지사항</a>
		  			<a href="controller?type=question">자주 묻는 질문</a>
		  			<a href="controller?type=premium">프리미엄 후기</a>
		  			<a href="controller?type=agree">약관 및 동의사항</a>
		  		</div>
		  	</li>
			<li><a href="controller?type=login">로그인</a></li>
		</ul>
	</div>
	</div>

</body>
</html>