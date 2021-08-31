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
	                                	<c:if test="${grade eq 'BROCCOLI' }">브로<br>컬리</c:if>
	                                	<c:if test="${grade eq 'ASPARAGUS' }">아스파<br>라거스</c:if>
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
	                                <a href="${path }/event/lovers" class="total_grade">전체등급 보기</a>
	                                <a href="" class="next_month">다음 달 예상등급 보기</a>
	                            </div>
	                        </div>
	                        <div class="list_mypage">
	                            <div class="list">
	                                <a class="link_wrap" id="point_top">
	                                    <div class="link_title">
	                                        적립금
	                                        <img src="${path }/resources/img/icon/ico_arrow_right.png" alt="" class="arrow_right">
	                                    </div>
	                                    <div class="spacer"></div>
	                                    <p class="info">
	                                    	<fmt:formatNumber value="${customer_info.customer_mileage }" pattern="#,###,###" /> 원
	                                        <span class="expire">
	                                        소멸 예정 
	                                        <c:if test="${disappear_point eq null }">
	                                        0
	                                        </c:if>
	                                        <c:if test="${disappear_point ne null }">
	                                        ${disappear_point }
	                                        </c:if>
	                                        원
	                                        </span>
	                                    </p>
	                                </a>
	                                <a class="link_wrap" id="coupon_top">
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
	                    <a href="${path }/event/friend" class="bnr_event">
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
	                            <li id="orderlist" class="on">
	                                <a>주문 내역</a>
	                            </li>
	                            <li id="destination">
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
	                <div class="page_section section_orderview">
				        <div class="head_article">
				            <h2 class="tit">주문 내역 상세</h2>
				        </div>
				        <div class="head_section link_type">
				            <h3 class="tit">주문번호 ${order_list.get(0).order_id }</h3>
				            <span class="link">
				                배송 또는 상품에 문제가 있나요?
				                <a>1:1 문의하기></a>
				            </span>
				        </div>
				        <form>
				            <table class="tbl tbl_type1">
				                <colgroup>
				                    <col style="width: 80px;">
				                    <col style="width: auto;">
				                    <col style="width: 100px;">
				                    <col style="width: 136px;">
				                </colgroup>
				                <tbody>
				                	<c:forEach var="i" begin="0" end="${order_list.size() - 1 }">
				                    <tr>
				                        <td class="thumb">
				                            <a style="background-image: url('${path}/resources/img/product/maincategory${order_list.get(i).maincate_id }/${order_list.get(i).product_id }.jpg'); background-size: cover">
				                            </a>
				                        </td>
				                        <td class="info">
				                            <div class="name">
				                                <!-- 이미지 클릭 시 상품 디테일 페이지로 넘어가게 만들어야 함 -->
				                                <a class="link">${order_list.get(i).product_name }</a>
				                            </div>
				                            <!-- 이벤트 할인율이 없을 때 -->
				                            <c:if test="${order_list.get(i).event_discount == 0 }">
				                            <div class="desc">
				                                <span class="price">${order_list.get(i).product_price }원</span>
				                                <span class="ea">
				                                    ${order_list.get(i).order_count }개
				                                </span>
				                            </div>
				                            </c:if>
				                            <!-- 이벤트 할인율이 있을 때 -->
				                            <c:if test="${order_list.get(i).event_discount != 0 }">
				                            <div class="desc">
				                                <span class="price">100원</span>
				                                <span class="cost">${order_list.get(i).product_price }원</span>
				                                <span class="ea">
				                                    ${order_list.get(i).order_count }개
				                                </span>
				                            </div>
				                            </c:if>
				                        </td>
				                        <c:if test="${order_list.get(i).delivery_status eq '배송완료' }">
				                        <td class="progress end">${order_list.get(i).delivery_status }</td>
				                        </c:if>
				                        <c:if test="${order_list.get(i).delivery_status ne '배송완료' }">
				                        <td class="progress">${order_list.get(i).delivery_status }</td>
				                        </c:if>
				                        <td class="action">
				                            <button type="button" class="btn btn_cart ga_tracking_event" onclick="oneCart(${order_list.get(i).product_id })">장바구니 담기</button>
				                        </td>
				                    </tr>
				                	</c:forEach>
				                </tbody>
				            </table>
				        </form>
				        <div class="order_cancel">
				            <span class="inner_cancel">
				                <button type="button" class="btn btn_cart" onclick="allCart(${order_list.get(0).order_id })">전체 상품 다시 담기</button>
				                <button type="button" class="btn btn_cancel off">전체 상품 주문 취소</button>
				            </span>
				            <p class="cancel_notice">직접 주문취소는 ‘입금확인’ 상태일 경우에만 가능합니다.</p>
				        </div>
				        <div class="head_section">
				            <h3 class="tit">결제정보</h3>
				        </div>
				        <table class="tbl tbl_type2 tbl_type3">
				            <colgroup>
				                <col style="width: 160px;">
				                <col style="width: auto;">
				            </colgroup>
				            <tbody>
				                <tr>
				                    <th>상품금액</th>
				                    <td>
				                    	<fmt:formatNumber value="${total_price }" pattern="#,###,###" />원
				                    </td>
				                </tr>
				                <tr>
				                    <th>배송비</th>
				                    <td>
				                        <div>0 원</div>
				                    </td>
				                </tr>
				                <tr>
				                    <th>상품할인금액</th>
				                    <td>
				                        -
				                        <span>8,880</span>
				                        원
				                    </td>
				                </tr>
				                <tr>
				                    <th>쿠폰할인</th>
				                    <td>
				                        0
				                        원
				                    </td>
				                </tr>
				                <tr>
				                    <th>적립금 사용</th>
				                    <td>
				                        0
				                        원
				                    </td>
				                </tr>
				                <tr>
				                    <th>결제금액</th>
				                    <td>
				                        10,820원
				                    </td>
				                </tr>
				                <tr>
				                    <th>적립예정금액</th>
				                    <td>541원</td>
				                </tr>
				                <tr>
				                    <th>결제방법</th>
				                    <td>신용카드</td>
				                </tr>
				            </tbody>
				        </table>
				        <div class="head_section">
				            <h3 class="tit">주문정보</h3>
				        </div>
				        <table class="tbl tbl_type2">
				            <colgroup>
				                <col style="width: 160px;">
				                <col style="width: auto;">
				            </colgroup>
				            <tbody>
				                <tr>
				                    <th>주문 번호</th>
				                    <td>${order_list.get(0).order_id }</td>
				                </tr>
				                <tr>
				                    <th>주문자명</th>
				                    <td>${customer_info.customer_name }</td>
				                </tr>
				                <tr>
				                    <th>보내는 분</th>
				                    <td>${customer_info.customer_name }</td>
				                </tr>
				                <tr>
				                    <th>결제일시</th>
				                    <td>
				                    <fmt:formatDate var="orderDate" value="${order_list.get(i).order_time }" pattern="yyyy-MM-dd HH:mm:ss"/>
				                    ${orderDate }
				                    </td>
				                </tr>
				            </tbody>
				        </table>
				        <div class="head_section">
				            <h3 class="tit">배송 정보</h3>
				        </div>
				        <table class="tbl tbl_type2">
				            <colgroup>
				                <col style="width: 160px;">
				                <col style="width: auto;">
				            </colgroup>
				            <tbody>
				                <tr>
				                    <th>받는분</th>
				                    <td>서예림</td>
				                </tr>
				                <tr>
				                    <th>핸드폰</th>
				                    <td>010-1111-****</td>
				                </tr>
				                <tr>
				                    <th>배송방법</th>
				                    <td>샛별배송</td>
				                </tr>
				                <tr>
				                    <th>주소</th>
				                    <td>등록된메인주소와 디테일주소</td>
				                </tr>
				                <tr>
				                    <th>받으실 장소</th>
				                    <td>문앞</td>
				                </tr>
				                <tr>
				                    <th>공동현관 출입 방법</th>
				                    <td>자유 출입 가능</td>
				                </tr>
				                <tr>
				                    <th>포장방법</th>
				                    <td>종이 포장재</td>
				                </tr>
				            </tbody>
				        </table>
				        <div class="head_section">
				            <h2 class="tit">추가 정보</h2>
				        </div>
				        <table class="tbl tbl_type2">
				            <colgroup>
				                <col style="width: 160px;">
				                <col style="width: auto;">
				            </colgroup>
				            <tbody>
				                <tr>
				                    <th>메세지 전송 시점</th>
				                    <td>배송 직후</td>
				                </tr>
				                <tr>
				                    <th>미출시 조치방법</th>
				                    <td>결제수단으로 환불</td>
				                </tr>
				            </tbody>
				        </table>
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
    <script src="${path }/resources/js/ajax/mypage_onclick.js"></script>
</body>
</html>