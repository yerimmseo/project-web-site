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
                <h3 class="tit_login">아이디 찾기</h3>
                <div class="write_form find_view">
                    <form action="signin" method="GET" id="getidForm">
                        <strong class="tit_label">이름</strong>
                        <input type="text" id="customer_name" name="srch_name" size="29" placeholder="고객님의 이름을 입력해주세요">
                        <strong class="tit_label">이메일</strong>
                        <input type="text" id="customer_email" name="srch_mail" size="29" placeholder="가입 시 등록하신 이메일 주소를 입력해주세요">
                        <a type="button" class="btn_type1" id="find_id_btn">
                            <span class="txt_type">확인</span>
                        </a>
                    </form>
                </div>
            </div>
        </div>
    </div>
        <div class="footer_wrap">
		<jsp:include page="../include/footer.jsp"></jsp:include>
	</div>
	
	<script src="${path }/resources/js/ajax/find_ajax.js"></script>
</body>
</html>