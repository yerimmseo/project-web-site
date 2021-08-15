<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록조회</title>
<style type="text/css">
	.lab1 {
		display: flex;
		flex-wrap: wrap;
		height: auto;
	}
	.lab2 {
		border: solid 1px black; 
		width: 300px;
		height: auto;
	}
	.img {
		width: 300px;
		height: 300px;
	}
	.lab2 > div > span:first-child {
		font-size: 20px;
	}
	.lab2 > div > span:nth-of-type(2) {
		font-size: 16px;
		font-weight: bold;
	}
}
</style>
</head>
<body>
	<h3>여기목록</h3>
	<table border="1" style="text-align: center">
		<c:forEach var="i" begin="0" end="${product.size() - 1 }">
			<tr>
				<td>${product.get(i).product_name }</td>
				<td>${product.get(i).product_price }</td>
			</tr>
		</c:forEach>
	</table>
	<div class="lab1">
		<c:forEach var="i" begin="0" end="${product.size() - 1 }">
			<div class="lab2">
				<div class="img">여기이미지들어갈 자리</div>
				<div><span>${product.get(i).product_name }</span><br><span>${product.get(i).product_price }원</span></div>
			</div>
		</c:forEach>
	</div>
</body>
</html>