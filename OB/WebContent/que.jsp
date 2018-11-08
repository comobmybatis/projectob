<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>QUESTION.JSP</title>
<meta charset="utf-8">
	<style>
		nav a {
			text-decoration: none;
		}
		#li3 {
			font-size: 2em;
			font-weight: bold;
		}
	</style>
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>
	<header>
		<h2>탬플릿2</h2>
	</header>
	<section>
		<nav>
			<ul>
				<li><a href="controller?type=notice&board_type=1">공지사항</a></li>
				<li><a href="controller?type=moreQue">자주 묻는 질문</a></li>
				<li id="li3">문의사항</li>
				<li><a href="controller?type=premium">프리미엄 후기</a></li>
				<li><a href="controller?type=agree">약관 및 동의사항</a></li>
			</ul>
		</nav>

		<article>
			<h1>가나다라마바사</h1>
			<p>P 태그로 나눈 구역1.</p>
			<p>p 태그로 나눈 구역2</p>
		</article>
	</section>



	<!-- -----------------------------------------------------------------  ------------------------ -->
	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>

</body>
</html>
