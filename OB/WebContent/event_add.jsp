<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>이벤트 추가 페이지입니다.</title>
</head>
<script>
	function save_go(frm) {
		//frm.action = "write_ok.jsp";
		frm.action = "controller";
		frm.submit();
	}
</script>
<body>
<h2>이벤트: 추가 페이지</h2>
<hr>
<p><a href="controller?type=main">메인으로 가기</a></p>
<form method="post">
<table>
		<tbody>
		<tr>
				<th>ID</th>
				<td>
					<input type="text" name="id" readonly> 자동부여 입력 x
				</td>
			</tr>
			<tr>
				<th>USER_ID</th>
				<td>
					<input type="text" name="user_id"> 관리자 1
				</td>
			</tr>
			<tr>
				<th>BOARD_TYPE</th>
				<td>
				<input type="radio" name="board_type" value="0">구분없음
				<input type="radio" name="board_type" value="1">공지사항
			<input type="radio" name="board_type" value="2">이벤트
			<input type="radio" name="board_type" value="3">방명록
			<input type="radio" name="board_type" value="4">프리미엄후기
<!-- 			(0:잘못된값/1:공지사항/2:이벤트/3:방명록/4:ex-프리미엄후기 ) -->
				</td>
			</tr>
			<tr>
				<th>TITLE</th>
				<td>
					<input type="text" name="title">
				</td>
			</tr>
			<tr>
				<th>CONTENT</th>
				<td colspan="2">
					<textarea name="content" rows="5" cols="60"></textarea>
				</td>
			</tr>
				<tr>
				<th>WRITE_DATE</th>
				<td><input type="text" name="write_date" value="작성일(SYSDATE)"></td>
			</tr>
				<tr>
				<th>READ_COUNT</th>
				<td><input type="text" name="read_count" value="0">초기값 0</td>
			</tr>		
		</tbody>
		<tfoot>
			<tr>
				<td colspan="2">
					<input type="button" value="저 장"
						onclick="save_go(this.form)">
					<input type="reset" value="초기화">
					
					<input type="hidden" name="type" value="event_add_go">
					<!-- write요청 구분값 -->
					<input type="hidden" name="write_chk" value="chk">
				</td>
			</tr>
		</tfoot>	

</table>
</form>
</body>
</html>



<!-- ID -->
<!-- USER_ID -->
<!-- TYPE -->
<!-- TITLE -->
<!-- CONTENT -->
<!-- WRITE_DATE -->
<!-- READ_COUNT -->