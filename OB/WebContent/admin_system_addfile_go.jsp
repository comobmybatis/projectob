<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	function sendData() {
		var firstForm = document.forms[0];
		for (var i=0; i<firstForm.elements.length; i++) {
			if (firstForm.elements[i].value.trim() == "") {
				if (i == 3) continue; //파일항목
				alert(firstForm.elements[i].title 
						+ " 입력하세요");
				firstForm.elements[i].focus();
				return;
			}
		}
		firstForm.submit();
	}
	function list_go() {
		location.href = "controller?type=admin_add_file";
	}
</script>
</head>
<body>
<!-- 	ID BOARD_ID FILENAME SAVED_FILENAME FILESIZE -->
	<div id="add file">
		<form action="controller?type=admin_add_file" method="post"
			enctype="multipart/form-data">
			
			----등록할수 있는---- 
			<table>
				<caption>파일첨부</caption>
				<tbody>
				
					<tr>
						<th>BOARD_ID</th>
						<td><input type="hidden" name= ${addfile.id } >
						</td>
					</tr>
					
						
					<tr>
						<th>첨부파일</th>
						<td><input type="file" name="filename"></td>
					</tr>
					
					<tr>
						<td colspan="2"><input type="button" value="저장"
							onclick="sendData()"> <input type="reset" value="다시작성">
							<input type="button" value="목록" onclick="list_go()"></td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>

</body>
</html>






