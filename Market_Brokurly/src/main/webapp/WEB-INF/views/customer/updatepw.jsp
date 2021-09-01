<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마켓브로컬리 :: 내일의 장보기, 마켓브로컬리</title>
<link rel="stylesheet" href="${path }/resources/css/font.css" />
<link rel="stylesheet" href="${path }/resources/css/signin.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
	<div class="header">
		<jsp:include page="../include/header.jsp"></jsp:include>
	</div>
	<div class="main">
        <div class="content">
            <div class="section_login">
                <h3 class="tit_login">비밀번호 변경</h3>
                <div class="write_form find_view">
                    <form action="signin" method="GET" id="changepwForm">
                        <strong class="tit_label">비밀번호</strong>
                        <input type="password" id="customer_pw" name="srch_name" size="29">
                        <strong class="tit_label">비밀번호 확인</strong>
                        <input type="password" id="customer_pw_confirm" name="srch_id" size="29">
                        <a type="button" class="btn_type1" id="change_pw_btn">
                            <span class="txt_type">변경하기</span>
                        </a>
                    </form>
                </div>
            </div>
        </div>
    </div>
        <div class="footer_wrap">
		<jsp:include page="../include/footer.jsp"></jsp:include>
	</div>
	
	<script src="${path }/resources/js/ajax/changepw_ajax.js"></script>
</body>
</html>