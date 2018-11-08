<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<title>PREMIUM.JSP</title>
<meta charset="utf-8">
<title>프리미엄 리뷰</title>

<style>
	nav a {
		text-decoration: none;
	}
	#li4 {
		font-size: 2em;
		font-weight: bold;
	}
</style>
<link href="./css/premium.css" rel="stylesheet" type="text/css">

<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
	$(function(){
	});
</script>
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>
	<header>
		<h2>프리미엄 후기</h2>
	</header>
	<section>
		<nav>
			<ul>
				<li><a href="controller?type=notice&board_type=1">공지사항</a></li>
				<li><a href="controller?type=moreQue">자주 묻는 질문</a></li>
				<li><a href="controller?type=que">문의사항</a></li>
				<li id="li4">프리미엄 후기</li>
				<li><a href="controller?type=agree">약관 및 동의사항</a></li>
			</ul>
		</nav>
<!-- ******프리미엄 후기 본문******************************** -->
		<article>

			<h1>프리미엄 리뷰</h1>
				<div id="container">
					<c:if test="${not empty pPageList }">
						<c:forEach var="p" items="${pPageList }">
							<div id="pcontent">
								<a id="pImg" href="#"><img src="" alt="썸네일이미지"></a>
								<a id="title" href="#"><p>${p.title }</p></a>
								<span id="writer">닉네임값(${p.user_id })</span><br>
								<span id="usedate">숙박일 : xx년xx월xx일</span><br>
								
								<span id="tag">#태그1 #태그2 #태그3</span><br>
								<span id="regdate">작성일 : ${p.write_date }</span><br>
							</div>
						</c:forEach>
						
					</c:if>
					<c:if test="${empty pPageList }">
						<h1>작성된 프리미엄 후기가 없습니다.</h1>
					</c:if>
					
				</div>
				
				
			<%-- ***[이전5개] 버튼 사용여부 처리 ****--%>
			<c:choose>
				<c:when test="${premPvo.beginPage == 1}">
				</c:when>
				<c:otherwise>
					<button id="buttonPrev" onclick="controller?type=premium&cPremPage=${premPvo.beginPage-1}">이전 6개</button>
				</c:otherwise>
			</c:choose>
			<%-- *****************************--%>
				
			<%-- 블록 내에 표시할 페이지 반복처리 --%>
					<%-- 현재블록 시작페이지~ 끝페이지 표시 --%>
					<c:forEach var="k" begin="${premPvo.beginPage}" end="${premPvo.endPage }">
					<c:choose>
						<c:when test="${k == premPvo.nowPage }">
							<li class="now">${k}</li>
						</c:when>
						<c:otherwise>
							<li>
								<a href="controller?type=premium&board_type=1&cPage=${k}">${k}</a>
							</li>
						</c:otherwise>
					</c:choose>
					</c:forEach>
				
			<%-- ***[다음5개] 버튼 사용여부 처리 ***--%>
			<c:choose>
				<c:when test="${premPvo.totalPage <= premPvo.endPage }">
				</c:when>
				<c:otherwise>
					<button id="buttonNext" onclick="">다음 5개</button>
				</c:otherwise>
			</c:choose>
			<%-- ****************************--%>
						
					
			
		</article>
<!-- *************************************************** -->
	</section>



	<!-- -----------------------------------------------------------------  ------------------------ -->
	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>

</body>
</html>
