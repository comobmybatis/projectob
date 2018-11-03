<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>event.jsp</title>
<meta charset="utf-8">
<style>
* {
	box-sizing: border-box;
}

body {
	font-family: Arial, Helvetica, sans-serif;
}

/* Style the header */
header {
	background-color: #292929; /* #666 */
	padding: 100px; /* --  */
	text-align: center;
	font-size: 35px;
	color: white;
}

/* Create two columns/boxes that floats next to each other */
nav {
	float: left;
	width: 15%;
	height: 400px; /* only for demonstration, should be removed */
	background: #ccc;
	padding: 20px;
}

/* Style the list inside the menu */
nav ul {
	list-style-type: none;
	padding: 0;
}

article {
	float: left;
	padding: 20px;
	width: 85%;
	background-color: #f1f1f1;
	height: 300px; /* only for demonstration, should be removed */
}

/* Clear floats after the columns */
section:after {
	content: "";
	display: table;
	clear: both;
}

/****** Style the footer -->css 적용 *********/
/**<link href="./css/footer.css" rel="stylesheet" type="text/css">**/
/* Responsive layout - makes the two columns/boxes stack on top of each other instead of next to each other, on small screens */
@media ( max-width : 600px) {
	nav, article {
		width: 100%;
		height: auto;
	}
}
</style>
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>
	<header>
		<h2>EVENT게시판</h2>
	</header>
	<!-- -----------------------------------------------------------------  여기까지 살리고 밑에서 부터  내용 만드시면됩니다 -->
	<!-- 내용 쓰는곳 -->

	<section>
		<nav>
			<ul>
				<li><a href="#">영역1</a></li>
				<li><a href="#">영역2</a></li>
				<li><a href="#">영역3</a></li>
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
