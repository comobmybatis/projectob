<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>noticeWrite.jsp</title>
<script>
	function sendData() {
		var firstForm = document.forms[0];
		for (var i = 0; i < firstForm.elements.lengrh; i++) {
			if (firstForm.elements[i].value.trim() == "") {
				if (i == 3)
					continue;
				alert(firstForm.elements[i].title + " 입력하세요.");
				firstForm.element[i].focus();
				return;
			}
		}
		firstForm.submit();
	}

	function notice_go() {
		location.href = "controller?type=notice&board_type=2";
	}
</script>
</head>
<body>
	<div id="write">
		<form action="controller?type=noticeWriteOk&board_type=2"
			method="POST">
			<table>
				<caption>공지사항 작성하기</caption>
				<tbody>
					<tr>
						<th>제목</th>
						<td><input type="text" name="title" size="45" title="제목">
						</td>
					</tr>
					<tr>
						<th>작성자</th>
						<td>관리자(admin)</td>
					</tr>
					<tr>
						<th>내용</th>
						<td><textarea name="content" rows="8" cols="50" title="내용"></textarea>
						</td>
					</tr>
					<tr>
						<td colspan="2"><input type="button" value="저 장"
							onclick="sendData()"> <input type="reset" value="다시작성">
							<input type="button" value="돌아가기" onclick="notice_go()">
							<input type="hidden" name="write_chk" value="chk">
						</td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
</body>
</html>