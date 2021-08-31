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
	                            <li id="orderlist">
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
	                            <li id="coupon" class="on">
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
					<div id="viewOrderList" class="page_section section_coupon">
	                    <div class="head_article">
	                        <h2 class="tit">상품문의</h2>
	                    </div>
                        <div class="coupon_reg">
                            <fieldset>
                                <legend>쿠폰 등록 폼</legend>
                                <div class="reg">
                                    <input type="hidden" name="sno">
                                    <input type="text" name="coupon_number" class="inp" placeholder="쿠폰을 입력해주세요" id="code_input">
                                    <button type="button" class="btn" id="add_coupon_btn">쿠폰 등록</button>
                                </div>
                                <p class="notice">쿠폰에 하이픈("-")이 포함되어 있을 경우 하이픈("-")을 반드시 입력해주세요.</p>
                            </fieldset>
                        </div>
                        <div class="coupon_count">
                            <span class="ico"></span>
                            <p class="txt">
                                쿠폰은 적용 가능한 상품이 따로 적용되어 있는 경우 해당 상품 구매 시에만 사용이 가능합니다.
                            </p>
                            <p class="count">
                                <span class="tit">사용가능쿠폰</span>
                                : ${coupon_count }장
                                <!-- 미사용인 쿠폰 조회하는걸로 변경해야 함 -->
                            </p>
                        </div>
                        <table class="tbl tbl_type1">
                            <caption>적립 사용 내역 상세보기</caption>
                            <colgroup>
                                <col style="width: auto;">
                                <col style="width: 58px;">
                                <col style="width: 101px;">
                                <col style="width: 139px;">
                                <col style="width: 101px;">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th class="name">쿠폰명</th>
                                    <th>기능</th>
                                    <th>할인/적립</th>
                                    <th>사용가능기간</th>
                                    <th>사용여부</th>
                                </tr>
                            </thead>
                            <tbody>
                            	<c:if test="${coupon_list.size() == 0 }">
                                <tr>
                                    <td class="no_data" colspan="5">주문 쿠폰이 없습니다.</td>
                                </tr>
                            	</c:if>
                            	<c:if test="${coupon_list.size() != 0 }">
                            	<c:forEach var="i" begin="0" end="${coupon_list.size() - 1 }">
                            		<tr>
                            			<td>${coupon_list.get(i).coupon_name }</td>
                            			<td>${coupon_list.get(i).coupon_function }</td>
                            			<td>
                            				<c:if test="${coupon_list.get(i).coupon_discountrate != 0 }">
                            				${coupon_list.get(i).coupon_discountrate }%
                            				</c:if>
                            				<c:if test="${coupon_list.get(i).coupon_discountprice != 0 }">
                            				<fmt:formatNumber value="${coupon_list.get(i).coupon_discountprice }" pattern="#,###,###" /> 원
                            				</c:if>
                            			</td>
                            			<td>
                            				<fmt:formatDate var="couponTerm" value="${coupon_list.get(i).coupon_term }" pattern="yyyy.MM.dd"/>
                            				${couponTerm }
                            			</td>
                            			<c:if test="${coupon_list.get(i).coupon_confirm eq '미사용' }">
                            			<td style="color: seagreen;">
                            			${coupon_list.get(i).coupon_confirm }
                            			</td>
                            			</c:if>
                            			<c:if test="${coupon_list.get(i).coupon_confirm eq '사용완료' }">
                            			<td style="color: #ddd;">
                            			${coupon_list.get(i).coupon_confirm }
                            			</td>
                            			</c:if>
                            		</tr>
                            	</c:forEach>
                            	</c:if>
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
</body>
</html>