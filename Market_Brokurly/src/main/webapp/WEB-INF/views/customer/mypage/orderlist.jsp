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
	<form action="orderview" id="orderviewForm"></form>
	
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
	                <div id="viewOrderList" class="page_section section_orderlist">
	                    <div class="head_article">
	                        <h2 class="tit">
	                            주문 내역
	                            <span class="tit_sub">지난 3년간의 주문 내역 조회가 가능합니다</span>
	                        </h2>
	                    </div>
	                    <div class="search_date">
	                        <h3 class="screen_out">기간 선택</h3>
	                        <a class="btn_layer">
	                            전체기간
	                        </a>
	                        <ul class="layer_search">
	                            <li>
	                                <a class="term">전체기간</a>
	                            </li>
	                            <li>
	                                <a type="button" onclick="yearSearch(2021);">2021 년</a>
	                            </li>
	                            <li>
	                                <a type="button" onclick="yearSearch(2020);">2020 년</a>
	                            </li>
	                            <li>
	                                <a type="button" onclick="yearSearch(2019);">2019 년</a>
	                            </li>
	                        </ul>
	                    </div>
	                    <ul class="list_order">
	                        <!-- 최근 주문내역 없을 때 출력되는 li -->
	                        <c:if test="${order_list.get(0).size() == 0}">
	                        <li class="no_data">주문내역이 없습니다.</li>
	                        </c:if>
	                        <c:if test="${order_list.get(0).size() != 0}">
	                        <c:forEach var="i" begin="0" end="${order_list.size() - 1 }">
	                        <li>
	                            <div class="date">
	                            	<fmt:formatDate var="orderDate" value="${order_list.get(i).get(0).order_time }" pattern="yyyy.MM.dd (HH시 mm분)"/>
	                            	${orderDate }
	                            </div>
	                            <div class="order_goods">
	                                <div class="name">
	                                	<input type="hidden" name="order_id" value="${order_list.get(i).get(0).order_id }" />
	                                    <a onclick="viewOrderList(${order_list.get(i).get(0).order_id})">${order_list.get(i).get(0).product_name } 외 ${order_list.get(i).size() - 1 }건</a>
	                                </div>
	                                <div class="order_info">
	                                    <div class="thumb">
	                                        <img src="${path }/resources/img/product/maincategory${order_list.get(i).get(0).maincate_id }/${order_list.get(i).get(0).product_id }.jpg" alt="해당 주문 대표 상품 이미지">
	                                    </div>
	                                    <div class="desc">
	                                        <dl>
	                                            <dt>주문번호</dt>
	                                            <dd>${order_list.get(i).get(0).order_id }</dd>
	                                        </dl>
	                                        <dl>
	                                            <dt>결제금액</dt>
	                                            <dd>
	                                            <c:forEach var="j" begin="0" end="${total_price.size() - 1 }">
	                                            	<c:if test="${order_list.get(i).get(0).order_id == total_price.get(j).order_id }">
	                                            	<fmt:formatNumber value="${total_price.get(j).total_price }" pattern="#,###,###" />원	
	                                            	</c:if>
	                                            </c:forEach>
	                                            </dd>
	                                        </dl>
	                                        <dl>
	                                            <dt>주문상태</dt>
	                                            <dd class="status">
	                                            <c:forEach var="k" begin="0" end="${deli_status.size() - 1 }">
	                                            	<c:if test="${order_list.get(i).get(0).order_id == deli_status.get(k).order_id }">
	                                            	${deli_status.get(k).delivery_status }
	                                            	</c:if>
	                                            </c:forEach>
	                                            </dd>
	                                        </dl>
	                                    </div>
	                                </div>
	                                <div class="order_status">
	                                    <span class="inner_status">
	                                        <a class="link ga_tracking_event">1:1 문의</a>
	                                    </span>
	                                </div>
	                            </div>
	                        </li>
	                        </c:forEach>
	                        </c:if>
	                    </ul>
	                </div>
	            </div>
            </div>
        </div>
    </div>
    <div class="footer_wrap">
		<jsp:include page="../../include/footer.jsp"></jsp:include>
	</div>
	
    <script src="${path }/resources/js/style/mypage.js"></script>
    <script src="${path }/resources/js/ajax/mypage_onclick.js"></script>
    <script src="${path }/resources/js/ajax/mypage_ajax.js"></script>
    
    <script type="text/javascript">
	    function yearSearch(term) {
	    	/* const year = $(ths).parents('li').find('input[name=year]');*/
	    	
	    	console.log(term);
	    	
	    	$.ajax({
	    		url: '/brokurly/customer/mypage/year',
	    		type: 'GET',
	    		data: {
	    			'term': term
	    		},
	    		success: function() {
	    			opener.parent.location.reload();
	    		},
	    		error: function() {
	    			alert('서버오류');
	    		}
	    	});
	    }
    </script>
</body>
</html>