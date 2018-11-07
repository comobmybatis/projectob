<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>join 페이지입니다</title>
<script>
	function join_go(frm) {
		/* if(frm.value.trim() == "") {
			alert("입력되지않은 항목이 있습니다.");
		return false;	
		} else{	
		frm.action = "controller?type=joincheck";
		frm.submit;	
		return false;
		} */
		alert("정상처리 되었습니다.");
		alert("입력한 아이디  : " + frm.account.value);
		frm.action = "controller?type=joincheck"; /* 형 이제 조인체크 커멘드로 가지니깐 맵퍼에 insert문 치시면 입력될거에요 */
		frm.submit();		
	}
</script>
</head>

<body>
<jsp:include page="header.jsp"></jsp:include>
	<header>
	<h2>회원가입</h2>
	</header>
	<div id="join">
	<form method = "post">
	<h3>이용약관</h3>
	<!-- <textarea rows="20" cols="50">가. 수집하는 개인정보의 항목첫째, 회사는 회원가 입, 원활한 고객상담, 각종 서비스의 제공을 위해 최초 회원가입 당시 아래와 같은 최소한의 개인정보를 필수항목으로 수집하고 있습니다.
	회원가입
	- 이름, 생년월일, 성별, 아이디, 비밀번호, 별명, 연락처(메일주소, 휴대폰 번호 중 선택), 가입인증정보
	만14세 미만 아동 회원가입 
	- 이름, 생년월일, 성별, 법정대리인 정보, 아이디, 비밀번호, 연락처 (메일주소, 휴대폰 번호 중 선택), 가입인증정보
	단체아이디 회원가입 
	- 단체아이디, 회사명, 대표자명, 대표 전화번호, 대표 이메일 주소, 단체주소, 관리자 아이디, 관리자 연락처, 관리자 부서/직위
	- 선택항목 : 대표 홈페이지, 대표 팩스번호
	둘째, 서비스 이용과정이나 사업처리 과정에서 아래와 같은 정보들이 자동으로 생성되어 수집될 수 있습니다.
	- IP Address, 쿠키, 방문 일시, 서비스 이용 기록, 불량 이용 기록
	셋째, 네이버 아이디를 이용한 부가 서비스 및 맞춤식 서비스 이용 또는 이벤트 응모 과정에서 해당 서비스의 이용자에 한해서만 개인정보 추가 수집이 발생할 수 있으며, 이러한 경우 별도의 동의를 받습니다. 
	넷째, 성인컨텐츠, 유료/게임 등 일부 서비스 이용시 관련 법률 준수를 위해 본인인증이 필요한 경우, 아래와 같은 정보들이 수집될 수 있습니다. 
	- 이름, 생년월일, 성별, 중복가입확인정보(DI), 암호화된 동일인 식별정보(CI), 휴대폰 번호(선택), 아이핀 번호(아이핀 이용시), 내/외국인 정보
	다섯째, 유료 서비스 이용 과정에서 아래와 같은 결제 정보들이 수집될 수 있습니다. 
	- 신용카드 결제시 : 카드사명, 카드번호 등
	- 휴대전화 결제시 : 이동전화번호, 통신사, 결제승인번호 등
	- 계좌이체시 : 은행명, 계좌번호 등
	- 상품권 이용시 : 상품권 번호
	나. 개인정보 수집방법회사는 다음과 같은 방법으로 개인정보를 수집합니다. 
	- 홈페이지, 서면양식, 팩스, 전화, 상담 게시판, 이메일, 이벤트 응모, 배송요청
	- 협력회사로부터의 제공 
	- 생성정보 수집 툴을 통한 수집
   </textarea>
   <br>
   <td><input type="checkbox" name="req">약관에 동의합니다.</td> -->
		<table>
		<tbody>
			<tr>
			 	<th>ID</th>
			 	<td>
			 		<input type="text" name="account">
			 	</td>
			<tr>
			 	<th>패스워드</th>
			 	<td>
			 		<input type="password" name="password">
			 	</td>
			</tr>
			<!-- <tr>
			 	<th>패스워드확인</th>
			 	<td>
			 		<input type="password" name="pwd2">
			 	</td>
			</tr> -->
			<tr>
			 	<th>NICKNAME</th>
			 	<td>
			 		<input type="text" name="nickname">
			 	</td>
			</tr>
			<tr>
			 	<th>생년월일</th>
			 	<td>
			 		<input type="text" name="birthday">
			 	</td>
			</tr>
			<tr>
			 	<th>주소1</th>
			 	<td>
			 		<input type="text" name="address1">
			 	</td>
			</tr>
			<tr>
			 	<th>주소2</th>
			 	<td>
			 		<input type="text" name="address2">
			 	</td>
			</tr>
			<tr>
			 	<th>EMAIL</th>
			 	<td>
			 		<input type="text" name="email">
			 	</td>
			</tr>
			<tr>
			 	<th>전화번호</th>
			 	<td>
			 		<input type="text" name="tel">
			 	</td>
			</tr>
		</tbody>
		<tfoot>
		<tr>
			<td colspan="2">
			<input type = "reset" value = "다시작성">	
			<input type = "button" value = "가입완료"
				onclick = "join_go(this.form)">	
			</td>
		</tr>	
		</tfoot>	
		</table>
	</form>	
		
	
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>