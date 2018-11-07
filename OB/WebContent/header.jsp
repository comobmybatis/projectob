<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HEADER</title>
<link href="./css/plus.css" rel="stylesheet" type="text/css">
</head>

<body>
	<div class="fixhead">
		<a href="controller?type=main"><img id="logo"
			src="imgs/bitcamp_logo.png" alt="회사로고"></a>
		<div class="menubar">
			<ul>
				<li><a href="controller?type=test1">TEST1</a></li>
				<li><a href="controller?type=test2">TEST2</a></li>
				<li><a href="controller?type=location">지역</a></li>
				<li><a href="controller?type=event">이벤트</a></li>
				<li><a href="#" id="current">더보기</a>
					<ul>
						<li><a href="controller?type=notice&board_type=2">공지사항</a></li>
						<li><a href="controller?type=moreQue">자주 묻는 질문</a></li>
						<li><a href="controller?type=que">문의사항</a></li>
						<li><a href="controller?type=premium">프리미엄 후기</a></li>
						<li><a href="controller?type=agree">약관 및 동의사항</a></li>
					</ul></li>
				<li><a href="controller?type=login">로그인</a></li>

			</ul>
		</div>
	</div>
</html>
