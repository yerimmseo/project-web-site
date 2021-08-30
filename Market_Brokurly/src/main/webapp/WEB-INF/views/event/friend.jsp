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
<link rel="stylesheet" href="${path }/resources/css/event.css" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons|Material+Icons+Sharp|Material+Icons+Two+Tone" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
	<div class="header">
		<jsp:include page="../include/header.jsp"></jsp:include>
	</div>
	<div class="main">
        <div class="content">
            <div id="eventHead">

                <script>
                    // 메뉴 스크롤 이벤트
                    $(window).on('scroll', function () {
                        if ($(window).scrollTop() >= $('#header').height() * 3) {
                            $('.menu_event').addClass('resize');
                        } else {
                            $('.menu_event').removeClass('resize');
                        }
                    })
                </script>

            </div>

            <div id="eventView">
                <div class="menu_event">
                    <div id="eventMenu">
                        <ul class="menu">
                            <li>
                                <a href="${path }/event/total">전체보기</a>
                            </li>
                            <li>
                                <a href="${path }/event/lovers">회원혜택</a>
                            </li>
                            <li>
                                <a href="${path }/event/friend" class="on">친구초대</a>
                            </li>
                            <li>
                                <a href="${path }/event/basket">장바구니</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div id="eventBody">
                    <div class="page_event">
                        <div class="cont_view">
                            <div class="event_tit">
                                <h2 class="tit_event">친구 초대 이벤트</h2>
                                <p class="txt_event">
                                    브로컬리를 친구에게 소개하고, 친구와 함께 적립금 혜택을 받아보세요. 초대할 때마다 나의 적립금이 차곡차곡,
                                    <br>
                                    무제한으로 쌓여요.
                                </p>
                            </div>
                            <div class="event_info">
                                <div class="cont_info">
                                    <strong class="tit_info">
                                        친구도 나도
                                        <br>
                                        <span class="emph">5천원씩 적립</span>
                                    </strong>
                                    <div class="desc_info">
                                        <div class="box_bubble">
                                            브로컬리에 친구를
                                            <strong class="emph">초대할 때마다</strong>
                                        </div>
                                        <ul class="list_info">
                                            <li>
                                                <strong class="tit">Step 01.</strong>
                                                가입할 때 추천인에 나의 ID를 쓴 친구의 첫 배송이 완료되면
                                            </li>
                                            <li>
                                                <strong class="tit">Step 02.</strong>
                                                친구도 나도 적립금 5천원 지급
                                                <span class="txt_ect">
                                                    <span class="ico_txt">※</span>
                                                    배송 완료 후 2일 이내 지급
                                                </span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="event_btn share">
                                <a class="btn_link" data-opt="kakaotalk">
                                    <span class="cell">
                                        <span class="ico_comm ico_kakao"></span>
                                    </span>
                                    <span class="cell">
                                        <strong class="tit">카카오톡으로 내 ID를 공유하세요!</strong>
                                        지금 친구 초대하기
                                    </span>
                                    <span class="cell">
                                        <span class="ico_comm ico_arr_b"></span>
                                    </span>
                                </a>
                            </div>
                        </div>
                        <br>
                        <div class="cont_view">
                            <div class="event_noti">
                                <strong class="tit_noti">확인해주세요!</strong>
                                <div class="desc_noti">
                                    <ul class="list_noti">
                                        <li>ID는 대소문자 및 띄어쓰기를 구분해 정확히 입력해주세요.</li>
                                        <li>초대할 수 있는 친구의 수는 제한이 없습니다.</li>
                                        <li>적립금은 친구의 첫 구매 배송 완료 후, 영업일 기준 2일 뒤 오후 7시 이전에 지급됩니다.</li>
                                        <li>주문 취소 시, 적립금은 지급되지 않습니다.</li>
                                        <li>적립금 지급 후 주문 취소/환불 시, 적립금이 회수될 수 있습니다.</li>
                                        <li>기존 회원이 적립금을 위해 중복으로 가입한 것으로 판단되는 경우, 적립금이 지급되지 않습니다.</li>
                                        <li>
                                            추천인과 피 추천인의 주소지(또는 배송지), 연락처 등이 동일할 경우, 동일인 중복 가입으로 판단되어
                                            <br>
                                            적립금이 지급되지 않을 수 있습니다.
                                        </li>
                                        <li>
                                            기타 비정상적인 방법을 통해 금전적인 이득을 취하기 위해 이벤트에 참여한 것으로 판단될 경우,
                                            <br>
                                            적립금이 지급되지 않거나 회수될 수 있습니다.
                                        </li>
                                        <li>친구 초대 이벤트는 당사의 사정에 의해 사전 고지 없이 변경 혹은 중단될 수 있습니다.</li>
                                    </ul>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
	</div>
	<div class="footer_wrap">
		<jsp:include page="../include/footer.jsp"></jsp:include>
	</div>
	
</body>
</html>