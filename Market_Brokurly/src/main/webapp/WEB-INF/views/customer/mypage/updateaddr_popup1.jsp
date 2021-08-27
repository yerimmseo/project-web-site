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
                        <span class="badge_default">기본 배송지</span>
                        <div class="address">${address_main }</div>
                        <input type="hidden" id="address_main" value="${address_main }" />
                        <input type="text" id="address_detail" placeholder="나머지 주소를 입력해주세요" value="${address_detail }" />
                    </div>
                    <div class="field">
                        <label class="label_block" id="">받으실 분</label>
                        <input type="text" id="receive_customer" placeholder="이름을 입력해주세요" value="${receive_customer }" />
                    </div>
                    <div class="field">
                        <label class="label_block">연락처</label>
                        <input type="text" id="receive_tel" placeholder="번호를 입력해주세요" value="${receive_tel }" />
                    </div>
                    <button type="button" class="btn active" id="popup1_btn">저장</button>
                </div>
            </div>
        </div>
    </div>
    
    <script type="text/javascript" src="${path }/resources/js/ajax/destination_ajax.js"></script>
</body>
</html>