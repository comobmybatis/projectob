<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>CSS Template</title>
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
	background-color: #292929;  /* #666 */
	padding: 100px;   /* --  */
	text-align: center;
	font-size: 35px;
	color: white;
}

/* Create two columns/boxes that floats next to each other */
nav {
	float: left;
	width: 30%;
	height: 300px; /* only for demonstration, should be removed */
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
	width: 70%;
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
  <h2>나랑놀자</h2>
</header>
<!-- -----------------------------------------------------------------  여기까지 살리고 밑에서 부터  내용 만드시면됩니다 -->
<!-- 내용 쓰는곳 -->
<jsp:include page="body.jsp"></jsp:include>



<!-- -----------------------------------------------------------------  ------------------------ -->
<footer>
  <jsp:include page="footer.jsp"></jsp:include>
</footer>

</body>
</html>
