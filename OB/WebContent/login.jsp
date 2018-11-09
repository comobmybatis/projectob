<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login 페이지 입니다.</title>

<% 
 String id = request.getParameter("id");
%>
<script>

	function login_go(frm) {
		/* alert("id: -" + frm.id.value+"-"); */
		if(frm.id.value=="") {
			alert("ID를 입력하세요.");
			frm.id.focus();
			return false;
		} else if(frm.pwd.value=="") {
			alert("PASSWORD를 입력하세요.");
			frm.pwd.focus();
			return false;
		} else{
			frm.action = "controller?type=loginCheck";
			frm.submit();
		}
	}

	function pwd_chk() {
		var inputPwd = document.myForm.pwd.value;
		var dbPwd = "${uservo.password}";
		if (inputPwd != dbPwd) {
			alert("비밀번호가 일치하지 않습니다.");
			document.myForm.pwd.value="";
			document.myForm.pwd.focus();
			return false;
		} else if(inputPwd == dbPwd) {
			document.frm.action = "controller?type=main";
			document.frm.submit();
		} else if(frm.id.value=="") {
			alert("ID를 입력하세요.");
			frm.id.focus();
			return false;
		} else if(frm.pwd.value=="") {
			alert("PASSWORD를 입력하세요.");
			frm.pwd.focus();
			return false;
		} else if (frm.id.value != "" || frm.pwd.value != "") {
			frm.action = "controller?type=loginCheck";
			frm.submit();
		}
	}
	
	function join_go(frm) {
		frm.action = "controller?type=join"
		frm.submit();
	}
</script>
<title>login.jsp</title>
<meta charset="utf-8">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
	<header>
	<h2>로그인</h2>
	</header>
	<div class ="login">
		<form method= "post" name="myForm">
			<table>
			<tbody>
				<tr>
					<th>ID</th>
					<td>
						<input type="text" name="id">
					</td>
				</tr>
				<tr>
					<th>PASSWORD</th>
					<td>
						<input type="password" name="pwd">
					</td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="2">
						<input type = "button" value = "LOGIN" onclick = "pwd_chk(this.form)">
						<input type = "button" value = "JOIN" onclick = "join_go(this.form)">	
					</td>
				</tr>
			</tfoot>	
			</table>
		</form>        

</div>
<jsp:include page="footer.jsp"/>
</body>
</html>