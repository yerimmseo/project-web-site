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
                            <a href="${path }/event/total" class="on">전체보기</a>
                        </li>
                        <li>
                            <a href="${path }/event/lovers">회원혜택</a>
                        </li>
                        <li>
                            <a href="${path }/event/friend">친구초대</a>
                        </li>
                        <li>
                            <a href="${path }/event/basket">장바구니</a>
                        </li>
                    </ul>
                	</div>
           		</div>
                <div id="eventBody">
                    <div class="page_event">
                        <div class="total_view">
                            <h2 class="screen_out">전체보기</h2>
                            <div class="event_list">

                                <div class="item">
                                    <a id="lovers" data-name="lovers" class="link_event">
                                        <h3 class="tit_total">브로컬리 러버스 혜택</h3>
                                        <p class="txt_ex">
                                            연간 최대 240만원 이상
                                            <span class="material-icons-outlined" style="font-size: 18px;">
											card_giftcard
											</span>
                                        </p>
                                    </a>
                                    <p class="txt_info">매월 실적에 따라 적립/쿠폰이 바뀌는 브로컬리의 회원 등급 혜택이에요. 쓰면 쓸수록 높아지는 혜택을 지금 확인해보세요.
                                    </p>
                                </div>

                                <div class="item">
                                    <a id="friend" data-name="friend" class="link_event">
                                        <h3 class="tit_total">친구 초대 이벤트</h3>
                                        <p class="txt_ex">
                                            참여할 때마다 5천원 적립
                                            <span class="">￦</span>
                                        </p>
                                    </a>
                                    <p class="txt_info">
                                    	고객님의 ID를 추천인으로 적고 가입한 친구가 첫 구매를 하면 고객님과 친구분 모두에게 각각 5천원씩 적립금을 드려요.
                                    </p>
                                </div>

                                <div class="item">
                                    <a id="basket" data-name="basket" class="link_event">
                                        <h3 class="tit_total">장바구니 이벤트</h3>
                                        <p class="txt_ex">
                                            최대 15만원 적립
                                            <span class="">￦</span>
                                        </p>
                                    </a>
                                    <p class="txt_info">
                                    	고객님의 SNS에 브로컬리에서 구매한 상품을 자랑해주세요. 매일 선정을 통해 5천원, 월 최대 15만원의 적립금을 드려요.
                                    </p>
                                </div>

                            </div>
                            <div class="event_bnr">
                                <a href="#" class="link_bnr bg_purple">
                                    <strong class="tit">
                                        다양한 상품을 특가로 만나보세요
                                        <span class="ico_comm ico_arr_w"></span>
                                    </strong>
                                    지금 진행 중인 특가전 보러가기
                                </a>
                                <a href="#" class="link_bnr bg_dark">
                                    <strong class="tit">
                                        브로컬리가 처음이신가요?
                                        <span class="ico_comm ico_arr_w"></span>
                                    </strong>
                                    신규 회원 이벤트 & 혜택 보러가기
                                </a>
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