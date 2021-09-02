<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<c:set var="size" value="${fn:length(content)}" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${path }/resources/css/product_detail.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons|Material+Icons+Outlined"
  rel="stylesheet">
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>상세페이지</title>
</head>
<body>
	<div class="header">
		<jsp:include page="../include/header.jsp"></jsp:include>
	</div>
   	<input type="hidden" id="pid" value="${proM.getProduct_id() }"/>
	<div id="content">
	    <div id="main_box_one">
			<div class="thumb">
	            <img src='${path }/resources/img/product/maincategory${main_id }/${proM.getProduct_id() }.jpg' alt="상품 대표 이미지" class="bg"> 
	        </div>
	        <div class="info">
	            <div id="goods_title">
	                <span class="main_name">${proM.getProduct_name() }</span>       
	            </div>      
            <c:if test="${discont > 0 }">
	            <p class="goods_dcinfo">회원할인가</p>
            </c:if>
                <span class="price_box">
                    <span class="dc_price">${discont_price }
                        <span class="won">원</span>
                    </span>	
                    <c:if test="${discont > 0 }">
	                    <span class="dc_percent">${discont }
	                        <span class="per">%</span>
	                    </span>
					</c:if>   
                </span>
                <c:if test="${discont > 0 }">
	                <a class="origin_price">
	                	<div class="origin_price_sub">
		                    <span class="price">${price }
		                        <span class="won_two">원</span>
		                    </span>
		                    <div id="question_mark">
		                        <span class="material-icons-outlined" style="font-size: 16px;">
		                            help_outline
		                        </span>
		                        <div id="price_info">
		                            <strong id="title_lay">컬리판매가 기준 할인</strong>
		                            <div id="sub_text">
		                                동일 품질 상품의 주요 온/오프라인 유통사 가격과 비교하여 컬리가 설정한 가격에서 할인된 가격입니다.                   
		                                적용된 할인가는 대표 상품의 가격으로 옵션에 따라 할인 혜택이 다를 수 있습니다. 할인 혜택은 당사 사정에 따라 변경될 수 있습니다. 
		                            </div>
		                        </div>
	                    	</div>
		                </div>
	                    
	                </a>
                </c:if>
                <c:choose>  
				    <c:when test="${customer_id eq null }">  
				       <div class="not_login">
	                    	<span>로그인 후, 회원할인가와 적립혜택이 제공됩니다.</span>
	                	</div> 
				    </c:when>
				    <c:otherwise>  
				       <div class="not_login">
	                    	<span class="ico_grade_deta"><strong>${grade } &nbsp ${percentage }%</strong>
		                    	<span class="point">개당 <strong>${accumulate }원 적립</strong></span>
	                    	</span>
	                	</div>  
				    </c:otherwise>   
                </c:choose>      
	            <div class="goods_info">
	                <dl class="de_list">
	                   <dt class="de_tit">판매단위</dt>
	                   <dd class="de_desc">${proM.getProduct_unit() }</dd>
	                </dl>
	                <dl class="de_list">
	                    <dt class="de_tit">배송구분</dt>
	                    <dd class="de_desc">샛별배송/택배배송</dd>
	               </dl>
	               <dl class="de_list">
	                   <dt class="de_tit">원산지</dt>
	                   <dd class="de_desc">${proM.getProduct_origin() }</dd>
	               </dl>
	               <dl class="de_list">
	                   <dt class="de_tit">포장타입</dt>
	                   <dd class="de_desc">냉장/종이포장
	                       <strong class="emph">택배배송은 에코포장이 스티로폼으로 대체됩니다.</strong>
	                   </dd>
	               </dl>
	               <dl class="de_list">
	                   <dt class="de_tit">안내사항</dt>
	                   <dd class="de_desc">- 해당 상품은 여러 협력업체에서 납품하고 있는 상품으로 수령시, 상이
	                       한 협력업체의 상품을 받아보실 수 있습니다.품질은 동일 기준으로 입고되고 있사오니 참고 부탁드립니다.
	                   </dd>
	               </dl>
	            </div>
	            <div id="cart_put">
	                <dl class="de_list list_padding">
	                    <dt class="de_tit" id="purchase_text">구매수량</dt>
	                    <dd class="de_desc option">
	                        <div class="count">
	                            <button type="button" class="btn down" onclick="btn_click('minus')">
	                                <span class="material-icons-outlined btnUD">remove</span>
	                            </button>
	                            <input class="inp" type="text" name="ct_qty" id="ct_qty" value="1" readonly="readonly">
	                            <button type="button" class="btn up" onclick="btn_click('plus')">
	                                <span class="material-icons-outlined btnUD">add</span>
	                            </button>
	                        </div> 
	                    </dd>
	                </dl>
	                <div class="total">
	                    <div class="total_price">
	                        <strong class="tpat">총 상품금액: </strong>
	                        <span class="sum">
	                            <span class="num sum_num">${discont_price }</span> 
	                            <span class="won">원</span>
	                        </span>
	                    </div>
				       <p class="txt_point">
	                        <span class="save_txt">적립</span>
	                     <c:choose>  
						    <c:when test="${customer_id eq null }">  
			                        <span id="no_login2">로그인 후, 회원할인가와 적립혜택 제공</span>
						    </c:when>
						    <c:otherwise>  
			                        <span id="point2">구매 시 <strong><span id="accumulate">${accumulate }</span>원 적립</strong></span>
						    </c:otherwise>   
		                </c:choose>  
	                    </p>	                    
	                </div>
	                <div class="group_btn off">
	                    <div id="restock">
	                        <button type="button" class="restock_btn">재입고 알림</button>
	                    </div>
	                    
	                    <c:choose>
		                <c:when test="${customer_id ne null }">
		                    <span class="btn_type1">
		                        <div class="basket">장바구니 담기</div> 
		                    </span>
		                </c:when>
		                <c:otherwise>
		                	<span class="btn_type1">
		                        <a href="http://localhost:8080/brokurly/customer/signin" 
		                        class="login_btn" style="font-weight: normal; font-size: 16px;">로그인 후 사용가능합니다.</a> 
		                    </span>
		                </c:otherwise>
	                </c:choose>
	                    
	                    
	                </div>
	            </div>
	        </div>
	    </div>
	    <div id="main_box_two">
	        <div class="view_infomation">
	            <div id="view_tab">
	                <ul class="view_tab_group">
	                    <li></li>
	                    <li id="tab1" class="view_tab_li" onclick="get_tab_id(this.id)">상품설명</li>
	                    <li id="tab2" class="view_tab_li" onclick="get_tab_id(this.id)">상세정보</li>
	                    <li id="tab3" class="view_tab_li" onclick="get_tab_id(this.id)">후기
