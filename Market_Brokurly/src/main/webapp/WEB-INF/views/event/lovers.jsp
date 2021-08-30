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
                                <a href="${path }/event/lovers" class="on">회원혜택</a>
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
                        <div class="cont_view">
                            <div class="event_tit">
                                <h2 class="tit_event">브로컬리 러버스 혜택</h2>
                                <p class="txt_event">고객님께 받은 사랑을 혜택으로 돌려드려요. 매월 실적에 따라 달라지는 실용적이고 다채로운 혜택을
                                    확인해보세요.
                                </p>
                            </div>
                            <div class="grade_info">
                                <h3 class="screen_out">등급 안내</h3>
                                <div class="grade_list">
                                    <div class="item on">
                                        <a href="#none" class="btn_grade">
                                            <strong class="tit">브로컬리</strong>
                                            <p class="txt">
                                                <span class="num">7</span>
                                                %
                                                〉
                                            </p>
                                        </a>
                                    </div>
                                    <div class="item">
                                        <a href="#none" class="btn_grade">
                                            <strong class="tit">아스파<br>라거스</strong>
                                            <p class="txt">
                                                <span class="num">7</span>
                                                %
                                                〉
                                            </p>
                                        </a>
                                    </div>
                                    <div class="item">
                                        <a href="#none" class="btn_grade">
                                            <strong class="tit">그린</strong>
                                            <p class="txt">
                                                <span class="num">5</span>
                                                %
                                                〉
                                            </p>
                                        </a>
                                    </div>
                                    <div class="item">
                                        <a href="#none" class="btn_grade">
                                            <strong class="tit">프렌즈</strong>
                                            <p class="txt">
                                                <span class="num">3</span>
                                                %
                                                〉
                                            </p>
                                        </a>
                                    </div>
                                    <div class="item">
                                        <a href="#none" class="btn_grade">
                                            <strong class="tit">일반</strong>
                                            <p class="txt">
                                                <span class="num">1</span>
                                                %
                                                〉
                                            </p>
                                        </a>
                                    </div>
                                    <div class="item">
                                        <a href="#none" class="btn_grade">
                                            <strong class="tit">웰컴</strong>
                                            <p class="txt">
                                                <span class="num">5</span>
                                                %
                                                〉
                                            </p>
                                        </a>
                                    </div>
                                </div>
                                <div class="grade_desc">
                                    <div class="item on">
                                        <div class="wrap_tit">
                                            <strong class="tit">브로컬리</strong>
                                            <p class="txt">
                                                전월 실적 150만원 이상
                                                <br>
                                                (결제금액+적립금 사용액)
                                            </p>
                                        </div>
                                        <ul class="list_info">
                                            <li>
                                                <span class="ico_comm ico_won" style="color: seagreen">￦</span>
                                                <span class="txt_info">적립
                                                    <span class="num">7</span>
                                                    %
                                                </span>
                                            </li>
                                            <li>
                                                <span class="ico_comm ico_double" style="color: seagreen">X2</span>
                                                <span class="txt_info">더블 추가 적립금</span>
                                            </li>
                                            <li>
                                                <span class="ico_comm ico_gift">
                                                	<span class="material-icons-outlined" style="font-size: 18px; color: seagreen">
													card_giftcard
													</span>
												</span>
                                                <span class="txt_info">매월 브로컬리 선물</span>
                                            </li>
                                            <li>
                                                <span class="ico_comm ico_coupon">
                                                <span class="material-icons-outlined" style="color: seagreen">
												crop_16_9
												</span>
                                                </span>
                                                <span class="txt_info">
                                                    최대
                                                    <span class="num">2</span>
                                                    만원 추가 혜택
                                                    <span class="ex">(깜짝 쿠폰, 적립 이벤트 등)</span>
                                                </span>
                                            </li>
                                            <li class="total">
                                                <strong class="tit">총 적립 금액 126만원 이상</strong>
                                                <span class="txt">※ 브로컬리 등급 연간 유지 시</span>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="item">
                                        <div class="wrap_tit">
                                            <strong class="tit" style="color: rgb(77, 173, 119);">아스파라거스</strong>
                                            <p class="txt">
                                                전월 실적 100만원 이상
                                                <br>
                                                (결제금액+적립금 사용액)
                                            </p>
                                        </div>
                                        <ul class="list_info">
                                            <li>
                                                <span class="ico_comm ico_won" style="color: rgb(77, 173, 119);">￦</span>
                                                <span class="txt_info">적립
                                                    <span class="num">7</span>
                                                    %
                                                </span>
                                            </li>
                                            <li>
                                                <span class="ico_comm ico_double" style="color: rgb(77, 173, 119);">X2</span>
                                                <span class="txt_info">더블 추가 적립금</span>
                                            </li>
                                            <li>
                                                <span class="ico_comm ico_coupon">
                                                <span class="material-icons-outlined" style="color: rgb(77, 173, 119);">
												crop_16_9
												</span>
                                                </span>
                                                <span class="txt_info">
                                                    최대
                                                    <span class="num">1</span>
                                                    만원 추가 혜택
                                                    <span class="ex">(깜짝 쿠폰, 적립 이벤트 등)</span>
                                                </span>
                                            </li>
                                            <li class="total">
                                                <strong class="tit">총 적립 금액 84 - 126만원 이상</strong>
                                                <span class="txt">※ 아스파라거스 등급 연간 유지 시</span>
                                            </li>
                                        </ul>
                                    </div>

                                    <div class="item">
                                        <div class="wrap_tit">
                                            <strong class="tit" style="color: rgb(101, 209, 148);">그린</strong>
                                            <p class="txt">
                                                전월 실적 50만원 이상
                                                <br>
                                                (결제금액+적립금 사용액)
                                            </p>
                                        </div>
                                        <ul class="list_info">
                                            <li>
                                                <span class="ico_comm ico_won" style="color: rgb(101, 209, 148);">￦</span>
                                                <span class="txt_info">적립
                                                    <span class="num">5</span>
                                                    %
                                                </span>
                                            </li>
                                            <li>
                                                <span class="ico_comm ico_coupon">
                                                <span class="material-icons-outlined" style="color: rgb(101, 209, 148);">
												crop_16_9
												</span>
                                                </span>
                                                <span class="txt_info">
                                                    최대
                                                    <span class="num">1</span>
                                                    만원 추가 혜택
                                                    <span class="ex">(깜짝 쿠폰, 적립 이벤트 등)</span>
                                                </span>
                                            </li>
                                            <li class="total">
                                                <strong class="tit">총 적립 금액 30-60만원</strong>
                                                <span class="txt">※ 그린 등급 연간 유지 시</span>
                                            </li>
                                        </ul>
                                    </div>

                                    <div class="item">
                                        <div class="wrap_tit">
                                            <strong class="tit" style="color: rgb(132, 240, 179);">프렌즈</strong>
                                            <p class="txt">
                                                전월 실적 30만원 이상
                                                <br>
                                                (결제금액+적립금 사용액)
                                            </p>
                                        </div>
                                        <ul class="list_info">
                                            <li>
                                                <span class="ico_comm ico_won" style="color: rgb(132, 240, 179);">￦</span>
                                                <span class="txt_info">적립
                                                    <span class="num">3</span>
                                                    %
                                                </span>
                                            </li>
                                            <li>
                                                <span class="ico_comm ico_coupon">
                                                <span class="material-icons-outlined" style="color: rgb(132, 240, 179);">
												crop_16_9
												</span>
                                                </span>
                                                <span class="txt_info">
                                                    최대
                                                    <span class="num">7</span>
                                                    천원 추가 혜택
                                                    <span class="ex">(깜짝 쿠폰, 적립 이벤트 등)</span>
                                                </span>
                                            </li>
                                            <li class="total">
                                                <strong class="tit">총 적립 금액 18만원</strong>
                                                <span class="txt">※ 프렌즈 등급 연간 유지 시</span>
                                            </li>
                                        </ul>
                                    </div>

                                    <div class="item">
                                        <div class="wrap_tit">
                                            <strong class="tit" style="color: darkseagreen;">일반</strong>
                                            <p class="txt">
                                                전월 실적 15만원 이상
                                                <br>
                                                (결제금액+적립금 사용액)
                                            </p>
                                        </div>
                                        <ul class="list_info">
                                            <li>
                                                <span class="ico_comm ico_won" style="color: darkseagreen;">￦</span>
                                                <span class="txt_info">적립
                                                    <span class="num">1</span>
                                                    %
                                                </span>
                                            </li>
                                            <li>
                                                <span class="ico_comm ico_coupon">
                                                <span class="material-icons-outlined" style="color: darkseagreen;">
												crop_16_9
												</span>
                                                </span>
                                                <span class="txt_info">
                                                    최대
                                                    <span class="num">6</span>
                                                    천원 추가 혜택
                                                    <span class="ex">(깜짝 쿠폰, 적립 이벤트 등)</span>
                                                </span>
                                            </li>
                                            <li class="total">
                                                <strong class="tit">총 적립 금액 1 - 3만원</strong>
                                                <span class="txt">※ 일반 등급 연간 유지 시</span>
                                            </li>
                                        </ul>
                                    </div>

                                    <div class="item">
                                        <div class="wrap_tit">
                                            <strong class="tit" style="color: rgb(123, 145, 132);">웰컴</strong>
                                            <p class="txt">
                                                전월 실적 15만원 미만
                                                <br>
                                                (결제금액+적립금 사용액)
                                            </p>
                                        </div>
                                        <ul class="list_info">
                                            <li>
                                                <span class="ico_comm ico_won" style="color: rgb(123, 145, 132);">￦</span>
                                                <span class="txt_info">적립
                                                    <span class="num">5</span>
                                                    %
                                                </span>
                                            </li>
                                            <li class="total">
                                                <strong class="tit">총 적립 금액 1만원 이하</strong>
                                                <span class="txt">※ 웰컴 등급 연간 유지 시</span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>

                                <div class="grade_noti">
                                    <strong class="screen_out">유의사항</strong>
                                    <ul class="list_noti">
                                        <li>
                                            추가 혜택은 월 중 지급되며, 혜택 지급 시 SMS 수신동의해주신 고객님께 문자 개별 안내드릴 예정입니다.
                                        </li>
                                        <li>
                                            SMS 수신 여부는 [마이브로컬리>개인정보 수정]에서 설정하실 수 있습니다.
                                        </li>
                                        <li>
                                            총 적립 금액은 12개월간 동일 등급을 유지할 경우 받게 되는 적립 금액의 총합계입니다.
                                        </li>
                                        <li>
                                            등급별 혜택은 변경될 수 있습니다.
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="cont_view">
                                <div class="event_noti">
                                    <strong class="tit_noti">확인해주세요!</strong>
                                    <div class="desc_noti">
                                        <strong class="tit_noti2">회원 등급 적용</strong>
                                        <ul class="list_noti">
                                            <li>
                                                매월 1일에 전월 실적(전월 결제 금액+전월 적립금 사용액)을 기준으로 새로운 등급이 적용됩니다.
                                            </li>
                                            <li>
                                                전월 실적은 주문 금액에서 할인, 쿠폰을 제외한 금액으로, 적립금 사용액은 전월 실적에 포함됩니다.
                                            </li>
                                            <li>
                                                일부 상품 결제금액은 전월 실적에 포함되지 않을 수 있습니다. (상품 상세에서 확인 가능)
                                            </li>
                                            <li>
                                                BROKURLY LOVERS는 당사의 사정에 따라 변경 또는 중지될 수 있으며, 명백한 오남용이 발견될 시에는
                                                <br>
                                                혜택 이용에 제한을 받으실 수 있습니다.
                                            </li>
                                        </ul>
                                        <strong class="tit_noti2">적립금 및 추가혜택</strong>
                                        <ul class="list_noti">
                                            <li>
                                                주문 적립금은 배송비를 제외한 결제금액에 각 고객등급별 적립율을 곱한 금액으로,
                                                <br>
                                                배송완료 다음날 오전2시에 지급됩니다.
                                            </li>
                                            <li>
                                                일부 상품은 적립금이 지급되지 않습니다. (상품 상세에서 확인 가능)
                                            </li>
                                            <li>
                                                주문 취소 시, 지급되었던 적립금은 자동 차감됩니다.
                                            </li>
                                            <li>
                                                베스트 후기에는 더블 후기 적립금 혜택이 적용되지 않습니다.
                                            </li>
                                            <li>
                                                추가 혜택은 월 중 지급되며, 혜택 지급 시 SMS 수신동의해주신 고객님께 문자 개별 안내드릴 예정입니다.
                                            </li>
                                        </ul>
                                        <strong class="tit_noti2">적립금 사용</strong>
                                        <ul class="list_noti">
                                            <li>
                                                지급일로부터 1년이 지난 적립금은 당월 마지막 날 소멸됩니다.
                                            </li>
                                            <li>
                                                소멸기한이 1개월 내로 임박한 적립금은 PC / Mobile [마이브로컬리]에서 확인하실 수 있습니다.
                                            </li>
                                            <li>
                                                적립금은 자동으로 유효기한이 적게 남은 금액부터 사용됩니다.
                                            </li>
                                            <li>
                                                적립금 유효기한은 2018년 4월 1일부터 적용되며, 그 이전에 받으신 적립금은 유효기한이 없습니다.
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <script>
                        // 혜택 타입 탭
                        $('.grade_list .btn_grade').on('click', function (e) {
                            var idx = $(this).parent().index();
                            $(this).parent().addClass('on').siblings().removeClass('on');
                            $('.grade_desc .item').eq(idx).addClass('on').siblings().removeClass('on');
                            e.preventDefault();
                        })
                    </script>
                </div>
            </div>
        </div>
    </div>
    <div class="footer_wrap">
		<jsp:include page="../include/footer.jsp"></jsp:include>
	</div>
	
</body>
</html>