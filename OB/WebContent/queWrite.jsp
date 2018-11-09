<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>queWrite.jsp</title>
<script>
function sendData() {
	var pwd1 = document.myForm.pwd.value;
	var pwd2 = "${uservo.password}";
	if (pwd1 != pwd2) {
		alert("비밀번호가 일치하지 않습니다.");
		document.myForm.pwd.value="";
		document.myForm.pwd.focus();
		return false;
	} else {
		document.frm.action = "controller?type=queWrite&board_type=3";
		document.frm.submit();
	}
}
	function que_go() {
		location.href = "controller?type=que&board_type=3";
	}

</script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<header>
		<h2>문의사항</h2>
	</header>
	<section>
		<nav>
			<ul>
				<li><a href="controller?type=notice&board_type=1">공지사항</a></li>
				<li><a href="controller?type=moreQue">자주 묻는 질문</a></li>
				<li id="li3">문의사항</li>
				<li><a href="controller?type=premium&board_type=4">프리미엄 후기</a></li>
				<li><a href="controller?type=agree">약관 및 동의사항</a></li>
			</ul>
		</nav>

		<article>
			<div id="write">
				<form method="POST" name="myForm">
					<table border="1">
						<caption>문의사항 작성하기</caption>
						<tbody>
							<tr>
								<th>작성자</th>
								<td>
									${uservo.nickname}
								</td>
							</tr>
							<tr>
								<th>비밀번호</th>
								<td>
									<input type="password" name="pwd" placeholder="비밀번호를 입력해주세요">
								</td>
							</tr>
							<tr>
								<th>전화번호</th>
								<td>
									<input type="text" name="phone" value="${uservo.tel}">
								</td>
							</tr>
							<tr>
								<th>이메일</th>
								<td>
									<input type="text" name="email" value="${uservo.email}">(예:mail@mail.co.kr)
								</td>
							</tr>
							<tr>
								<th>내용</th>
								<td><textarea name="content" rows="8" cols="50" title="내용"></textarea>
								</td>
							</tr>
							<tr>
								<td colspan="2">
								<input type="button" value="저 장" onclick="sendData()"> 
								<input type="reset" value="다시작성">
								<input type="button" value="돌아가기" onclick="que_go()">
								<input type="hidden" name="write_chk" value="chk"> 
								</td>
							</tr>
						</tbody>
					</table>
				</form>
			</div>
		</article>
	</section>
	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
</body>
</html>