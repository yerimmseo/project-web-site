<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품 상세 페이지</title>
<style type="text/css">
	body {
		text-align: center;
	}
	p {
		margin: 0;
		margin: 8px;
	}
	p:nth-of-type(1) {
		font-size: 26px;	
	}
	p:nth-of-type(2) {
		font-size: 35px;
		font-weight: bold;
	}
	p:nth-of-type(3) {
		width: 1000px;
		margin: auto;
	}
	table {
		margin: auto;
		text-align: left;
		font-size: 12px;
	}
	td {
		padding: 10px;
	}
	td:nth-child(n) {
		background-color: rgba(204, 204, 204);
	}
	td:nth-child(2n) {
		background-color: white;
	}
</style>
</head>
<body>
	<h3>상품 디테일 페이지가 될 곳입니다.</h3>
	
	<!-- 테이블이 어느 지점인지 찾는다! -->
	<c:set var="findTable" value="false"/>
	
	<c:forEach var="i" begin="0" end="${fn:length(detail) - 1 }">
		<c:if test="${not findTable }">
			<p>${detail[i] }</p>
			<c:if test="${detail[i] eq '' }">
				<c:set var="findTable" value="true"></c:set>
				<c:set var="startPoint" value="${i + 1 }"></c:set>
			</c:if>
		</c:if>
	</c:forEach>
	
	<table>
		<c:forEach var="i" begin="${startPoint }" end="${fn:length(detail) - 1 }" step="2">
		<tr>
			<td>${detail[i] }</td>
			<td>${detail[i + 1] }</td>
		</tr>
		</c:forEach>
	</table>

</body>
</html>