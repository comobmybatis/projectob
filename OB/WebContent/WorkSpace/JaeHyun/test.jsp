
<%@page import="java.util.List"%>
<%@page import="com.ob.mybatis.DBService"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test목록</title>
</head>
<body>

	<div id="container">
		<table border="1">
			<thead>
				<tr>
					<th>A_IDX</th>
					<th>A_NAME</th>
					<th>A_LOCATION</th>
					<th>CONTENT</th>
					<th>A_CHECK_IN</th>
					<th>A_CHECK_OUT</th>
					<th>A_COMPANY</th>
					<th>REG_DATE</th>
					<th>A_IMG_NAME</th>
					<th>A_CODE</th>
					<th>HIT</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${not empty test_list }">
					<c:forEach var="vo" items="${test_list }">

						<tr>
							<td>${vo.getA_idx() }</td>
							<td>${vo.getA_name() }</td>
							<td>${vo.a_location }</td>
							<td>${vo.content }</td>
							<td>${vo.a_check_in }</td>
							<td>${vo.a_check_out }</td>
							<td>${vo.a_company }</td>
							<td>${vo.getReg_date() }</td>
							<td>${vo.a_img_name }</td>
							<td>${vo.a_code }</td>
							<td>${vo.hit }</td>

						</tr>
					</c:forEach>
				</c:if>

				<c:if test="${empty test_list }">
					<tr>
						<td colspan="11">입력된 자료가 없습니다</td>
					</tr>

				</c:if>
			</tbody>
		</table>
	</div>

</body>
</html>