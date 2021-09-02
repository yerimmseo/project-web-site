<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path }/resources/css/topBtn.css" />
</head>
<body>
	<div id="top_btn" class="">
   		<span class="material-icons-outlined">
			arrow_upward
		</span>
    </div>
<script src="${path }/resources/js/style/topBtn.js"></script>
</body>	
</html>