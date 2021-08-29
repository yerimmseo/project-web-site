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
<link rel="stylesheet" href="${path }/resources/css/signin.css" />
<link rel="stylesheet" href="${path }/resources/css/font.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
	<form action="findid" id="findidForm"></form>
	<form action="findpw" id="findpwForm"></form>
	<div class="header">
		<jsp:include page="../include/header.jsp"></jsp:include>
	</div>
	<div class="main">
        <div class="content">
            <div class="section_login">
                <h3 class="tit_login">로그인</h3>
                <div class="write_form">
                    <div class="write_view login_view">
                        <form id="login_form" action="${path}/customer/main" method="POST">
                            <input type="text" id="customer_id" name="customer_id" size="20" tabindex="1" placeholder="아이디를 입력해주세요">
                            <input type="password" id="customer_pw" name="customer_pw" size="20" tabindex="2" placeholder="비밀번호를 입력해주세요">
                            <div class="checkbox_save">
                                <label class="label_checkbox checked">
                                    <input type="checkbox" id="chk_security" name="chk_security">
                                    보안접속
                                </label>
                                <div class="login_search">
                                    <a class="link" id="findid">아이디 찾기</a>
                                    <span class="bar"></span>
                                    <a class="link" id="findpw">비밀번호 찾기</a>
                                </div>
                            </div>     
                            <div class="btn_type1 btn_member">
								<input class="txt_type" type="button" id="login_btn" value="로그인"/>
                            </div>
                        </form>
                        <form action="signup" id="signupForm">
                        <a class="btn_type2 btn_member" id="signup">
                            <span class="txt_type">회원가입</span>
                        </a>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer_wrap">
		<jsp:include page="../include/footer.jsp"></jsp:include>
	</div>
	
	<script src="${path }/resources/js/ajax/signin_ajax.js"></script>
</body>
</html>