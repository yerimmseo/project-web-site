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
                        <div class="address">${address_main }</div>
                        <input type="hidden" id="address_main" value="${address_main }" />
                        <input type="text" id="address_detail" placeholder="나머지 주소를 입력해주세요" value="${address_detail }">
                    </div>
                    <div class="field">
                        <label class="label_block">받으실 분</label>
                        <input type="text" id="receive_customer" placeholder="이름을 입력해주세요" value="${receive_customer }">
                    </div>
                    <div class="field">
                        <label class="label_block">휴대폰</label>
                        <input type="text" id="receive_tel" placeholder="번호를 입력해주세요" value="${receive_tel }">
                    </div>
                    <label class="label_default">
                        <input type="checkbox" id="default_chk">
                        <span class="ico"></span>
                        기본 배송지로 저장
                    </label>
                    <button type="button" class="btn active" id="popup0_save_btn">저장</button>
                    <button type="button" class="btn normal" id="popup0_del_btn">삭제</button>
                </div>
            </div>
        </div>
    </div>
    
    <script type="text/javascript" src="${path }/resources/js/ajax/destination_ajax.js"></script>
</body>
</html>