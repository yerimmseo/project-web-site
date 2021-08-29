<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<c:set var="grade" value="${customer_info.customer_grade }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path }/resources/css/font.css" />
<link rel="stylesheet" href="${path }/resources/css/mypage.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
	<form action="orderlist" id="orderlistForm"></form>
	<form action="destination" id="destinationForm"></form>
	<form action="review" id="reviewForm"></form>
	<form action="inquiry" id="inquiryForm"></form>
	<form action="point" id="pointForm"></form>
	<form action="coupon" id="couponForm"></form>
	<form action="myinfo" id="myinfoForm"></form>
	
	<div class="header">
		<jsp:include page="../../include/header.jsp"></jsp:include>
	</div>
	<div class="main">
        <div class="content">
        	<div class="top1">
	        	<div id="myPageTop" class="page_article mypage_top">
	                <h2 class="screen_out">마이페이지</h2>
	                <div class="mypagetop_user">
	                    <div class="inner_mypagetop">
	                        <div class="grade_user">
	                            <div class="grade_wrap">
	                                <div class="grade_logo">
	                                	<c:if test="${grade eq 'BROCCOLI' }">브로컬리</c:if>
	                                	<c:if test="${grade eq 'ASPARAGUS' }">아스파라거스</c:if>
	                                	<c:if test="${grade eq 'GREEN' }">그린</c:if>
	                                	<c:if test="${grade eq 'FRIENDS' }">프렌즈</c:if>
	                                	<c:if test="${grade eq 'NORMAL' }">일반</c:if>
	                                	<c:if test="${grade eq 'WELCOME' }">웰컴</c:if>
	                                </div>
	                                <strong class="name">${customer_info.customer_name }님</strong>
	                            </div>
	                            <div class="grade_benefit">
	                                <!---->
	                                <div class="benefit">
	                                    <strong class="tit"></strong>
	                                    적립 
	                                    <c:if test="${grade eq 'BROCCOLI' }">7</c:if>
	                                	<c:if test="${grade eq 'ASPARAGUS' }">7</c:if>
	                                	<c:if test="${grade eq 'GREEN' }">5</c:if>
	                                	<c:if test="${grade eq 'FRIENDS' }">3</c:if>
	                                	<c:if test="${grade eq 'NORMAL' }">1</c:if>
	                                	<c:if test="${grade eq 'WELCOME' }">5</c:if>
	                                    %
	                                </div>
	                                <!---->
	                                <c:if test="${grade eq 'WELCOME' }">
	                                <div class="benefit">
	                                    <strong class="tit"></strong>
	                                    최초 1회 무료배송
	                                </div>
	                                </c:if>
	                                <div class="benefit"></div>
	                            </div>
	                            <div class="next">
	                                <a href="" class="total_grade">전체등급 보기</a>
	                                <a href="" class="next_month">다음 달 예상등급 보기</a>
	                            </div>
	                        </div>
	                        <div class="list_mypage">
	                            <div class="list">
	                                <a href="" class="link_wrap">
	                                    <div class="link_title">
	                                        적립금
	                                        <img src="${path }/resources/img/icon/ico_arrow_right.png" alt="" class="arrow_right">
	                                    </div>
	                                    <div class="spacer"></div>
	                                    <p class="info">
	                                    	<fmt:formatNumber value="${customer_info.customer_mileage }" pattern="#,###,###" /> 원
	                                        <span class="expire">소멸 예정 0원</span>
	                                    </p>
	                                </a>
	                                <a href="" class="link_wrap">
	                                    <div class="link_title">
	                                        쿠폰
	                                        <img src="${path }/resources/img/icon/ico_arrow_right.png" alt="" class="arrow_right">
	                                    </div>
	                                    <div class="spacer"></div>
	                                    <p class="info">${coupon_count } 개</p>
	                                </a>
	                                <a href="" class="link_wrap">
	                                    <div class="link_title">
	                                        컬리 그린 박스
	                                        <img src="${path }/resources/img/icon/ico_arrow_right.png" alt="" class="arrow_right">
	                                    </div>
	                                    <div class="spacer"></div>
	                                    <p class="info">알아보기</p>
	                                </a>
	                                <a href="" class="link_wrap">
	                                    <div class="link_title">
	                                        브로컬리패스
	                                        <img src="${path }/resources/img/icon/ico_arrow_right.png" alt="" class="arrow_right">
	                                    </div> 
	                                    <div class="spacer"></div>
	                                    <p class="info">알아보기</p>
	                                </a>
	                            </div>
	                        </div>
	                    </div>
	                    <a href="" class="bnr_event">
	                        <img src="" alt="">
	                    </a>
	                </div>
	            </div>
        	</div>
            <div class="top2">
            	<div class="page_article article_type2">
	                <div id="snb" class="snb_my">
	                    <h2 class="tit_snb">마이브로컬리</h2>
	                    <div class="inner_snb">
	                        <ul class="list_menu">
	                            <li id="orderlist">
	                                <a>주문 내역</a>
	                            </li>
	                            <li id="destination" class="on">
	                                <a>배송지 관리</a>
	                            </li>
	                            <li id="review">
	                                <a>상품 후기</a>
	                            </li>
	                            <li id="inquiry">
	                                <a>상품 문의</a>
	                            </li>
	                            <li id="point">
	                                <a>적립금</a>
	                            </li>
	                            <li id="coupon">
	                                <a>쿠폰</a>
	                            </li>
	                            <li id="myinfo">
	                                <a>개인 정보 수정</a>
	                            </li>
	                        </ul>
	                    </div>
	                    <a href="" class="link_inquire">
	                        <span class="emph">도움이 필요하신가요 ?</span>
	                        1:1 문의하기
	                    </a>
	                </div>
					<div id="viewOrderList" class="page_section section_destination">
	                    <div class="head_article">
	                        <h2 class="tit">
	                            배송지 관리
	                            <span class="tit_sub">배송지에 따리 상품 정보가 달라질 수 있습니다.</span>
	                        </h2>
                            <div class="new_address">
                                <button type="button" class="btn">
                                    <img src="${path }/resources/img/icon/ico_add_16x16.png" alt="" class="ico"> 
                                    새 배송지 추가
                                </button>
                            </div>
	                    </div>
                        <span class="destination_add screen_out"></span>
                        <div class="type_select">
                            <table class="tbl tbl_type1">
                                <thead>
                                    <tr>
                                        <th class="tit_select">선택</th>
                                        <th class="tit_address">주소</th>
                                        <th class="tit_receive">받으실 분</th>
                                        <th class="tit_phone">연락처</th>
                                        <th class="tit_delivery">배송유형</th>
                                        <th class="tit_modify">수정</th>
                                    </tr>
                                </thead>
                                <tbody id="">
                                    <c:forEach var="i" begin="0" end="${address_list.size() - 1 }">
                                    <tr>
                                        <td class="select type_radio">
                                            <label class="skin_checkbox">
                                            	<c:if test="${address_list.get(i).address_check == 1 }">
                                                <input type="radio" name="addrNo" value=1 checked>
                                            	</c:if>
                                            	<c:if test="${address_list.get(i).address_check == 0 }">
                                            	<input type="radio" name="addrNo" value=0 >
                                            	</c:if>
                                                <span class="ico"></span>
                                                <span class="screen_out chk_count">선택하기</span>
                                            </label>
                                        </td>
                                        <td class="address">
                                        	<c:if test="${address_list.get(i).address_check == 1 }">
                                            <span class="badge_default">기본 배송지</span>
                                        	</c:if>
                                            <p class="addr">
                                            	<input type="hidden" id="address_main" name="address_main" value="${address_list.get(i).address_main }">
                                            	<input type="hidden" id="address_detail" name="address_detail" value="${address_list.get(i).address_detail }">
                                            	<span>${address_list.get(i).address_main }</span>
                                            	<span>${address_list.get(i).address_detail }</span>
                                            </p>
                                        </td>
                                        <td class="name">
                                        	<input type="hidden" name="receive_customer" value="${address_list.get(i).receive_customer }" />
                                        	${address_list.get(i).receive_customer }
                                        </td>
                                        <td class="phone">
                                        	<input type="hidden" name="receive_tel" value="${address_list.get(i).receive_tel }" />
                                        	<c:set var="phone_num" value="${address_list.get(i).receive_tel }" />
                                        	<c:if test="${!(phone_num eq null) }">
                                        		<c:if test="${fn:length(phone_num) == 10 }">
                                        		${fn:substring(phone_num, 0, 3) }-${fn:substring(phone_num, 3, 6) }-${fn:substring(phone_num, 6, 10) }
                                        		</c:if>
                                        		<c:if test="${fn:length(phone_num) == 11 }">
				                                ${fn:substring(phone_num, 0, 3) }-${fn:substring(phone_num, 3, 7) }-${fn:substring(phone_num, 7, 11) }
                                        		</c:if>
                                        	</c:if>
                                        </td>
                                        <td>
                                            <span class="delivery star">샛별배송</span>
                                        </td>
                                        <td>
                                            <button type="button" class="ico modify" id="update_addr_btn" onclick="openPopup(${address_list.get(i).address_check}, this)">수정하기</button>
                                        </td>
                                    </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
	                </div>
	            </div>
            </div>
        </div>
    </div>
    <div class="footer_wrap">
		<jsp:include page="../../include/footer.jsp"></jsp:include>
	</div>
	
	<script src="${path }/resources/js/style/mypage.js"></script>
	<script src="${path }/resources/js/ajax/mypage_ajax.js"></script>
	<script src="${path }/resources/js/ajax/destination_ajax.js"></script>
	<script src="${path }/resources/js/ajax/mypage_onclick.js"></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</body>
</html>