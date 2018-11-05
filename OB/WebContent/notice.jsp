<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>NOTICE.JSP</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<meta charset="utf-8">
<style>
nav a {
	text-decoration: none;
}

#li1 {
	font-size: 2em;
	font-weight: bold;
}
.cate {
	border: 1px solid #006F94;
	background-color: #DCEEF0;
	color: #006699;
	font-weight: 500;
	text-align: center;
	width: 100px;
	float: left;
	padding-top: 10px;
	height: 30px;
	margin-right: 1px;
	cursor: hand;
}

.over {
	padding-top: 5px;
	padding-bottom: 10px;
	background-color: #57AFBC;
	color: #EFEFEF;
	font-weight: 500;
	height: 35px;
}
</style>
<script>
	var actAns = null;
	var actQue = null;
	showFaq = function() {
		if (actAns != null)
			actAns.style.display = "inline";
		if (actQue != null)
			actQue.style.backgroundColor = '#EFEFEF';
	}

	hideFaq = function() {
		if (actAns != null)
			actAns.style.display = "none";
		if (actQue != null)
			actQue.style.backgroundColor = '#FFFFFF';
		actAns = null;
		actQue = null;
	}

	toggleFaq = function(i) {
		var oTrAns = document.getElementById("oTr_FaqAns_" + i);
		var oTrQue = document.getElementById("oTr_FaqQue_" + i);
		imax = oTrAns.length;
		if (oTrAns == actAns) {
			hideFaq();
		} else {
			hideFaq();
			actAns = oTrAns;
			actQue = oTrQue;
			showFaq();
		}
	}
</script>
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>
	<header>
		<h2>탬플릿2</h2>
	</header>
	<section>
		<nav>
			<ul>
				<li id="li1">공지사항</li>
				<li><a href="controller?type=moreQue">자주 묻는 질문</a></li>
				<li><a href="controller?type=que">문의사항</a></li>
				<li><a href="controller?type=premium">프리미엄 후기</a></li>
				<li><a href="controller?type=agree">약관 및 동의사항</a></li>
			</ul>
		</nav>

		<article>
			<table width="674" border="0" cellspacing="0" cellpadding="3">

				<tr id="oTr_FaqQue_0">
					<td width="654" class="bottomline" onClick="toggleFaq(0)"
						style="cursor: hand;">제목입니다</td>
				</tr>
				<tr id="oTr_FaqAns_0" style="display: none;">
					<td colspan="2" bgcolor="#f8f8f8" class="bottomline pad10">답변하나
						입니다.</td>
				</tr>

				<tr id="oTr_FaqQue_1">
					<td width="654" class="bottomline" onClick="toggleFaq(1)"
						style="cursor: hand;">제목입니다</td>
				</tr>
				<tr id="oTr_FaqAns_1" style="display: none;">
					<td colspan="2" bgcolor="#f8f8f8" class="bottomline pad10">답변하나
						입니다.</td>
				</tr>

				<tr id="oTr_FaqQue_2">
					<td width="654" class="bottomline" onClick="toggleFaq(2)"
						style="cursor: hand;">제목입니다</td>
				</tr>
				<tr id="oTr_FaqAns_2" style="display: none;">
					<td colspan="2" bgcolor="#f8f8f8" class="bottomline pad10">답변하나
						입니다.</td>
				</tr>

				<tr id="oTr_FaqQue_3">
					<td width="654" class="bottomline" onClick="toggleFaq(3)"
						style="cursor: hand;">제목입니다</td>
				</tr>
				<tr id="oTr_FaqAns_3" style="display: none;">
					<td colspan="2" bgcolor="#f8f8f8" class="bottomline pad10">답변하나
						입니다.</td>
				</tr>
			</table>
		</article>
	</section>

	<!-- -----------------------------------------------------------------  ------------------------ -->
	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>

</body>
</html>
