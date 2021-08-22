<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path }/resources/css/main.css" />
<link rel="stylesheet" href="${path }/resources/css/font.css" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons|Material+Icons+Outlined" rel="stylesheet" />
</head>
<body>
	<div class="header">
		<jsp:include page="include/header.jsp"></jsp:include>
	</div>
	<div id="main">
        <!-- 상단 광고 -->
        <div id="goods">
            <div id="event_slide">
                <div id="event"></div>
            </div>
            <ul id="event_selector">
                <li class="select"><div id="e_1" onclick="getEventId(this.id)"></div></li>
                <li class="select"><div id="e_2" onclick="getEventId(this.id)"></div></li>
                <li class="select"><div id="e_3" onclick="getEventId(this.id)"></div></li>
                <li class="select"><div id="e_4" onclick="getEventId(this.id)"></div></li>
                <li class="select"><div id="e_5" onclick="getEventId(this.id)"></div></li>
                <li class="select"><div id="e_6" onclick="getEventId(this.id)"></div></li>
            </ul>
        </div>
        <!-- 이 상품 어때요 -->
        <div id="product_list">
            <div id="tit_goods"> <!-- title -->
                <h3 id="tit">이 상품 어때요?</h3>
            </div>
            <div class="view_port">
                <ul class="item_list">
                    <li class="items">
                        <div onclick="location.href='https://www.kurly.com/shop/goods/goods_view.php?&goodsno=81561'"><img src='../assets/감자.jpg' alt='items'></div>     
                        <span class='product_name'><a href=''>[바븐] 민물장어 (자포니카) 400g 내외 (생물)</a></span> <br>  
                        <span class="price_tag"><span class='discounted_price'>6%</span>&emsp;<span style='font-size: 17px; color: #333; font-weight: 1000;'>27,180원</span></span>
                        <span class='price'>29,000원</span>              
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="items"></div> 
                        <span class="product_name"><a href="">무농약 마틸다 토마토 2kg</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">10%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">13,392원</span></span>
                        <span class="price">14,800원</span>              
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="items"></div> 
                        <span class="product_name"><a href="">무농약 마틸다 토마토 2kg</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">10%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">13,392원</span></span>
                        <span class="price">14,800원</span>               
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="items"></div> 
                        <span class="product_name"><a href="">무농약 마틸다 토마토 2kg</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">10%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">13,392원</span></span>
                        <span class="price">14,800원</span></span>                
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="items"></div> 
                        <span class="product_name"><a href="">무농약 마틸다 토마토 2kg</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">10%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">13,392원</span></span>
                        <span class="price">14,800원</span></span>                
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="items"></div> 
                        <span class="product_name"><a href="">무농약 마틸다 토마토 2kg</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">10%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">13,392원</span></span>
                        <span class="price">14,800원</span></span>                
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="items"></div> 
                        <span class="product_name"><a href="">무농약 마틸다 토마토 2kg</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">10%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">13,392원</span></span>
                        <span class="price">14,800원</span></span>                
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="items"></div> 
                        <span class="product_name"><a href="">무농약 마틸다 토마토 2kg</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">10%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">13,392원</span></span>
                        <span class="price">14,800원</span></span>                
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="kimchi"></div> 
                        <span class="product_name"><a href="">[비비고] 썰은 배추김치</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">7%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">5,440원</span></span>
                        <span class="price">5,900원</span></span>                
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="kimchi"></div> 
                        <span class="product_name"><a href="">[비비고] 썰은 배추김치</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">7%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">5,440원</span></span>
                        <span class="price">5,900원</span></span>                
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="kimchi"></div> 
                        <span class="product_name"><a href="">[비비고] 썰은 배추김치</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">7%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">5,440원</span></span>
                        <span class="price">5,900원</span></span>                
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="kimchi"></div> 
                        <span class="product_name"><a href="">[비비고] 썰은 배추김치</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">7%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">5,440원</span></span>
                        <span class="price">5,900원</span></span>                
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="kimchi"></div> 
                        <span class="product_name"><a href="">[비비고] 썰은 배추김치</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">7%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">5,440원</span></span>
                        <span class="price">5,900원</span></span>                
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="kimchi"></div> 
                        <span class="product_name"><a href="">[비비고] 썰은 배추김치</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">7%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">5,440원</span></span>
                        <span class="price">5,900원</span></span>                
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="kimchi"></div> 
                        <span class="product_name"><a href="">[비비고] 썰은 배추김치</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">7%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">5,440원</span></span>
                        <span class="price">5,900원</span></span>                
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="kimchi"></div> 
                        <span class="product_name"><a href="">[비비고] 썰은 배추김치</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">7%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">5,440원</span></span>
                        <span class="price">5,900원</span></span>                
                    </li>
                </ul>
                <div class="right_btn">
                    <span style="color: rgb(80, 80, 80); font-size: 25px;" class="material-icons-outlined">
                        arrow_forward_ios
                    </span>
                </div>
                <div class="left_btn">
                    <span style="color: rgb(80, 80, 80); font-size: 25px;" class="material-icons-outlined">
                        arrow_back_ios
                    </span>
                </div>
            </div>
        </div>
        <!-- 특가 혜택 -->
        <div id="main_event" style="background-color: rgb(242, 242, 242);">
            <div id="tit_goods"> <!-- title -->
                <h3 id="tit"><a href="">특가 / 혜택 <span style="color: #333; font-size: 25px;" class="material-icons-outlined">
                    arrow_forward_ios
                </span></a></h3>
            </div>
            <div class="view_port">
                <ul id="event_list">
                    <li class="events">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="events"></div> 
                        <span class="event_name"><a href="">솔가 최대 46% 할인</a></span> <br>
                        <span class="event_info">미국에서 온 프리미엄 영양제</span>
                    </li>
                    <li class="events">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="events"></div> 
                        <span class="event_name"><a href="">스텐 주방용품 최대 15% 할인</a></span> <br>
                        <span class="event_info">디자인과 내구성, 모두 잡고 싶다면</span>
                    </li>
                    <li class="events">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="events"></div> 
                        <span class="event_name"><a href="">Kurly's 간편식 최대 20% 할인</a></span> <br>
                        <span class="event_info">컬리답게 만든</span>
                    </li>
                </ul>
            </div>
        </div>
        <!-- 놓치면 후회할 가격 -->
        <div id="product_list">
            <div id="tit_goods"> <!-- title -->
                <h3 id="tit"><a href="">놓치면 후회할 가격 <span style="color: #333; font-size: 25px;" class="material-icons-outlined">
                    arrow_forward_ios
                </span></a></h3>
            </div>
            <div class="view_port">
                <ul class="item_list">
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="items"></div> 
                        <span class="product_name"><a href="">무농약 마틸다 토마토 2kg</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">10%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">13,392원</span></span>
                        <span class="price">14,800원</span></span>                
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="items"></div> 
                        <span class="product_name"><a href="">무농약 마틸다 토마토 2kg</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">10%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">13,392원</span></span>
                        <span class="price">14,800원</span></span>                
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="items"></div> 
                        <span class="product_name"><a href="">무농약 마틸다 토마토 2kg</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">10%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">13,392원</span></span>
                        <span class="price">14,800원</span></span>                
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="items"></div> 
                        <span class="product_name"><a href="">무농약 마틸다 토마토 2kg</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">10%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">13,392원</span></span>
                        <span class="price">14,800원</span></span>                
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="kimchi"></div> 
                        <span class="product_name"><a href="">[비비고] 썰은 배추김치</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">7%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">5,440원</span></span>
                        <span class="price">5,900원</span></span>                
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="kimchi"></div> 
                        <span class="product_name"><a href="">[비비고] 썰은 배추김치</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">7%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">5,440원</span></span>
                        <span class="price">5,900원</span></span>                
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="kimchi"></div> 
                        <span class="product_name"><a href="">[비비고] 썰은 배추김치</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">7%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">5,440원</span></span>
                        <span class="price">5,900원</span></span>                
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="kimchi"></div> 
                        <span class="product_name"><a href="">[비비고] 썰은 배추김치</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">7%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">5,440원</span></span>
                        <span class="price">5,900원</span></span>                
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="kimchi"></div> 
                        <span class="product_name"><a href="">[비비고] 썰은 배추김치</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">7%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">5,440원</span></span>
                        <span class="price">5,900원</span></span>                
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="kimchi"></div> 
                        <span class="product_name"><a href="">[비비고] 썰은 배추김치</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">7%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">5,440원</span></span>
                        <span class="price">5,900원</span></span>                
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="kimchi"></div> 
                        <span class="product_name"><a href="">[비비고] 썰은 배추김치</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">7%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">5,440원</span></span>
                        <span class="price">5,900원</span></span>                
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="kimchi"></div> 
                        <span class="product_name"><a href="">[비비고] 썰은 배추김치</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">7%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">5,440원</span></span>
                        <span class="price">5,900원</span></span>                
                    </li>
                </ul>
                <div class="right_btn">
                    <span style="color: rgb(80, 80, 80); font-size: 25px;" class="material-icons-outlined">
                        arrow_forward_ios
                    </span>
                </div>
                <div class="left_btn">
                    <span style="color: rgb(80, 80, 80); font-size: 25px;" class="material-icons-outlined">
                        arrow_back_ios
                    </span>
                </div>
            </div>
        </div>
        <!-- 중간광고 -->
        <div>
            <div id="middle_ad1" onclick="location.href=''"></div>
        </div>
        <!-- MD의 추천 -->
        <div id="md_recommend">
            <div id="tit_goods"> <!-- title -->
                <h3 id="tit">MD의 추천</h3>
            </div>
            <div id="md_category"><!-- 카테고리 -->
                <ul id="list_category">
                    <li><a id="list_1"  data-title="채소"  onclick="getId(this.id)" class="md_list" href="#none">채소</a></li>
                    <li><a id="list_2"  data-title="과일"  onclick="getId(this.id)" class="md_list" href="#none">과일·견과·쌀</a></li>
                    <li><a id="list_3"  data-title="수산"  onclick="getId(this.id)" class="md_list" href="#none">수산·해산·건어물</a></li>
                    <li><a id="list_4"  data-title="정육" onclick="getId(this.id)" class="md_list" href="#none">정육·계란</a></li>
                    <li><a id="list_5"  data-title="국" onclick="getId(this.id)" class="md_list" href="#none">국·반찬·메인요리</a></li>
                    <li><a id="list_6"  data-title="샐러드" onclick="getId(this.id)" class="md_list" href="#none">샐러드·간편식</a></li>
                    <li><a id="list_7"  data-title="면" onclick="getId(this.id)" class="md_list" href="#none">면·양념·오일</a></li>
                    <li><a id="list_8"  data-title="생수" onclick="getId(this.id)" class="md_list" href="#none">생수·음료·우유·커피</a></li>
                    <li><a id="list_9"  data-title="간식" onclick="getId(this.id)" class="md_list" href="#none">간식·과자·떡</a></li>
                    <li><a id="list_10" data-title="베이커리" onclick="getId(this.id)"  class="md_list" href="#none">베이커리·치즈·델리</a></li>
                    <li><a id="list_11" data-title="건강식품" onclick="getId(this.id)"  class="md_list" href="#none">건강식품</a></li>
                    <li><a id="list_12" data-title="생활용품" onclick="getId(this.id)"  class="md_list" href="#none">생활용품·리빙</a></li>
                    <li><a id="list_13" data-title="스킨케어" onclick="getId(this.id)"  class="md_list" href="#none">스킨케어·메이크업</a></li>
                    <li><a id="list_14" data-title="헤어" onclick="getId(this.id)"  class="md_list" href="#none">헤어·바디·구강</a></li>
                    <li><a id="list_15" data-title="주방용품" onclick="getId(this.id)"  class="md_list" href="#none">주방용품</a></li>
                    <li><a id="list_16" data-title="가전제품" onclick="getId(this.id)"  class="md_list" href="#none">가전제품</a></li>
                    <li><a id="list_17" data-title="베이비" onclick="getId(this.id)"  class="md_list" href="#none">베이비·키즈</a></li>
                    <li><a id="list_18" data-title="반려동물" onclick="getId(this.id)"  class="md_list" href="#none">반려동물</a></li>
                </ul>
            </div>
            <div class="view_port">
                <ul id="md_list" class="item_list">
                    <li class="items" class='pre-ani'>
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="items"></div> 
                        <span class="product_name"><a href="">무농약 마틸다 토마토 2kg</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">10%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">13,392원</span></span>
                        <span class="price">14,800원</span></span>                
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="items"></div> 
                        <span class="product_name"><a href="">호박잎 150g</a></span> <br>
                        <span class="price_tag"><span style="font-size: 17px; color: #333; font-weight: 1000;">2,490원</span></span>
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="items"></div> 
                        <span class="product_name"><a href="">무농약 마틸다 토마토 2kg</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">10%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">13,392원</span></span>
                        <span class="price">14,800원</span></span>                
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="items"></div> 
                        <span class="product_name"><a href="">무농약 마틸다 토마토 2kg</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">10%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">13,392원</span></span>
                        <span class="price">14,800원</span></span>                
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="items"></div> 
                        <span class="product_name"><a href="">무농약 마틸다 토마토 2kg</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">10%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">13,392원</span></span>
                        <span class="price">14,800원</span></span>                
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="items"></div> 
                        <span class="product_name"><a href="">무농약 마틸다 토마토 2kg</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">10%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">13,392원</span></span>
                        <span class="price">14,800원</span></span>                
                    </li>
                </ul>
                <div class="right_btn">
                    <span style="color: rgb(80, 80, 80); font-size: 25px;" class="material-icons-outlined">
                        arrow_forward_ios
                    </span>
                </div>
                <div class="left_btn">
                    <span style="color: rgb(80, 80, 80); font-size: 25px;" class="material-icons-outlined">
                        arrow_back_ios
                    </span>
                </div>
            </div>
            <div id="link_cate">
                <a id="link_a" href="../TEST/채소.html"><span id="list_name">채소</span> 전체보기
                    <span style="position: relative; top: 3px;  font-size: 17px;" class="material-icons-outlined">
                    arrow_forward_ios
                    </span>
                </a>
            </div>
        </div>
        <!-- 중간광고 -->
        <div>
            <div id="middle_ad2" onclick="location.href=''">
                <strong>장바구니 자랑하면 5천원의 행운이 매일!</strong>
                <span>매일 20분께 적립금 혜택!</span>
            </div>
        </div>
        <!-- 지금 가장 핫한 상품 -->
        <div id="product_list">
            <div id="tit_goods"> <!-- title -->
                <h3 id="tit"><a href="">지금 가장 핫한 상품 <span style="color: #333; font-size: 25px;" class="material-icons-outlined">
                    arrow_forward_ios
                </span></a></h3>
            </div>
            <div class="view_port">
                <ul class="item_list">
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="items"></div> 
                        <span class="product_name"><a href="">무농약 마틸다 토마토 2kg</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">10%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">13,392원</span></span>
                        <span class="price">14,800원</span></span>                
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="items"></div> 
                        <span class="product_name"><a href="">무농약 마틸다 토마토 2kg</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">10%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">13,392원</span></span>
                        <span class="price">14,800원</span></span>                
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="items"></div> 
                        <span class="product_name"><a href="">무농약 마틸다 토마토 2kg</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">10%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">13,392원</span></span>
                        <span class="price">14,800원</span></span>                
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="items"></div> 
                        <span class="product_name"><a href="">무농약 마틸다 토마토 2kg</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">10%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">13,392원</span></span>
                        <span class="price">14,800원</span></span>                
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="kimchi"></div> 
                        <span class="product_name"><a href="">[비비고] 썰은 배추김치</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">7%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">5,440원</span></span>
                        <span class="price">5,900원</span></span>                
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="kimchi"></div> 
                        <span class="product_name"><a href="">[비비고] 썰은 배추김치</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">7%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">5,440원</span></span>
                        <span class="price">5,900원</span></span>                
                    </li>
                </ul>
                <div class="right_btn">
                    <span style="color: rgb(80, 80, 80); font-size: 25px;" class="material-icons-outlined">
                        arrow_forward_ios
                    </span>
                </div>
                <div class="left_btn">
                    <span style="color: rgb(80, 80, 80); font-size: 25px;" class="material-icons-outlined">
                        arrow_back_ios
                    </span>
                </div>
            </div>
        </div>
        <!-- 집콕을 즐겁게 최대 30% 할인 -->
        <div id="product_list" style="background-color: rgb(242, 242, 242);">
            <div id="tit_goods"> <!-- title -->
                <h3 id="tit"><a href="">집콕을 즐겁게! 최대 30% 할인 <span style="color: #333; font-size: 25px;" class="material-icons-outlined">
                    arrow_forward_ios
                </span></a></h3>
            </div>
            <div class="view_port">
                <ul class="item_list">
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="items"></div> 
                        <span class="product_name"><a href="">무농약 마틸다 토마토 2kg</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">10%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">13,392원</span></span>
                        <span class="price">14,800원</span></span>                
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="items"></div> 
                        <span class="product_name"><a href="">무농약 마틸다 토마토 2kg</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">10%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">13,392원</span></span>
                        <span class="price">14,800원</span></span>                
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="items"></div> 
                        <span class="product_name"><a href="">무농약 마틸다 토마토 2kg</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">10%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">13,392원</span></span>
                        <span class="price">14,800원</span></span>                
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="items"></div> 
                        <span class="product_name"><a href="">무농약 마틸다 토마토 2kg</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">10%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">13,392원</span></span>
                        <span class="price">14,800원</span></span>                
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="kimchi"></div> 
                        <span class="product_name"><a href="">[비비고] 썰은 배추김치</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">7%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">5,440원</span></span>
                        <span class="price">5,900원</span></span>                
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="kimchi"></div> 
                        <span class="product_name"><a href="">[비비고] 썰은 배추김치</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">7%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">5,440원</span></span>
                        <span class="price">5,900원</span></span>                
                    </li>
                </ul>
                <div class="right_btn">
                    <span style="color: rgb(80, 80, 80); font-size: 25px;" class="material-icons-outlined">
                        arrow_forward_ios
                    </span>
                </div>
                <div class="left_btn">
                    <span style="color: rgb(80, 80, 80); font-size: 25px;" class="material-icons-outlined">
                        arrow_back_ios
                    </span>
                </div>
            </div>
        </div>
        <!-- 365일 최저가 도전! -->
        <div id="product_list2">
            <div id="tit_goods"> <!-- title -->
                <h3 id="tit_main"><a href="">365일 최저가 도전<span style="color: #333; font-size: 25px;" class="material-icons-outlined">
                    arrow_forward_ios
                </span></a></h3>
                <h5 id="tit_under">최저가 도전, 365일 언제나 알뜰하게</h5>
            </div>
            <div class="view_port">
                <ul class="item_list">
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="items"></div> 
                        <span class="product_name"><a href="">무농약 마틸다 토마토 2kg</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">10%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">13,392원</span></span>
                        <span class="price">14,800원</span></span>                
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="items"></div> 
                        <span class="product_name"><a href="">무농약 마틸다 토마토 2kg</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">10%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">13,392원</span></span>
                        <span class="price">14,800원</span></span>                
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="items"></div> 
                        <span class="product_name"><a href="">무농약 마틸다 토마토 2kg</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">10%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">13,392원</span></span>
                        <span class="price">14,800원</span></span>                
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="items"></div> 
                        <span class="product_name"><a href="">무농약 마틸다 토마토 2kg</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">10%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">13,392원</span></span>
                        <span class="price">14,800원</span></span>                
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="kimchi"></div> 
                        <span class="product_name"><a href="">[비비고] 썰은 배추김치</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">7%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">5,440원</span></span>
                        <span class="price">5,900원</span></span>                
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="kimchi"></div> 
                        <span class="product_name"><a href="">[비비고] 썰은 배추김치</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">7%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">5,440원</span></span>
                        <span class="price">5,900원</span></span>                
                    </li>
                </ul>
                <div class="right_btn">
                    <span style="color: rgb(80, 80, 80); font-size: 25px;" class="material-icons-outlined">
                        arrow_forward_ios
                    </span>
                </div>
                <div class="left_btn">
                    <span style="color: rgb(80, 80, 80); font-size: 25px;" class="material-icons-outlined">
                        arrow_back_ios
                    </span>
                </div>
            </div>
        </div>
        <!-- 삶의 질 상승, 생활가전 특가 -->
        <div id="product_list" style="background-color: rgb(242, 242, 242);">
            <div id="tit_goods"> <!-- title -->
                <h3 id="tit"><a href="">삶의 질 상승, 생활가전 특가<span style="color: #333; font-size: 25px;" class="material-icons-outlined">
                    arrow_forward_ios
                </span></a></h3>
            </div>
            <div class="view_port">
                <ul class="item_list">
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="items"></div> 
                        <span class="product_name"><a href="">무농약 마틸다 토마토 2kg</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">10%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">13,392원</span></span>
                        <span class="price">14,800원</span></span>                
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="items"></div> 
                        <span class="product_name"><a href="">무농약 마틸다 토마토 2kg</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">10%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">13,392원</span></span>
                        <span class="price">14,800원</span></span>                
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="items"></div> 
                        <span class="product_name"><a href="">무농약 마틸다 토마토 2kg</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">10%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">13,392원</span></span>
                        <span class="price">14,800원</span></span>                
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="items"></div> 
                        <span class="product_name"><a href="">무농약 마틸다 토마토 2kg</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">10%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">13,392원</span></span>
                        <span class="price">14,800원</span></span>                
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="kimchi"></div> 
                        <span class="product_name"><a href="">[비비고] 썰은 배추김치</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">7%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">5,440원</span></span>
                        <span class="price">5,900원</span></span>                
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="kimchi"></div> 
                        <span class="product_name"><a href="">[비비고] 썰은 배추김치</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">7%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">5,440원</span></span>
                        <span class="price">5,900원</span></span>                
                    </li>
                </ul>
                <div class="right_btn">
                    <span style="color: rgb(80, 80, 80); font-size: 25px;" class="material-icons-outlined">
                        arrow_forward_ios
                    </span>
                </div>
                <div class="left_btn">
                    <span style="color: rgb(80, 80, 80); font-size: 25px;" class="material-icons-outlined">
                        arrow_back_ios
                    </span>
                </div>
            </div>
        </div>
        <!-- 설레는 캠핑 -->
        <div id="product_list2">
            <div id="tit_goods"> <!-- title -->
                <h3 id="tit_main"><a href="">설레는 캠핑<span style="color: #333; font-size: 25px;" class="material-icons-outlined">
                    arrow_forward_ios
                </span></a></h3>
                <h5 id="tit_under">캠핑 식재료부터 용품까지 맞춤 제안</h5>
            </div>
            <div class="view_port">
                <ul class="item_list">
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="items"></div> 
                        <span class="product_name"><a href="">무농약 마틸다 토마토 2kg</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">10%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">13,392원</span></span>
                        <span class="price">14,800원</span></span>                
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="items"></div> 
                        <span class="product_name"><a href="">무농약 마틸다 토마토 2kg</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">10%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">13,392원</span></span>
                        <span class="price">14,800원</span></span>                
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="items"></div> 
                        <span class="product_name"><a href="">무농약 마틸다 토마토 2kg</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">10%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">13,392원</span></span>
                        <span class="price">14,800원</span></span>                
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="items"></div> 
                        <span class="product_name"><a href="">무농약 마틸다 토마토 2kg</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">10%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">13,392원</span></span>
                        <span class="price">14,800원</span></span>                
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="kimchi"></div> 
                        <span class="product_name"><a href="">[비비고] 썰은 배추김치</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">7%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">5,440원</span></span>
                        <span class="price">5,900원</span></span>                
                    </li>
                    <li class="items">
                        <div onclick="location.href=''"><img src="../assets/감자.jpg" alt="kimchi"></div> 
                        <span class="product_name"><a href="">[비비고] 썰은 배추김치</a></span> <br>
                        <span class="price_tag"><span class="discounted_price">7%</span>&emsp;<span style="font-size: 17px; color: #333; font-weight: 1000;">5,440원</span></span>
                        <span class="price">5,900원</span></span>                
                    </li>
                </ul>
                <div class="right_btn">
                    <span style="color: rgb(80, 80, 80); font-size: 25px;" class="material-icons-outlined">
                        arrow_forward_ios
                    </span>
                </div>
                <div class="left_btn">
                    <span style="color: rgb(80, 80, 80); font-size: 25px;" class="material-icons-outlined">
                        arrow_back_ios
                    </span>
                </div>
            </div>
        </div>
        <br><br><br><br>
        <!-- 마지막광고 -->
        <div>
            <div id="last_ad" onclick="location.href=''"></div>
        </div>
        <div class="footer_wrap">
			<jsp:include page="include/footer.jsp"></jsp:include>
		</div>
    </div>
	
	<script type="text/javascript" src="${path }/resources/js/style/main.js"></script>
</body>
</html>