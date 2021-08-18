<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path }/resources/css/signin.css" />
</head>
<body>
	<!-- header 들어갈 자리 -->

	<div class="main">
        <div class="content">
            <div class="section_login">
                <h3 class="tit_login">로그인</h3>
                <div class="write_form">
                    <div class="write_view login_view">
                        <form action="">
                            <input type="text" name="m_id" size="20" tabindex="1" placeholder="아이디를 입력해주세요">
                            <input type="password" name="password" size="20" tabindex="2" placeholder="비밀번호를 입력해주세요">
                            <div class="checkbox_save">
                                <label class="label_checkbox checked">
                                    <input type="checkbox" id="chk_security" name="chk_security">
                                    보안접속
                                </label>
                                <div class="login_search">
                                    <a class="link">아이디 찾기</a>
                                    <span class="bar"></span>
                                    <a class="link">비밀번호 찾기</a>
                                </div>
                            </div>
                            <button type="submit" class="btn_type1">
                                <span class="txt_type">로그인</span>
                            </button>
                        </form>
                        <a class="btn_type2 btn_member">
                            <span class="txt_type">회원가입</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <!-- footer 들어갈 자리 -->
</body>
</html>