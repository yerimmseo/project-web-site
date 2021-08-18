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
	<div class="main">
        <div class="content">
            <div class="section_login">
                <h3 class="tit_login">비밀번호 찾기</h3>
                <div class="write_form find_view">
                    <form action="">
                        <strong class="tit_label">이름</strong>
                        <input type="text" name="srch_name" size="29">
                        <strong class="tit_label">아이디</strong>
                        <input type="text" name="srch_id" size="29">
                        <strong class="tit_label">이메일</strong>
                        <input type="text" name="srch_mail" size="29">
                        <button type="submit" class="btn_type1">
                            <span class="txt_type">찾기</span>
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>