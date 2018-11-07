<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>notice.jsp</title>
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
</style>
<script>
	
</script>
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>
	<header>
		<h2>공지사항</h2>
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
			<div id="notice_bbs">
				<table border="1">
					<h2>공지사항</h2>
					<thead>
						<tr class="title">
							<th class="no">번호</th>
							<th class="subject">제목</th>
							<th class="writer">글쓴이</th>
							<th class="regdate">날짜</th>
							<th class="hit">조회수</th>
						</tr>
					</thead>
					<tbody>
						<c:choose>
							<c:when test="${empty list }">
								<tr>
									<td colspan="5">
										<h2>현재 등록된 게시글이 없습니다.</h2>
									</td>
								</tr>
							</c:when>
							<c:otherwise>
								<c:forEach var="vo" items="${list }">
									<tr>
										<td>${vo.b_idx }</td>
										<td><a
											href="view.jsp?b_idx=${vo.b_idx }&cPage=${pvo.nowPage }">${vo.subject }</a>
										</td>
										<td>${vo.writer }</td>
										<td>${vo.write_date.substring(0, 10) }</td>
										<td>${vo.hit }</td>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</tbody>
					<tfoot>
						<tr>
							<td colspan="4">
								<ol class="paging">
									<%-- [이전으로]에 대한 사용 여부를 처리 --%>
									<c:choose>
										<%-- 사용불가(disable): 첫번째 블록인 경우에만 --%>
										<c:when test="${pvo.beginPage < pvo.pagePerBlock }">
											<%-- <c:when test="${pvo.beginPage != 1}"> 같은 의미--%>
											<li class="disable">이전으로</li>
										</c:when>
										<%-- 사용가능(enable): 두번재 블록 이상(첫번째만 아닌 경우) --%>
										<c:otherwise>
											<li><a href="list.jsp?cPage=${pvo.beginPage - 1 }">이전으로</a>
											</li>
										</c:otherwise>
									</c:choose>

									<%-- 블록내에 표시할 페이지 반복처리(시작 페이지 ~ 끝 페이지) --%>
									<c:forEach var="k" begin="${pvo.beginPage }"
										end="${pvo.endPage }">
										<c:choose>
											<c:when test="${k == pvo.nowPage }">
												<li class="now">${k } <!-- 링크를 제거하여 현재 페이지임을 알 수 있게 해줌 -->
												</li>
											</c:when>
											<c:otherwise>
												<li><a href="list.jsp?cPage=${k }">${k }</a></li>
											</c:otherwise>
										</c:choose>
									</c:forEach>

									<%-- [다음으로]에 대한 사용여부 처리 --%>
									<c:choose>
										<%-- 사용불가(disable): 끝 페이지(endPage) 수가 전체 페이지(totalPage) 수 보다  크거나 같은 경우 --%>
										<c:when test="${pvo.endPage >= pvo.totalPage }">
											<li class="disable">다음으로</li>
										</c:when>
										<%-- 사용가능(enable) --%>
										<c:otherwise>
											<li><a href="list.jsp?cPage=${pvo.endPage + 1 }">다음으로</a>
											</li>
										</c:otherwise>
									</c:choose>
								</ol>
							</td>

							<td><input type="button" value="글쓰기"
								onclick="javascript:location.href='writer.jsp'"></td>
						</tr>
					</tfoot>
				</table>
			</div>
		</article>
	</section>

	<!-- -----------------------------------------------------------------  ------------------------ -->
	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>

</body>
</html>
