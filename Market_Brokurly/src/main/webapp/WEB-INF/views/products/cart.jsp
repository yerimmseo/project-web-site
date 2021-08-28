<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마켓브로컬리 :: 내일의 장보기, 마켓브로컬리</title>
<link rel="stylesheet" href="${path }/resources/css/font.css" />
<link rel="stylesheet" href="${path }/resources/css/cart.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
	<div class="header">
		<jsp:include page="../include/header.jsp"></jsp:include>
	</div>
	<div class="main">
        <div class="content">
            <h3 class="screen_out">장바구니 상품 목록</h3>
            <form>
                <div class="only_pc" id="cartItemList">
                    <div>
                        <!-- 장바구니에 상품이 없을 때(장바구니 리스트 size() == 0) -->
                        <div class="cart_item no_item"  style="display: none;">
                            <div class="cart_select">
                                <div class="inner_select">
                                    <label class="check">
                                        <!-- 상품이 없을 때 체크박스 사용 불가능 함 -->
                                        <input type="checkbox" disabled> 
                                        <span class="ico"></span>
                                        전체선택 (
                                        0
                                        /
                                        0
                                        )
                                    </label>
                                    <a class="btn_delete">
                                        선택삭제
                                    </a>
                                </div>
                            </div>
                            <div class="inner_empty">
                                <p class="txt">장바구니에 담긴 상품이 없습니다</p>
                            </div>
                        </div>
                        <!-- 장바구니에 상품이 있을 때(size() != 0) -->
                        <div class="cart_item">
                            <div class="cart_select">
                                <div class="inner_select">
                                    <label class="check">
                                        <input type="checkbox">
                                        <span class="ico"></span>
                                        전체 선택 (
                                        1
                                        /
                                        1
                                        )
                                    </label>
                                    <a class="btn_delete">
                                        선택삭제
                                    </a>
                                </div>
                            </div>
                            <div class="box room">
                                <ul class="list">
                                    <!-- 여기 li부분을 foreach 돌릴 것 -->
                                    <li>
                                        <div class="item">
                                            <label class="check">
                                                <input type="checkbox">
                                                <span class="ico"></span>
                                            </label>
                                            <div class="name">
                                                <div class="inner_name">
                                                    <a class="package">[슐라이히] 티라노사우르스 렉스 블루</a>
                                                </div>
                                            </div>
                                            <div class="goods">
                                                <!-- 장바구니에서 메인,서브카테고리 아이디 받아서 이미지 경로로 사용하면 됨 -->
                                                <a class="thumb" style="background-image: url();">상품이미지</a>
                                                <div class="price">
                                                    <div class="in_price">
                                                        <span class="selling">
                                                            <!-- 할인율 적용된 가격 -->
                                                            104,700
                                                            <span class="won">원</span>
                                                        </span>
                                                        <span class="cost">
                                                            <!-- 원가 -->
                                                            113,700
                                                            <span class="won">원</span>
                                                        </span>
                                                    </div>
                                                    <div class="stamper count">
                                                        <button type="button" class="btn minus">감소</button>
                                                        <input type="number" class="num" readonly value="3">
                                                        <button type="button" class="btn plus">추가</button>
                                                    </div>
                                                </div>
                                                <button type="button" class="btn_delete">상품 삭제</button>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="cart_result">
                            <div class="inner_result">
                                <div class="cart_delivery">
                                    <h3 class="tit">배송지</h3>
                                    <!-- 배송지가 없는 경우 -->
                                    <div class="no_address">
                                        <span class="emph">배송지를 입력</span>
                                        하고
                                        <br>
                                        배송유형을 확인해 보세요!
                                        <a class="btn default">
                                            <span class="ico"></span>
                                            주소 검색
                                        </a>
                                    </div>
                                    <!-- 배송지가 있는 경우 -->
                                    <div class="address" style="display: none;">
                                        <p class="addr">
                                            경기 수원시 영통구 대학1로 14
                                            안동빌 2020호
                                        </p>
                                        <span class="delivery star">샛별배송</span>
                                        <a class="btn default">배송지 변경</a>
                                    </div>
                                </div>
                                <div class="amount_view">
                                    <dl class="amount">
                                        <dt class="tit">상품금액</dt>
                                        <dd class="price">
                                            <!-- 원가 -->
                                            <span class="num">168,500</span>
                                            <span class="won">원</span>
                                        </dd>
                                    </dl>
                                    <dl class="amount">
                                        <dt class="tit">상품할인금액</dt>
                                        <dd class="price">
                                            <span class="num minus">
                                                13,900
                                            </span>
                                            <span class="won">원</span>
                                        </dd>
                                    </dl>
                                    <dl class="amount">
                                        <dt class="tit">배송비</dt>
                                        <dd class="price">
                                            <span class="num">0</span>
                                            <span class="won">원</span>
                                        </dd>
                                    </dl>
                                    <dl class="amount lst">
                                        <dt class="tit">결제예정금액</dt>
                                        <dd class="price">
                                            <span class="num">154,600</span>
                                            <span class="won">원</span>
                                        </dd>
                                    </dl>
                                    <!-- 적립은 세션에 고객정보있을 때 뜨게 만들기(등급 반영) -->
                                    <div class="reserve">
                                        <span class="bage">적립</span>
                                        구매 시
                                        <span class="emph">
                                            7,730
                                            원 적립
                                        </span>
                                    </div>
                                </div>
                                <div class="btn_submit">
                                    <button type="button" class="btn disabled">상품을 담아주세요</button>
                                    <!-- 주소랑 상품이 모두 있을 때 주문하기 버튼이 나타나게 css적용하기 -->
                                    <!-- <button type="button" class="btn active">주문하기</button> -->
                                </div>
                                <div class="notice">
                                    <!-- 쿠폰/적립금 안내문도 if문 걸어서 고객 정보 있을 때 띄우기 -->
                                    <span class="txt">
                                        <span class="ico">·</span>
                                        쿠폰/적립금은 주문서에서 사용 가능합니다.
                                    </span>
                                    <!-- 밑 두개 안내문은 공통 -->
                                    <span class="txt">
                                        <span class="ico">·</span>
                                        ‘입금확인’ 상태일 때는 주문 내역 상세에서 직접 주문취소가 가능합니다.
                                    </span>
                                    <span class="txt">
                                        <span class="ico">·</span>
                                        ‘입금확인’ 이후 상태에는 고객센터로 문의해주세요.
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <div class="footer_wrap">
		<jsp:include page="../include/footer.jsp"></jsp:include>
	</div>
	
	
</body>
</html>