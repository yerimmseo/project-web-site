<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<c:set var="grade" value="${customer_info.customer_grade }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마켓브로컬리 :: 내일의 장보기, 마켓브로컬리</title>
<link rel="stylesheet" href="${path }/resources/css/font.css" />
<link rel="stylesheet" href="${path }/resources/css/mybenefit.css" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons|Material+Icons+Sharp|Material+Icons+Two+Tone|Material+Icons+Outlined" rel="stylesheet">
</head>
<body>
	<div class="header">
		<jsp:include page="../include/header.jsp"></jsp:include>
	</div>
	<div class="wrap">
		<div id="container">
	        <div id="main">
	            <div id="content">
	                <div class="section_benefit">
	                    <div id="benefitView" class="gradeType1">
	                        <div class="next_benefit">
	                            <div class="tit">
	                                다음 달 나의 예상 등급
	                                <div class="ico_grade">
	                                    <span class="inner_grade">
	                                        <c:if test="${grade eq 'BROCCOLI' }"><span class="in_grade class5">브로<br>컬리</span></c:if>
		                                	<c:if test="${grade eq 'ASPARAGUS' }"><span class="in_grade class4">아스파<br>라거스</span></c:if>
		                                	<c:if test="${grade eq 'GREEN' }"><span class="in_grade class3">그린</span></c:if>
		                                	<c:if test="${grade eq 'FRIENDS' }"><span class="in_grade class2">프렌즈</span></c:if>
		                                	<c:if test="${grade eq 'NORMAL' }"><span class="in_grade class1">일반</span></c:if>
		                                	<c:if test="${grade eq 'WELCOME' }"><span class="in_grade class0">웰컴</span></c:if>
	                                    </span>
	                                </div>
	                            </div>
	                            <c:if test="${grade eq 'WELCOME' }"><p class="desc">첫 구매하고 브로컬리러버스 멤버가 되어보세요 !</p></c:if>
	                            <c:if test="${grade ne 'WELCOME' }">
		                            <p class="desc">
		                            	사용하신 전월 금액은
		                            	<fmt:formatNumber value="${month_pay }" pattern="#,###,###" /> 원
		                            	입니다.
		                            </p>
	                            </c:if>
	                            <p class="txt_info">* 전월 실적은 전월 결제액과 적립금 사용액 합계입니다.</p>
	                            <div class="benefit_info">
	                                <ul class="list list_grade1">
	                                    <li class="name">
	                                        <strong class="grade">웰컴</strong>
	                                        <span class="desc_grade">
	                                            전월 실적
	                                            <br>
	                                            15만원 미만
	                                        </span>
	                                        <c:if test="${grade eq 'WELCOME' }"><span class="select"></span></c:if>
	                                    </li>
	                                    <li class="point">
	                                        <span class="img">￦</span>
	                                        <span class="info">5% 적립</span>
	                                    </li>
	                                </ul>
	                                <ul class="list list_grade2">
	                                    <li class="name">
	                                        <strong class="grade">일반</strong>
	                                        <span class="desc_grade">
	                                            전월 실적
	                                            <br>
	                                            15만원 이상
	                                        </span>
	                                        <c:if test="${grade eq 'NORMAL' }"><span class="select"></span></c:if>
	                                    </li>
	                                    <li class="point">
	                                        <span class="img">￦</span>
	                                        <span class="info">1% 적립</span>
	                                    </li>
	                                </ul>
	                                <ul class="list list_grade3">
	                                    <li class="name">
	                                        <strong class="grade">프렌즈</strong>
	                                        <span class="desc_grade">
	                                            전월 실적
	                                            <br>
	                                            30만원 이상
	                                        </span>
	                                        <c:if test="${grade eq 'FRIENDS' }"><span class="select"></span></c:if>
	                                    </li>
	                                    <li class="point">
	                                        <span class="img">￦</span>
	                                        <span class="info">3% 적립</span>
	                                    </li>
	                                </ul>
	                                <ul class="list list_grade4">
	                                    <li class="name">
	                                        <strong class="grade">그린</strong>
	                                        <span class="desc_grade">
	                                            전월 실적
	                                            <br>
	                                            50만원 이상
	                                        </span>
	                                        <c:if test="${grade eq 'GREEN' }"><span class="select"></span></c:if>
	                                    </li>
	                                    <li class="point">
	                                        <span class="img">￦</span>
	                                        <span class="info">5% 적립</span>
	                                    </li>
	                                </ul>
	                                <ul class="list list_grade5">
	                                    <li class="name">
	                                        <strong class="grade" style="padding-top: 5px;">아스파<br>라거스</strong>
	                                        <span class="desc_grade">
	                                            전월 실적
	                                            <br>
	                                            100만원 이상
	                                        </span>
	                                        <c:if test="${grade eq 'ASPARAGUS' }"><span class="select"></span></c:if>
	                                    </li>
	                                    <li class="point">
	                                        <span class="img">￦</span>
	                                        <span class="info">7% 적립</span>
	                                    </li>
	                                    <li class="write">
	                                        <span class="material-icons-outlined img_pen">
	                                            mode_edit
	                                        </span>
	                                        <span class="info">더블 후기 적립금</span>
	                                    </li>
	                                </ul>
	                                <ul class="list list_grade6">
	                                    <li class="name">
	                                        <strong class="grade" style="padding-top: 5px;">브로<br>컬리</strong>
	                                        <span class="desc_grade">
	                                            전월 실적
	                                            <br>
	                                            150만원 이상
	                                        </span>
	                                        <c:if test="${grade eq 'BROCCOLI' }"><span class="select"></span></c:if>
	                                    </li>
	                                    <li class="point">
	                                        <span class="img">￦</span>
	                                        <span class="info">7% 적립</span>
	                                    </li>
	                                    <li class="write">
	                                        <span class="material-icons-outlined img_pen">
	                                            mode_edit
	                                        </span>
	                                        <span class="info">
	                                            더블 후기 적립금
	                                        </span>
	                                    </li>
	                                    <li class="gift">
	                                        <span class="material-icons-outlined img_gift">
	                                            card_giftcard
	                                        </span>
	                                        <span class="info">
	                                            월별 기프트
	                                        </span>
	                                    </li>
	                                </ul>
	                            </div>
	                        </div>
	                        <div class="notice_benefit">
	                            <strong class="tit">회원 등급 적용 안내</strong>
	                            <ul class="list">
	                                <li>- 매월 1일에 전월 실적(전월 결제 금액+전월 적립금 사용액)을 기준으로 새로운 등급이 적용됩니다.</li>
	                                <li>- 전월 실적은 주문 금액에서 할인, 쿠폰을 제외한 금액으로, 적립금 사용액은 전월 실적에 포함됩니다.</li>
	                                <li>- 별도 혜택이 적용되는 기획전(예: 설 선물 기획전) 구매 내역은 제외됩니다.</li>
	                            </ul>
	                            <strong class="tit">적립금 안내</strong>
	                            <ul class="list">
	                                <li>- 주문 적립금은 배송비를 제외한 결제금액에 각 고객등급별 적립율을 곱한 금액으로, 배송완료 다음날 오전 2시에 지급됩니다.</li>
	                                <li>- 일부 상품은 적립금이 지급되지 않습니다. (상품 상세에서 확인 가능)</li>
	                                <li>- 주문 취소 시, 지급되었던 적립금은 자동 차감됩니다.</li>
	                                <li>- 베스트 후기에는 더블 후기 적립금 혜택이 적용되지 않습니다.</li>
	                            </ul>
	                            <strong class="tit">꼭 읽어주세요</strong>
	                            <ul class="list">
	                                <li>- 등급 관련 문의는 1:1 게시판에 [등급확인]이라는 제목으로 남겨주셔야, 회신이 가능합니다.</li>
	                                <li>- 브로컬리러버스는 당사의 사정에 따라 변경 또는 중지될 수 있으며, 명백한 오남용이 발견될 시에는 혜택 이용에 제한을 받으실 수 있습니다.</li>
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