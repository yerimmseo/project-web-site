<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마켓브로컬리 :: 내일의 장보기, 마켓브로컬리</title>
<link rel="stylesheet" href="${path }/resources/css/font.css" />
<link rel="stylesheet" href="${path }/resources/css/cart.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
</head>
<body>
	<div class="header">
		<jsp:include page="../include/header.jsp"></jsp:include>
	</div>
	<div class="main">
		<div class="content">
			<h3 class="screen_out">장바구니 상품 목록</h3>
			<div class="only_pc" id="cartItemList">
				<div>
					<div class="cart_item">
						<div class="cart_select">
							<div class="inner_select">
								<label class="check" for="allCheck"> <input
									type="checkbox" name="allCheck" id="allCheck"
									class="all_check_input" checked="checked"> <span
									class="ico"></span> 전체 선택
								</label> <a type="button" class="btn_delete" id="selectDelete_btn"
									onclick="deleteValue(this);"> 선택삭제 </a>
							</div>
							<c:if test="${empty map.list}">
								<div class="inner_empty">
									<p class="txt">장바구니에 담긴 상품이 없습니다</p>
								</div>
							</c:if>
						</div>
						<c:if test="${!empty map.list}">
							<c:forEach var="i" items="${map.list}" begin="0">
								<div class="box room">
									<ul class="list">
										<li>
											<div class="item">
												<label class="check"> <input type="checkbox"
													id="chBox" class="chBox" data-cart_id="${i.cart_id}"
													value="${i.cart_id}" name="rowch" checked="checked">
													<span class="ico"></span>
												</label>
												<div class="name">
													<div class="inner_name">
														<a class="package">${i.product_name}</a>
													</div>
												</div>
												<div class="goods">
													<a class="thumb"
														style="background-image: url('${path}/resources/img/product/maincategory${i.maincate_id }/${i.product_id }.jpg');">상품이미지</a>
													<div class="price">
														<div class="in_price">
															<span class="selling"> <!-- 할인율 적용된 가격 --> <fmt:formatNumber
																	value="${i.money}" pattern="#,###,###" /> <span
																class="won">원</span>
															</span> <span class="cost"> <!-- 원가 --> <fmt:formatNumber
																	value="${i.trueMoney}" pattern="#,###,###" /> <span
																class="won">원</span>
															</span>
														</div>
														<div class="stamper count">
															<input type="hidden" id="${i.product_id}" class="count"
																name="${i.product_id }count" value="${i.cart_count}" />
															<input type="button" name="cart_count" id="changeCount"
																class="btn minus" value="감소"
																onclick="updateCount(${i.product_id}, this, ${i.product_id }+'m');" />
															<input type="number" class="num" name="count" readonly
																value="<fmt:formatNumber value="${i.cart_count}"/>">
															<input type="button" name="cart_count" id="changeCount"
																value="추가" class="btn plus"
																onclick="updateCount(${i.product_id}, this, ${i.product_id }+'p');">
														</div>
													</div>
													<a class="btn_delete"
														href="${path}/cart/delete?cart_id=${i.cart_id}">삭제</a>
												</div>
											</div>
										</li>
									</ul>
								</div>
							</c:forEach>
						</c:if>
					</div>
					<div class="cart_result">
						<div class="inner_result">
							<div class="cart_delivery">
								<h3 class="tit">배송지</h3>
								<!-- 배송지가 없는 경우 -->
								<div class="no_address">
									<c:if test="${empty sessionScope.address_main}">
										<span class="emph">배송지를 입력</span>
                                        하고
                                        <br>
										<input type="hidden" id="address_main" />
                                        배송유형을 확인해 보세요!
                                        <a
											class="btn default new_address"> <span class="ico"></span>
											주소 검색
										</a>
									</c:if>
								</div>
								<form id="addressForm" class="addressForm">
									<!-- 배송지가 있는 경우 -->
									<c:if test="${!empty sessionScope.address_main}">
										<div class="address">
											<p class="addr" id="address_main">
												${sessionScope.address_main}</p>
											<p class="addr" id="address_detail">
												${sessionScope.address_detail}</p>
											<span class="delivery star">샛별배송</span> <a
												class="btn default research_btn">배송지 변경</a>
										</div>
									</c:if>
								</form>
							</div>
							<div class="amount_view">
								<dl class="amount">
									<dt class="tit">상품금액</dt>
									<dd class="price">
										<!-- 원가 -->
										<span class="num"> <fmt:formatNumber
												value="${sumMoney}" pattern="#,###,###" />
										</span> <span class="won">원</span>
									</dd>
								</dl>
								<dl class="amount">
									<dt class="tit">상품할인금액</dt>
									<dd class="price">
										<span class="num minus"> <fmt:formatNumber
												value="${map.diff}" pattern="#,###,###" />
										</span> <span class="won">원</span>
									</dd>
								</dl>
								<dl class="amount">
									<dt class="tit">배송비</dt>
									<dd class="price">
										<span class="num"> <fmt:formatNumber value="${map.fee}"
												pattern="#,###,###" />
										</span> <span class="won">원</span>
									</dd>
								</dl>
								<dl class="amount lst">
									<dt class="tit">결제예정금액</dt>
									<dd class="price">
										<span class="num"> <fmt:formatNumber value="${map.sum}"
												pattern="#,###,###" />
										</span> <input type="hidden" id="sumSum" value="${map.sum}" /> <span
											class="won">원</span>
									</dd>
								</dl>
								<!-- 적립은 세션에 고객정보있을 때 뜨게 만들기(등급 반영) -->
								<div class="reserve">
									<span class="bage">적립</span> 구매 시 <span class="emph"> <c:if
											test="${grade eq 'BROCCOLI' }">
											<fmt:formatNumber value="${(sumMoney - map.diff) * 0.07}"
												pattern="#,###,###" />
										</c:if> <c:if test="${grade eq 'ASPARAGUS' }">
											<fmt:formatNumber value="${(sumMoney - map.diff) * 0.07}"
												pattern="#,###,###" />
										</c:if> <c:if test="${grade eq 'GREEN' }">
											<fmt:formatNumber value="${(sumMoney - map.diff) * 0.05}"
												pattern="#,###,###" />
										</c:if> <c:if test="${grade eq 'FRIENDS' }">
											<fmt:formatNumber value="${(sumMoney - map.diff) * 0.03}"
												pattern="#,###,###" />
										</c:if> <c:if test="${grade eq 'NORMAL' }">
											<fmt:formatNumber value="${(sumMoney - map.diff) * 0.01}"
												pattern="#,###,###" />
										</c:if> <c:if test="${grade eq 'WELCOME' }">
											<fmt:formatNumber value="${(sumMoney - map.diff) * 0.05}"
												pattern="#,###,###" />
										</c:if> 원 적립
									</span>
								</div>
							</div>
							<div class="btn_submit">
								<c:if test="${empty map.list}">
									<button type="button" class="btn disabled">상품을 담아주세요</button>
								</c:if>
								<!-- 주소랑 상품이 모두 있을 때 주문하기 버튼이 나타나게 css적용하기 -->
								<c:if test="${!empty map.list}">
									<button type="button" class="btn active" onclick="pay()">주문하기</button>
								</c:if>
							</div>
							<div class="notice">
								<!-- 쿠폰/적립금 안내문도 if문 걸어서 고객 정보 있을 때 띄우기 -->
								<span class="txt"> <span class="ico">·</span> 쿠폰/적립금은
									주문서에서 사용 가능합니다.
								</span>
								<!-- 밑 두개 안내문은 공통 -->
								<span class="txt"> <span class="ico">·</span> ‘입금확인’ 상태일
									때는 주문 내역 상세에서 직접 주문취소가 가능합니다.
								</span> <span class="txt"> <span class="ico">·</span> ‘입금확인’ 이후
									상태에는 고객센터로 문의해주세요.
								</span>
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
	<form action="cartlist" id="cartForm"></form>
	<script src="${path}/resources/js/ajax/cart_ajax.js"></script>
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		function updateCount(productId, ths, type) {
		    const xhttp = new XMLHttpRequest();
		    var input = $(ths).parents("div").find("input[name="+productId+"count]");
		    var count = input.val();
		    if (type== productId+'p') {
		        input.val(Number(count)+1);
		    } else {
		    	if(input.val() <= 1) {
		    		alert('수량은 1개 이상 선택해 주세요');
		    	} else {
			        input.val(Number(count)-1);
		    	}
		    }
		    xhttp.open('GET', '/brokurly/cart/update?product_id='+productId+'&cart_count='+input.val(), true);
		    xhttp.send();
		    $('#cartForm').submit();
		} 
	
	  function pay() {
          moneyValue = document.getElementById('sumSum').value;
          moneyValue2 = parseInt(moneyValue);
          var IMP = window.IMP; // 생략가능
          IMP.init('iamport'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
          IMP.request_pay({
              pg : 'inicis', // version 1.1.0부터 지원.
              pay_method : 'card',
              merchantuid : 'merchant' + new Date().getTime(),
              name : '주문명:결제테스트',
              amount : moneyValue2,
              buyer_email : 'iamport@siot.do',
              buyer_name : '구매자이름',
              buyer_tel : '010-1234-5678',
              buyer_addr : '서울특별시 강남구 삼성동',
              buyer_postcode : '123-456',
              m_redirect_url : 'https://www.yourdomain.com/payments/complete'
          }, function(rsp) {
              if ( rsp.success ) {
                  var msg = '결제가 완료되었습니다.';
                  msg += '고유ID : ' + rsp.imp_uid;
                  msg += '상점 거래ID : ' + rsp.merchant_uid;
                  msg += '결제 금액 : ' + rsp.paid_amount;
                  msg += '카드 승인번호 : ' + rsp.apply_num;
              } else {
                  var msg = '결제에 실패하였습니다.';
                  msg += '에러내용 : ' + rsp.error_msg;
              }
              alert(msg);
          });
      }
	</script>
</body>
</html>