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
                                <a>전체보기</a>
                            </li>
                            <li>
                                <a>회원혜택</a>
                            </li>
                            <li>
                                <a>친구초대</a>
                            </li>
                            <li>
                                <a class="on">장바구니</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div id="eventBody">
                    <div class="page_event">
                        <div class="cont_view">
                            <div class="event_tit">
                                <h2 class="tit_event">장바구니 이벤트</h2>
                                <p class="txt_event">
                                    고객님의 SNS에 브로컬리에서 구매한 상품을 자랑해주세요. 매일 선정을 통해 5천원, 월 최대 15만원의
                                    <br>
                                    적립금을 드려요.
                                </p>
                            </div>
                            <div class="event_info">
                                <div class="cont_info">
                                    <strong class="tit_info">
                                        매일 받아가는
                                        <br>
                                        <span class="emph">무제한 적립금</span>
                                    </strong>
                                    <div class="desc_info">
                                        <div class="box_bubble">
                                            <strong class="emph">
                                                5분 만에
                                            </strong>
                                            참여하고
                                            <strong class="emph">
                                                5천원 적립
                                            </strong>
                                            받고
                                        </div>
                                        <ul class="list_info list_type2">
                                            <li>
                                                <strong class="tit">
                                                    2020년 지급된 장바구니 지원금
                                                </strong>
                                                총 23,335,000원(2020.1.1 - 2020.7.31)
                                            </li>
                                            <li>
                                                <strong class="tit">
                                                    한 번 참여할 때 보통
                                                </strong>
                                                5분 정도 걸렸어요!
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="cont_info">
                                    <strong class="tit_info">
                                        매일 20분께
                                        <br>
                                        <span class="emph">5천원 적립</span>
                                    </strong>
                                    <div class="desc_info">
                                        <div class="box_bubble">
                                            <strong class="emph">인스타그램 & 블로그에서</strong>
                                            선정을 통해
                                        </div>
                                        <ul class="list_info">
                                            <li>
                                                <strong class="tit">참여기한</strong>
                                                배송 받은 날짜로부터 1개월 이내
                                            </li>
                                            <li>
                                                <strong class="tit">선정 대상</strong>
                                                마켓브로컬리 상품 구매 후 아래 방법에 맞게 포스팅하신 분
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="box_sns">
                                    <strong class="tit">
                                        인스타그램 참여 방법
                                        <span class="ico_comm ico_instagram"></span>
                                    </strong>
                                    <ul class="list_sns">
                                        <li>
                                            <span class="ico_txt">✓</span>
                                            구매 상품의 인증샷 또는 활용샷을 올리고,
                                        </li>
                                        <li>
                                            <span class="ico_txt">✓</span>
                                            <strong class="hash">#마켓브로컬리</strong>
                                            <strong class="hash">#온더테이블</strong>
                                            <strong class="hash">#ID_나의 마켓컬리 ID</strong>
                                            3가지 해시태그를 함께 남겨주세요
                                        </li>
                                        <li class="ex">
                                            ex) 마켓컬브로리 ID가 brokurly123이라면, #마켓브로컬리 #온더테이블 #ID_brokurly123
                                        </li>
                                    </ul>
                                    <strong class='tit tit_blog'>
                                        블로그 참여 방법
                                        <span class="ico_comm ico_blog"></span>
                                    </strong>
                                    <ul class="list_sns list_blog">
                                        <li>
                                            <span class="ico_txt">✓</span>
                                            포스팅 제목에 [마켓브로컬리]를 달고,
                                        </li>
                                        <li>
                                            <span class="ico_txt">✓</span>
                                            구매 상품 인증샷과 활용법 또는 후기를 쓴 후,
                                        </li>
                                        <li>
                                            <span class="ico_txt">✓</span>
                                            <strong class="hash">#마켓브로컬리</strong>
                                            <strong class="hash">#브로컬리장바구니</strong>
                                            <strong class="hash">#ID_나의 마켓브로컬리 ID</strong>
                                            3가지 해시태그를 함께 남겨주세요
                                        </li>
                                        <li class="ex">
                                            ex) 마켓브로컬리 ID가 brokurly123이라면, #마켓브로컬리 #온더테이블 #ID_brokurly123
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="event_noti">
                                <strong class="tit_noti">확인해주세요!</strong>
                                <div class="desc_noti">
                                    <strong class="tit_noti2">장바구니 이벤트 참여 충족 기준</strong>
                                    <ul class="list_noti">
                                        <li>
                                            배송 완료 일자로부터 1개월 이내의 주문 건에 한해서만 참여 가능합니다.
                                        </li>
                                        <li>
                                            전체 공개 계정에 한해 지급됩니다.(친구 공개 & 비공개 계정은 적립 불가)
                                        </li>
                                        <li>
                                            실제 상품의 인증샷을 올려 주셔야 하며 구매내역 캡처 화면으로는 이벤트 참여가 불가합니다.
                                        </li>
                                        <li>
                                            이벤트 상품 단독 발송 건은 이벤트 참여가 불가합니다.
                                        </li>
                                        <li>
                                            참여 기준을 충족하기 위해 이미 올린 게시물을 수정하거나, 비공개 게시물을 공개로 전환할 경우 적립금이
                                            <br>
                                            지급되지 않습니다.
                                        </li>
                                        <li>
                                            띄어쓰기/엔터/괄호 등으로 인해 해시태그를 오기재할 경우 적립금이 지급되지 않습니다.
                                        </li>
                                        <li>
                                            인스타그램 참여 시, 본문이 아닌 댓글로 해시태그를 달아주신 경우 적립금이 지급되지 않습니다.
                                        </li>
                                    </ul>
                                    <strong class="tit_noti2">적립금 지급 안내</strong>
                                    <ul class="list_noti">
                                        <li>
                                            이벤트 참여 기준에 모두 충족되었을 경우에만 적립금이 지급됩니다.
                                        </li>
                                        <li>
                                            당사 사정에 따라 이벤트는 조기 종료 또는 연장될 수 있습니다.
                                        </li>
                                        <li>
                                            금전적인 이득을 취하기 위하여 비정상적인 방법으로 이벤트에 참여한 것으로 간주될 경우, 적립금이
                                            <br>
                                            지급되지 않을 수 있습니다.
                                        </li>
                                        <li>
                                            장바구니 이벤트 적립금은 게시물 작성 시점으로부터 영업일 기준 3일 내로 지급됩니다.
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="best_review">
                            <div class="cont_view">
                                <div class="top_info">
                                    <strong class="tit">
                                        이 달의 베스트 후기는
                                        <br>
                                        <span class="emph">적립금 1만원</span>
                                    </strong>
                                    <p class="txt">
                                        매월 인스타그램, 블로그에 #마켓컬리를 포스팅한 분 중
                                        <br>
                                        베스트 후기 각 3분을 선정해 적립금 1만원을 드려요.
                                    </p>
                                </div>
                                <ul class="list_noti">
                                    <li>
                                        이벤트 참여 기간은 한 달이며, 포스팅 일자 기준으로 응모됩니다.
                                    </li>
                                    <li>
                                        베스트 후기에 선정된 3분께는 개별 연락 후 적립금이 지급됩니다.
                                    </li>
                                    <li>
                                        당첨된 포스팅은 마켓컬리 인스타그램 / 블로그 계정으로 공유되며, 이에 동의해주신 분에 한해
                                        <br>
                                        적립금이 지급됩니다.
                                    </li>
                                    <li>
                                        베스트 후기 적립금은 매월 첫째 주 금요일 18시까지 일괄 지급됩니다.
                                    </li>
                                </ul>
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