<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>이벤트 관리자 모드</title>
<script type="text/javascript">
	function event_add_go() {
		document.frm.action = "controller?type=event_add_go";
		document.frm.submit();
	}

	function event_modify_go() {
		document.frm.action = "controller?type=event_modify_go";
		document.frm.submit();
	}
	function event_delete_go() {
		document.frm.action = "controller?type=event_delete_go";
		document.frm.submit();
	}
	function page_back() {
		document.frm.action = "history.back();"
		document.frm.submit();
	}
</script>
</head>
<body>
	<form method="post" name="frm">
		<input type="button" value="이벤트  추가" onclick="event_add_go()">
		<input type="button" value="이벤트 수정" onclick="event_modify_go()">
		<input type="button" value="이벤트 삭제" onclick="event_delete_go()">
		<input type="button" value="목록" onclick="page_back()">
	</form>

</body>
</html>