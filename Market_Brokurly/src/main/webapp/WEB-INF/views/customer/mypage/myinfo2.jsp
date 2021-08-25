<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<c:set var="grade" value="${customer.customer_grade }"/>
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
	                                <strong class="name">${customer.customer_name }님</strong>
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
	                                    	<fmt:formatNumber value="${customer.customer_mileage }" pattern="#,###,###" /> 원
	                                        <span class="expire">소멸 예정 0원</span>
	                                    </p>
	                                </a>
	                                <a href="" class="link_wrap">
	                                    <div class="link_title">
	                                        쿠폰
	                                        <img src="${path }/resources/img/icon/ico_arrow_right.png" alt="" class="arrow_right">
	                                    </div>
	                                    <div class="spacer"></div>
	                                    <p class="info">${customer.customer_coupon } 개</p>
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
								<li id="myinfo" class="on">
									<a>개인 정보 수정</a>
								</li>
							</ul>
						</div>
						<a href="" class="link_inquire">
							<span class="emph">도움이 필요하신가요 ?</span>
							1:1 문의하기
						</a>
					</div>
					<!-- 개인 정보 수정할 때 비밀번호 일치 시 테이블 등장 -->
					<div id="update_myinfo_box" class="page_section section_myinfo update_myinfo">
	                    <div class="head_article">
							<h2 class="tit">개인 정보 수정</h2>
						</div>
						<div class="type_form member_join member_mod">
							<form action="" method="POST">
								<table class="tbl_comm">
									<tbody>
										<tr class="fst">
											<th>
												아이디
												<span class="ico">
													*
													<span class="screen_out">필수항목</span>
												</span>
											</th>
											<td>
												<input type="text" value="${customer.customer_id }" class="inp_read" readonly="readonly">
											</td>
										</tr>
										<tr>
											<th>현재 비밀번호</th>
											<td>
												<input type="password" class="pw_input" id="now_customer_pw" />
												<p class="txt_guide square pw_guide">
													<span class="txt txt_case4">
														현재 비밀번호를 확인해주세요
													</span>
												</p>
											</td>
										</tr>
										<tr class="member_pwd">
											<th>새 비밀번호</th>
											<td>
												<input type="password" class="reg_pw new_pw_input" id="update_pw">
												<input type="hidden" class="now_pw" value="${customer_pw }">
												<p class="txt_guide square new_pw_guide">
													<span class="txt" id="pwcheck_now">
														현재 비밀번호와 다르게 입력
													</span>
													<span class="txt" id="pwcheck_length">
														8자 이상 입력
													</span>
													<span class="txt" id="pwcheck_language">
														영문/숫자/특수문자(공백 제외)만 허용하며, 2개 이상 조합
													</span>
													<span class="txt" id="pwcheck_num">
														동일한 숫자 3개 이상 연속 사용 불가
													</span>
												</p>
											</td>
										</tr>
										<tr class="member_pwd">
											<th>새 비밀번호 확인</th>
											<td>
												<input type="password" class="confirm_pw chk_new_pw_input" id="chk_update_pw">
												<p class="txt_guide square chk_new_pw_guide">
													<span class="txt" id="confirm_pw">
														동일한 비밀번호를 입력해주세요.
													</span>
												</p>
											</td>
										</tr>
										<tr>
											<th>
												이름
												<span class="ico">
													*
													<span class="screen_out">필수항목</span>
												</span>
											</th>
											<td>
												<input type="text" value="${customer.customer_name }" id="customer_name" placeholder="이름을 입력해주세요">
											</td>
										</tr>
										<tr>
											<th>
												이메일
												<span class="ico">
													*
													<span class="screen_out">필수항목</span>
												</span>
											</th>
											<td>
												<input type="text" value="${customer.customer_email }" id="customer_email" size="30" placeholder="예: marketbrokurly@brokurly.com">
												<a class="btn default" id="email_chk_btn">중복확인</a>
											</td>
										</tr>
										<tr class="field_phone">
											<th>
												휴대폰
												<span class="ico">
													*
													<span class="screen_out">필수항목</span>
												</span>
											</th>
											<td>
												<div class="phone_num">
													<input type="text" value="${customer.customer_tel }" class="inp" placeholder="숫자만 입력해주세요">
													<button class="btn default other_chk_btn" type="button">다른번호 인증</button>
												</div>
												<div class="code_num" style="display: none;">
													<input type="text" size="6">
													<button class="btn default" type="button">인증번호 확인</button>
													<p class="count_down"></p>
												</div>
												<p class="txt_guide code_num_guide">
													<span class="txt receive">
														인증번호가 오지 않는다면, 통신사 스팸 차단 서비스 혹은 휴대폰 번호
														차단 여부를 확인해주세요. (마켓브로컬리 1611-1111)
													</span>
												</p>
											</td>
										</tr>
										<tr class="select_gender">
											<th>성별</th>
											<td>
												<label class="">
													<input type="radio" name="gender">
													<span class="ico"></span>
													남자
												</label>
												<label>
													<input type="radio" name="gender">
													<span class="ico"></span>
													여자
												</label>
												<label class="checked">
													<input type="radio" name="gender" checked="checked">
													<span class="ico"></span>
													선택안함
												</label>
											</td>
										</tr>
										<tr class="birth field_birth">
											<th>생년월일</th>
											<td>
												<div class="birth_day">
													<input type="text" size="4" class="birth_input" placeholder="YYYY">
													<span class="bar"></span>
													<input type="text" size="2" class="birth_input" placeholder="MM">
													<span class="bar"></span>
													<input type="text" size="2" class="birth_input" placeholder="DD">
												</div>
												<p class="txt_guide">
													<span class="txt bad"></span>
												</p>
											</td>
										</tr>
										<tr>
											<th>선택약관 동의</th>
											<td class="reg_agree">
												<div class="check_view">
													<label class="label_block check_agree">
														<input type="checkbox">
														<span class="ico"></span>
														개인정보 수집·이용 동의
														<span class="sub">(선택)</span>
													</label>
													<a class="link btn_link btn_choice">
														약관보기
													</a>
												</div>
												<div class="layer layer_choice">
													<div class="inner_layer">
														<div class="in_layer">
															<h4 class="tit_layer">
																개인정보 수집·이용 동의
																<span class="sub">(선택)</span>
															</h4>
															<div class="box_tbl">
																<table>
																	<caption class="screen_out">개인정보의 수집 및 이용목적</caption>
																	<thead>
																		<tr>
																			<th scope="row" class="tit1">수집 목적</th>
																			<th scope="row" class="tit2">수집 항목</th>
																			<th scope="row" class="tit3">보유 기간</th>
																		</tr>
																	</thead>
																	<tbody>
																		<tr>
																			<td>맞춤형 회원 서비스 제공</td>
																			<td>성별, 생년월일</td>
																			<td class="emph">
																				회원 탈퇴
																				<br>
																				즉시 파기
																			</td>
																		</tr>
																	</tbody>
																</table>
															</div>
															<p class="txt_service">
																동의를 거부하시는 경우에도 서비스는 이용하실 수 있습니다.
															</p>
														</div>
														<button type="button" class="btn_ok">
															<span class="txt_type">확인</span>
														</button>
														<button type="button" class="btn_close">
															<span class="screen_out">레이어 닫기</span>
														</button>
													</div>
												</div>
											</td>
										</tr>
										<tr class="reg_agree">
											<th>
												이용약관동의
												<span class="ico">
													*
												</span>
											</th>
											<td>
												<div class="bg_dim"></div>
												<div class="check_view">
													<label class="label_block check_agree">
														<input type="checkbox" name="chk">
														<span class="ico"></span>
														무료배송, 할인쿠폰 등 혜택/정보 수신 동의
														<span class="sub">(선택)</span>
													</label>
													<div class="check_event email_sms">
														<label class="label_block check_agree">
															<input type="checkbox" name="chk">
															<span class="ico"></span>
															SMS
														</label>
														<label class="label_block check_agree">
															<input type="checkbox" name="chk">
															<span class="ico"></span>
															이메일
														</label>
													</div>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
								<div class="form_footer">
									<a class="btn default">탈퇴하기</a>
									<a type="button" class="btn active" id="update_btn">회원정보수정</a>
								</div>
							</form>
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
</body>
</html>