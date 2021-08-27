<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마켓브로컬리 :: 배송지 수정</title>
<link rel="stylesheet" href="${path }/resources/css/font.css" />
<link rel="stylesheet" href="${path }/resources/css/popup.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
	<div id="wrap" class="layout-main-wrapper">
        <div class="only_pc">
            <h2 class="pop_head">배송지 수정</h2>
        </div>
        <div class="section_destination">
            <div id="inputForm">
                <div class="modify only_pc">
                    <div class="field">
                        <div class="address">서울 강남구</div>
                        <input type="text" placeholder="나머지 주소를 입력해주세요">
                    </div>
                    <div class="field">
                        <label class="label_block">받으실 분</label>
                        <input type="text" placeholder="이름을 입력해주세요">
                    </div>
                    <div class="field">
                        <label class="label_block">휴대폰</label>
                        <input type="text" placeholder="번호를 입력해주세요">
                    </div>
                    <label class="label_default">
                        <input type="checkbox">
                        <span class="ico"></span>
                        기본 배송지로 저장
                    </label>
                    <button type="button" class="btn active">저장</button>
                    <button type="button" class="btn normal">삭제</button>
                </div>
            </div>
        </div>
    </div>
</body>
</html>