<!-- 	                        <span class="count_review">(51643)</span> -->
	                    </li>
	                    <li id="tab4" class="view_tab_li" onclick="get_tab_id(this.id)">문의</li>
	                    <li></li>
	                </ul>
	            </div>
	        </div>
	        <div class="photo_detail">
	            <img class="img img1" src='${path }/resources/img/product_detail/maincategory${main_id }/${proM.getProduct_id() }_1.jpg'>
 					<div class="product_text"> 
		                <h1>
		                    <small><c:out value="${content.get(0)}" /></small>
		                    <c:forEach var="i" begin="1" end="${empty_index - 2}">
			                    <c:out value="${content.get(i)}" /> <br>
		                    </c:forEach>
		                </h1>
		                <p class="words"><c:out value="${content.get(empty_index - 1)}" /></p>
		            </div>
	            <img  class="img" src='${path }/resources/img/product_detail/maincategory${main_id }/${proM.getProduct_id() }_2.jpg'>
	        </div>
	        <div id="table"></div>
	        <c:choose>  
			    <c:when test="${empty_index eq -1 }">  
			    </c:when>
			    <c:otherwise>  
			        <c:forEach var="i" begin="${empty_index + 1}" end="${size - 1}" step="2">
				        <table width="100%" border="0" cellpadding="0" cellspacing="0" class="extra-information">
				            <tr>
				                <th scope="row" class="goods-view-form-table-heading"><c:out value="${content.get(i)}" /></th>
				                <td><c:out value="${content.get(i + 1)}" /></td>
				            </tr>
						</table>
					</c:forEach>
			    </c:otherwise>   
            </c:choose> 
	        <div class="whykurly_area">
	            <strong class="tit_whykurly">WHY KURLY</strong>
	            <div class="why_one">
	                <div class="col">
	                    <div class="icon">
	                        <img class="whykurly_img" src="https://res.kurly.com/pc/ico/1910/01_check.svg">
	                    </div> 
	                    <div class="info">
	                        <div class="title">깐깐한 상품위원회</div> 
	                        <div class="de_desc">
	                            <p>나와 내 가족이 먹고 쓸 상품을 고르는<br>      
	                                마음으로 매주 상품을 직접 먹어보고,<br>      
	                                경험해보고 성분, 맛, 안정성 등 다각도의<br>      
	                                기준을 통과한 상품만을 판매합니다.</p>
	                        </div>
	                    </div>
	                </div>
	                <div class="col">
	                    <div class="icon">
	                        <img class="whykurly_img" src="https://res.kurly.com/pc/ico/1910/02_only.svg">
	                    </div> 
	                    <div class="info">
	                        <div class="title">차별화된 Kurly Only 상품</div> 
	                        <div class="de_desc">
	                            <p>전국 각지와 해외의 훌륭한 생산자가<br>     
	                            믿고 선택하는 파트너, 마켓컬리.<br>      
	                            3천여 개가 넘는 컬리 단독 브랜드, 스펙의<br>      
	                            Kurly Only 상품을 믿고 만나보세요.</p> 
	                            <span class="etc">(온라인 기준 / 자사몰, 직구 제외)</span>
	                        </div>
	                    </div>
	                </div>
	                <div class="col">
	                    <div class="icon">
	                        <img class="whykurly_img" src="https://res.kurly.com/pc/ico/1910/03_cold.svg">
	                    </div> 
	                    <div class="info">
	                        <div class="title">신선한 풀콜드체인 배송</div> 
	                        <div class="de_desc">
	                            <p>온라인 업계 최초로 산지에서 문 앞까지<br>      
	                                상온, 냉장, 냉동 상품을 분리 포장 후<br>      
	                                최적의 온도를 유지하는 냉장 배송 시스템,<br>      
	                                풀콜드체인으로 상품을 신선하게 전해드립니다.</p> 
	                                <span class="etc">(샛별배송에 한함)</span>
	                        </div>
	                    </div>
	                </div>
	            </div>
	            <div class="why_two">
	                <div class="col">
	                    <div class="icon">
	                        <img class="whykurly_img" src="https://res.kurly.com/pc/ico/1910/04_price.svg">
	                    </div> 
	                    <div class="info">
	                        <div class="title">고객, 생산자를 위한 최선의 가격</div> 
	                        <div class="de_desc">
	                            <p>매주 대형 마트와 주요 온라인 마트의 가격<br>      
	                            변동 상황을 확인해 신선식품은 품질을<br>      
	                            타협하지 않는 선에서 최선의 가격으로,<br>      
	                            가공식품은 언제나 합리적인 가격으로<br>      
	                            정기 조정합니다.</p>
	                        </div>
	                    </div>
	                </div>
	                <div class="col">
	                    <div class="icon">
	                        <img class="whykurly_img" src="https://res.kurly.com/pc/ico/1910/05_eco.svg">
	                    </div> 
	                    <div class="info">
	                        <div class="title">환경을 생각하는 지속 가능한 유통</div> 
	                        <div class="de_desc">
	                            <p>친환경 포장재부터 생산자가 상품에만<br>      
	                                집중할 수 있는 직매입 유통구조까지,<br>      
	                                지속 가능한 유통을 고민하며 컬리를 있게<br>      
	                                하는 모든 환경(생산자, 커뮤니티, 직원)이<br>      
	                                더 나아질 수 있도록 노력합니다.</p>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	        <div class="happy_center_fst">
	            <div class="happy">
	                <h4 id="happy_tit">고객행복센터</h4>
	                <p class="happy_sub">
	                    <span id="happy_emph">궁금하신 점이나 서비스 이용에 불편한 점이 있으신가요?</span>
	                    문제가 되는 부분을 사진으로 찍어 아래 중 편하신 방법으로 접수해 주시면 빠르게 도와드리겠습니다.
	                </p>
	            </div>
	            <ul id="heppy_list">
	                <li>
	                    <span class="heppy_bar"></span>
	                    <div class="inquiry_tit">전화 문의 1644-1107</div>
	                    <div class="inquiry_sub">오전 7시~오후 7시 (연중무휴)</div>
	                </li>
	                <li>
	                    <span class="heppy_bar"></span>
	                    <div class="inquiry_tit">카카오톡 문의</div>
	                    <div class="inquiry_sub">오전 7시~오후 7시 (연중무휴)</div>
	                    <div class="expend">
	                    카카오톡에서 ’마켓컬리’를 검색 후<br>
	                    대화창에 문의 및 불편사항을<br>
	                    남겨주세요.
	                    </div>
	                </li>
	                <li>
	                    <span class="heppy_bar"></span>
	                    <div class="inquiry_tit">홈페이지 문의</div>
	                    <div class="inquiry_sub">
	                    24시간 접수 가능<br>
	                    로그인 &gt; 마이컬리 &gt; 1:1 문의
	                    </div>
	                    <div class="expend">
	                    고객센터 운영 시간에 순차적으로 <br>
	                    답변해드리겠습니다.
	                    </div>
	                </li>
	            </ul>
	        </div>
	        <div class="happy_center">
	            <div class="happy_refund">
	                <h4 class="refund_tit">교환 및 환불 안내</h4>
	                <p class="refund_sub">교환 및 환불이 필요하신 경우 고객행복센터로 문의해주세요.</p>
	                <a data-child-id="refund" href="#none" class="asked">
	                <details> 
	                    <summary class="detail_txt" data-open="자세히 보기" data-close="닫기">
	                        <span id="more_txt">자세히 보기</span>
	                        <span id="less_txt">닫기</span>
	                        <span id="more_ico" class="material-icons-outlined">expand_more</span>
	                        <span id="less_ico" class="material-icons-outlined">expand_less</span>
	                    </summary>
	                    <div class="happy_faq faq_fst">
	                        <span class="item">01. 상품에 문제가 있는 경우</span>
	                        <div id="refund1" class="questions hide">
	                            <p class="de_desc">받으신 상품이 표시·광고 내용 또는 계약 내용과 
	                                다른 경우에는 상품을 받은 날부터 3개월 이내, 
	                                그 사실을 알게 된 날부터 30일 이내에 
	                                교환 및 환불을 요청하실 수 있습니다.
	                            </p>
	                            <p class="de_desc">상품의 정확한 상태를 확인할 수 있도록 
	                                사진을 함계 보내주시면 더 빠른 상담이 가능합니다.
	                            </p>
	                            <p class="noti">※ 상품에 문제가 있는 것으로 확인되면 배송비는 컬리가 부담합니다.</p>
	                        </div>
	                    </div>
	                    <div class="happy_faq">
	                        <span class="item">02. 단순 변심, 주문 착오의 경우</span>
	                        <div id="refund2" class="questions hide">
	                            <strong class="subject">신선 / 냉장 / 냉동 식품</strong>
	                            <p class="de_desc">재판매가 불가한 상품의 특성상, 
	                                단순 변심, 주문 착오 시 
	                                교환 및 반품이 어려운 점 양해 부탁드립니다.</p>
	                            <p class="de_desc">상품에 따라 조금씩 맛이 다를 수 있으며, 
	                                개인의 기호에 따라 같은 상품도 다르게 느끼실 수 있습니다.
	                            </p>
	                            <strong class="subject subj2">유통기한 30일 이상 식품 
	                                (신선 / 냉장 / 냉동 제외) &amp; 기타 상품
	                            </strong>
	                            <p class="de_desc">상품을 받은 날부터 7일 이내에 
	                                고객행복센터로 문의해주세요.
	                            </p>
	                            <p class="noti">※ 단순 변심으로 인한 교환 또는 환불의 경우 
	                                고객님께서 배송비 6,000원을 부담하셔야 합니다. 
	                                (주문 건 배송비를 결제하셨을 경우 3,000원)
	                            </p>
	                        </div>
	                    </div>
	                    <div class="happy_faq faq_last">
	                        <span class="item">03. 교환·반품이 불가한 경우</span>
	                        <div id="refund3" class="questions hide">
	                            <p class="de_desc">다음에 해당하는 교환·환불 신청은 
	                                처리가 어려울 수 있으니 양해 부탁드립니다.
	                            </p>
	                            <ul class="list_questions">
	                                <li>고객님의 책임 있는 사유로 상품이 멸실되거나 훼손된 경우 <br>
	                                    (단, 상품의 내용을 확인하기 위해 포장 등을 훼손한 경우는 제외)
	                                </li>
	                                <li>고객님의 사용 또는 일부 소비로 상품의 가치가 감소한 경우</li>
	                                <li>시간이 지나 다시 판매하기 곤란할 정도로 상품의 가치가 감소한 경우</li>
	                                <li>복제가 가능한 상품의 포장이 훼손된 경우</li>
	                                <li>고객님의 주문에 따라 개별적으로 생산되는 
	                                    상품의 제작이 이미 진행된 경우
	                                </li>
	                            </ul>
	                        </div>
	                    </div>
	                </details>
	                </a>
	            </div>
	        </div>
	        <div class="goods-view-infomation-content" id="goods-review" data-load="0">
	            <div class="board">
	                <form name="frmList">
	                    <input type="hidden" name="sort" value="">
	                    <input type="hidden" name="page_num" value="">
	                    <input type="hidden" name="goodsno" value="70">
	                    <h2>PRODUCT REVIEW</h2>
	                    <div class="sort-wrap">
	                        <div class="list_type1 old">
	                            <span>
	                                <span class="ico"></span>
	                                <p class="explanation_txt">상품에 대한 문의를 남기는 공간입니다. 해당 게시판의 성격과 다른 글은 사전동의 없이 담당 게시판으로 이동될 수 있습니다.</p> <br>
	
	                                <span class="ico"></span>
	                                <p class="explanation_txt">배송관련, 주문(취소/교환/환불)관련 문의 및 요청사항은 마이컬리 내 <a href="#none" onclick="window.parent.location.href = '/shop/mypage/mypage_qna.php'" class="emph1_1">1:1 문의</a>
	                                에 남겨주세요.</p>
	                            </span>
	                            <div class="sort" style="bottom:-9px">
	                                <select onchange="this.form.sort.value=this.value;this.form.submit()">
	                                    <option value="1">최근등록순</option>
	                                    <option value="2">좋아요많은순</option>
	                                    <option value="3">조회많은순</option>
	                                </select>
	                            </div>
	                        </div>
	                    </div>
	                    <table class="xans_board_listheader" width="100%" border="0" cellpadding="0" cellspacing="0">
	                        <colgroup>
	                            <col style="width:40px;">
	                            <col style="width:auto;">
	                            <col style="width:30px;">
	                            <col style="width:40px;">
	                            <col style="width:55px;">
	                            <col style="width:30px;">
	                            <col style="width:40px;">
	                        </colgroup>
	                        <tbody>
	                            <tr>
	                                <th scope="col" class="input_txt">번호</th>
	                                <th scope="col" class="input_txt">제목</th>
	                                <th scope="col" class="input_txt"><span class="screen_out">회원 등급</span></th>
	                                <th scope="col" class="input_txt writer_le">작성자</th>
	                                <th scope="col" class="input_txt">작성일</th>
	                                <th scope="col" class="input_txt">도움</th>
	                                <th scope="col" class="input_txt">조회</th>
	                            </tr>
	                        </tbody>
	                    </table>
	                    <div class="tr_line">
	                        <table class="xans_board_listheader table_sub" width="100%" border="0" cellpadding="0" cellspacing="0">
	                            <colgroup>
	                                <col style="width:40px;">
	                                <col style="width:auto;">
	                                <col style="width:30px;">
	                                <col style="width:40px;">
	                                <col style="width:55px;">
	                                <col style="width:30px;">
	                                <col style="width:40px;">
	                            </colgroup>
	                            <tbody>
	                                <tr>
	                                    <th scope="col" class="input_txt">공지</th>
	                                    <th scope="col" class="input_txt input_tit">제목</th>
	                                    <th scope="col" class="input_txt"><span class="screen_out">회원 등급</span></th>
	                                    <th scope="col" class="input_txt writer_le">작성자</th>
	                                    <th scope="col" class="input_txt">작성일</th>
	                                    <th scope="col" class="input_txt">도움</th>
	                                    <th scope="col" class="input_txt">조회</th>
	                                </tr>
	                            </tbody>
	                        </table>
	                    </div>
	                    <div class="tr_line">
	                        <table class="xans_board_listheader table_sub" width="100%" border="0" cellpadding="0" cellspacing="0">
	                            <colgroup>
	                                <col style="width:40px;">
	                                <col style="width:auto;">
	                                <col style="width:30px;">
	                                <col style="width:40px;">
	                                <col style="width:55px;">
	                                <col style="width:30px;">
	                                <col style="width:40px;">
	                            </colgroup>
	                            <tbody>
	                                <tr>
	                                    <th scope="col" class="input_txt">공지</th>
	                                    <th scope="col" class="input_txt input_tit">제목</th>
	                                    <th scope="col" class="input_txt"><span class="screen_out">회원 등급</span></th>
	                                    <th scope="col" class="input_txt writer_le">작성자</th>
	                                    <th scope="col" class="input_txt">작성일</th>
	                                    <th scope="col" class="input_txt">도움</th>
	                                    <th scope="col" class="input_txt">조회</th>
	                                </tr>
	                            </tbody>
	                        </table>
	                    </div>
	                    <div class="tr_line">
	                        <table class="xans_board_listheader table_sub" width="100%" border="0" cellpadding="0" cellspacing="0">
	                            <colgroup>
	                                <col style="width:40px;">
	                                <col style="width:auto;">
	                                <col style="width:30px;">
	                                <col style="width:40px;">
	                                <col style="width:55px;">
	                                <col style="width:30px;">
	                                <col style="width:40px;">
	                            </colgroup>
	                            <tbody>
	                                <tr>
	                                    <th scope="col" class="input_txt">공지</th>
	                                    <th scope="col" class="input_txt input_tit">제목</th>
	                                    <th scope="col" class="input_txt"><span class="screen_out">회원 등급</span></th>
	                                    <th scope="col" class="input_txt writer_le">작성자</th>
	                                    <th scope="col" class="input_txt">작성일</th>
	                                    <th scope="col" class="input_txt">도움</th>
	                                    <th scope="col" class="input_txt">조회</th>
	                                </tr>
	                            </tbody>
	                        </table>
	                    </div>
	                    <div class="tr_line">
	                        <table class="xans_board_listheader table_sub" width="100%" border="0" cellpadding="0" cellspacing="0">
	                            <colgroup>
	                                <col style="width:40px;">
	                                <col style="width:auto;">
	                                <col style="width:30px;">
	                                <col style="width:40px;">
	                                <col style="width:55px;">
	                                <col style="width:30px;">
	                                <col style="width:40px;">
	                            </colgroup>
	                            <tbody>
	                                <tr>
	                                    <th scope="col" class="input_txt">공지</th>
	                                    <th scope="col" class="input_txt input_tit">제목</th>
	                                    <th scope="col" class="input_txt"><span class="screen_out">회원 등급</span></th>
	                                    <th scope="col" class="input_txt writer_le">작성자</th>
	                                    <th scope="col" class="input_txt">작성일</th>
	                                    <th scope="col" class="input_txt">도움</th>
	                                    <th scope="col" class="input_txt">조회</th>
	                                </tr>
	                            </tbody>
	                        </table>
	                    </div>
	                    <div class="tr_line">
	                        <table class="xans_board_listheader table_sub sub_last" width="100%" border="0" cellpadding="0" cellspacing="0">
	                            <colgroup>
	                                <col style="width:40px;">
	                                <col style="width:auto;">
	                                <col style="width:30px;">
	                                <col style="width:40px;">
	                                <col style="width:55px;">
	                                <col style="width:30px;">
	                                <col style="width:40px;">
	                            </colgroup>
	                            <tbody>
	                                <tr>
	                                    <th scope="col" class="input_txt">공지</th>
	                                    <th scope="col" class="input_txt input_tit">제목</th>
	                                    <th scope="col" class="input_txt"><span class="screen_out">회원 등급</span></th>
	                                    <th scope="col" class="input_txt writer_le">작성자</th>
	                                    <th scope="col" class="input_txt">작성일</th>
	                                    <th scope="col" class="input_txt">도움</th>
	                                    <th scope="col" class="input_txt">조회</th>
	                                </tr>
	                            </tbody>
	                        </table>
	                    </div>
	                </form>
	            </div>
	        </div>
	  </div>
	</div>
<div class="footer_wrap">
	<jsp:include page="../include/footer.jsp"></jsp:include>
</div>
</body>
<script src="${path }/resources/js/style/product_detail.js"></script>
<script src="${path }/resources/js/ajax/product_detail_ajax.js"></script>
</html>