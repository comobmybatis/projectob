<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프리미엄 리뷰</title>

<link href="./css/premium.css" rel="stylesheet" type="text/css">

<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
	$(function(){
	});
</script>
</head>
<body>
<!--<jsp:include page="header.jsp"/>-->

<%-- ***[이전5개] 버튼 사용여부 처리 ******************--%>
<choose>
	<when test="${premPvo.beginPage == 1}">
		
	</when>
	<otherwise>
		<button id="buttonPrev" onclick="controller?type=premium&cPremPage=${premPvo.beginPage-1}">이전 5개</button>
	</otherwise>
</choose>
<h1>프리미엄 리뷰</h1>
	<div id="container">
		<c:if test="${not empty pList }">
			<c:forEach var="p" items="${pList }">
				<div id="pcontent">
					<a id="pImg" href="#"><img src="" alt="썸네일이미지"></a>
					<a id="title" href="#"><p>${p.title }</p></a>
					<span id="writer">${p.writer }(${p.id })</span><br>
					<span id="usedate">숙박일 : ${p.usedate }</span><br>
					
					<span id="tag">#태그1 #태그2 #태그3</span><br>
					<span id="regdate">작성일 : ${p.regdate }</span><br>
				</div>
			</c:forEach>
			
		</c:if>
		<c:if test="${empty pList }">
			<h1>작성된 프리미엄 후기가 없습니다.</h1>
		</c:if>
		
	</div>
	
<%-- ***[다음5개] 버튼 사용여부 처리 ******************--%>
<button id="buttonNext" onclick="">다음 5개</button>
<!--<jsp:include page="footer.jsp"/>-->
</body>
</html>