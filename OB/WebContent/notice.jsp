<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>NOTICE.JSP</title>
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
	$(function() {
		$("#btn").on("click", function() {
			$("#content").toggle("hidden");	
		});
	});
	</script>
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>
	<header>
		<h2>탬플릿2</h2>
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
			<table cellspacing="1" width="650" border="1" id="boardList"> 
				<tr> 
					<td colspan="3" width="50"><p align="center">서비스 공지사항</p></td>  
				</tr> 
				
				<tr> 
					<td width="50"><p align="center">1</p></td>
					<td width="320">
						<p align="left">제목1</p>
							<div id="content" style="display: none"> 
								내용1
							</div> 
					</td> 
					<td><a href="#" id="btn">▼</a></td> 
				</tr> 
				
				<tr> 
					<td width="50"><p align="center">2</p></td> 
					<td width="320">
						<p align="left">제목2</p>
							<div id="content" style="display: none">
								내용2
							</div>
					</td> 
					<td><a href="#" id="btn">Show</a></td> 
				</tr> 
				
				<tr> 
					<td width="50"><p align="center">3</p></td> 
					<td width="320">
						<p align="left">제목3</p>
							<div id="content" style="display: none">
								내용3
							</div>
					</td> 
					<td><a href="#" id="btn">Show</a></td> 
				</tr> 
			</table> 		
		</article>
	</section>

	<!-- -----------------------------------------------------------------  ------------------------ -->
	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>

</body>
</html>
