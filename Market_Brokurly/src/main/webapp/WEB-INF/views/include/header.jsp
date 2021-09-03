<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path }/resources/css/header.css" />
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons|Material+Icons+Outlined" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body oncontextmenu="return false">
	<form action="/brokurly/customer/mypage/destination" id="destination_btn"></form>
	<form action="/brokurly/main" method="GET" id="logoutForm"></form>
	<form action="/brokurly/products/productsearch_page" id="searchForm"></form>
	 <div id="header">
        <div id="user_menu">
            <!-- 배송안내버튼 -->
            <div id="delivery_info">
                <a onclick="window.open('${path}/deliverybyrisingstar','샛별배송','width=1000,height=500,location=no,status=no,scrollbars=yes');">
                    <img id="infoBtn" src="${path }/resources/img/icon/ico_delivery.png" alt="샛별 배송 안내">
                </a>
            </div>
            <!-- 우측 상단 메뉴 -->
            <div id="user_info">
	            <c:if test="${sessionScope.customer_id eq null }">
	                <div id="sign_up"><a href="${path}/customer/signup"><span style="color: green;">회원가입</span></a></div>
	                <div id="login"><a href="${path}/customer/signin"><span>로그인</span></a></div>
	            </c:if>
	            <c:if test="${sessionScope.customer_id ne null }">	            	
	                <c:if test="${sessionScope.customer_grade eq 'WELCOME' }">
	                	<div class="ico_grade class0"><span>웰컴</span></div>
	                </c:if>
	                <c:if test="${sessionScope.customer_grade eq 'NORMAL' }">
	                	<div class="ico_grade class1"><span>놀말</span></div>
	                </c:if>
	                <c:if test="${sessionScope.customer_grade eq 'FRIENDS' }">
	                	<div class="ico_grade class2"><span>친구</span></div>
	                </c:if>
	                <c:if test="${sessionScope.customer_grade eq 'GREEN' }">
	                	<div class="ico_grade class3"><span>초록</span></div>
	                </c:if>
	                <c:if test="${sessionScope.customer_grade eq 'ASPARAGUS' }">
	                	<div class="ico_grade class4"><span>아파</span></div>
	                </c:if>
	                <c:if test="${sessionScope.customer_grade eq 'BROCCOLI' }">
	                	<div class="ico_grade class5"><span>브콜</span></div>
	                </c:if>
	                <div id="login" onclick="Mclick_customer()"><span>${sessionScope.customer_name }님</span><span style="font-size: 5px;">▼</span></div>
	            </c:if>
	                <div id="service_center" onclick="Mclick_service()"><span>고객센터</span><span style="font-size: 5px;">▼</span></div>
            </div>
            <ul id="customer_menu">
            	<li><a href="${path}/customer/mypage/orderlist">주문 내역</a></li>
            	<li><a href="${path}/customer/mypage/destination">배송지 관리</a></li>
            	<li><a href="${path}/customer/mypage/review">상품 후기</a></li>
            	<li><a href="${path}/customer/mypage/inquiry">상품 문의</a></li>
            	<li><a href="${path}/customer/mypage/point">적립금</a></li>
            	<li><a href="${path}/customer/mypage/coupon">쿠폰</a></li>
            	<li><a href="${path}/customer/mypage/myinfo">개인 정보 수정</a></li>
            	<li><a type="button" id="logout">로그아웃</a></li>            	
            </ul>
            <ul id="service_menu" >
                <li><a href="">공지사항</a></li>
                <li><a href="">자주하는 질문</a></li>
                <li><a href="">1:1 문의</a></li>
                <li><a href="">상품 제안</a></li>
            </ul>
        </div>
        <div id="title">
            <div id="logo">
                <a href="${path}/main">
                    <img src="${path }/resources/img/icon/ico_logo.jpg" alt="Logo">
                </a>
            </div> <!-- 로고 -->
        </div>
         <div id="gnb_menu"> <!-- 항시 고정되는 메뉴 -->
            <div id="gnb">
                <div class="gnb_menus"></div>
                <div id="cate" class="gnb_menus" >
                    <span id="cate_icon" class="material-icons">menu</span>
                    <span id="cate_text">&nbsp;전체 카테고리<div id="main_category_box"><!-- 카테고리 -->
                        <ul id="main_category">
                            <li id="vegetable" class="mainCate_text">
                                <a class="mca" value="10">
                                    채소&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;
                                </a>
                                <ul id="sub_vegetable" ><!-- 채소 -->
                                    <li value="11" class="subs"><a href="">고구마·감자·당근</a></li>
                                    <li value="12" class="subs"><a href="">시금치·쌈채소·나물</a></li>
                                    <li value="13" class="subs"><a href="">브로콜리·파프리카·양배추</a></li>
                                    <li value="14" class="subs"><a href="">양파·대파·마늘·배추</a></li>
                                    <li value="15" class="subs"><a href="">오이·호박·고추</a></li>
                                    <li value="16" class="subs"><a href="">냉동·이색·간편채소</a></li>
                                    <li value="17" class="subs"><a href="">콩나물·버섯</a></li>
                                </ul>
                            </li>
                            <li id="fruit" class="mainCate_text">
                                <a class="mca" value="20">
                                    과일·견과·쌀&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                </a>
                                <ul id="sub_fruit" ><!-- 과일 견과 쌀 -->
                                    <li value="21" class="subs"><a href="">생과일</a></li>
                                    <li value="22" class="subs"><a href="">냉동·건과일</a></li>
                                    <li value="23" class="subs"><a href="">견과류</a></li>
                                    <li value="24" class="subs"><a href="">쌀·잡곡</a></li>
                                </ul>
                            </li>
                            <li id="seafood" class="mainCate_text">
                                <a class="mca" value="30">
                                    수산·해산·건어물&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                </a>
                                <ul id="sub_seafood" > <!-- 수산 해산 건어물 -->
                                    <li value="31" class="subs"><a href="">생선류</a></li>
                                    <li value="32" class="subs"><a href="">오징어·낙지·문어</a></li>
                                    <li value="33" class="subs"><a href="">새우·게·랍스터</a></li>
                                    <li value="34" class="subs"><a href="">조개류</a></li>
                                    <li value="35" class="subs"><a href="">해조류</a></li>
                                    <li value="36" class="subs"><a href="">건어물</a></li>
                                    <li value="37" class="subs"><a href="">가공품</a></li>
                                </ul>
                            </li>
                            <li id="meat" class="mainCate_text">
                                <a class="mca" value="40">
                                    정육·계란&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                </a>
                                <ul id="sub_meat" > <!-- 정육 계란 -->
                                    <li value="41" class="subs"><a href="">소고기</a></li>
                                    <li value="42" class="subs"><a href="">돼지고기</a></li>
                                    <li value="43" class="subs"><a href="">닭·오리고기</a></li>
                                    <li value="44" class="subs"><a href="">양념육·돈까스</a></li>
                                    <li value="45" class="subs"><a href="">계란류</a></li>
                                    <li value="46" class="subs"><a href="">양고기</a></li>
                                </ul>
                            </li>
                            <li id="soup" class="mainCate_text">
                                <a class="mca" value="50">
                                    국·반찬·메인요리&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                </a>
                                <ul id="sub_soup" > <!-- 국 반찬 메인요리 -->
                                    <li value="51" class="subs"><a href="">국·탕·찌개</a></li>
                                    <li value="52" class="subs"><a href="">메인요리</a></li>
                                    <li value="53" class="subs"><a href="">밑반찬</a></li>
                                    <li value="54" class="subs"><a href="">김치·젓갈·장류</a></li>
                                    <li value="55" class="subs"><a href="">두부·어묵·부침개</a></li>
                                    <li value="56" class="subs"><a href="">베이컨·햄·통조림</a></li>
                                </ul>
                            </li>
                            <li id="salad" class="mainCate_text">
                                <a class="mca" value="60">
                                    샐러드·간편식&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                </a>
                                <ul id="sub_salad" ><!-- 샐러드 간편식 -->
                                    <li value="61" class="subs"><a href="">샐러드·닭가슴살</a></li>
                                    <li value="62" class="subs"><a href="">도시락·밥류</a></li>
                                    <li value="63" class="subs"><a href="">파스타·면류</a></li>
                                    <li value="64" class="subs"><a href="">피자·핫도그·만두</a></li>
                                    <li value="65" class="subs"><a href="">폭립·떡갈비·안주</a></li>
                                    <li value="66" class="subs"><a href="">선식·시리얼</a></li>
                                </ul>
                            </li>
                            <li id="noodle" class="mainCate_text">
                                <a class="mca" value="70">
                                    면·양념·오일&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                </a>
                                <ul id="sub_noodle" > <!-- 면 양념 오일 -->
                                    <li value="71" class="subs"><a href="">파스타·면류</a></li>
                                    <li value="72" class="subs"><a href="">식초·소스·드레싱</a></li>
                                    <li value="73" class="subs"><a href="">양념·액젓·장류</a></li>
                                    <li value="74" class="subs"><a href="">식용유·참기름·오일</a></li>
                                    <li value="75" class="subs"><a href="">소금·설탕·향신료</a></li>
                                    <li value="76" class="subs"><a href="">밀가루·가루·믹스</a></li>
                                </ul>
                            </li>
                            <li id="drink" class="mainCate_text">
                                <a class="mca" value="80">
                                    생수·음료·우유·커피&emsp;&emsp;&emsp;&emsp;&emsp;
                                </a>
                                <ul id="sub_drink" > <!-- 생수 음료 우유 커피 -->
                                    <li value="81" class="subs"><a href="">생수·탄산수</a></li>
                                    <li value="82" class="subs"><a href="">음료·주스</a></li>
                                    <li value="83" class="subs"><a href="">우유·두유·요거트</a></li>
                                    <li value="84" class="subs"><a href="">커피</a></li>
                                    <li value="85" class="subs"><a href="">차</a></li>
                                </ul>
                            </li>
                            <li id="dessert" class="mainCate_text">
                                <a class="mca" value="90">
                                    간식·과자·떡&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                </a>
                                <ul id="sub_dessert" > <!-- 간식 과자 떡 -->
                                    <li value="91" class="subs"><a href="">과자·스낵·쿠키</a></li>
                                    <li value="92" class="subs"><a href="">초콜릿·젤리·캔디</a></li>
                                    <li value="93" class="subs"><a href="">떡·한과</a></li>
                                    <li value="94" class="subs"><a href="">아이스크림</a></li>
                                </ul>
                            </li>
                            <li id="bakery" class="mainCate_text">
                                <a class="mca" value="100">
                                    베이커리·치즈·델리&emsp;&emsp;&emsp;&emsp;&emsp;
                                </a>
                                <ul id="sub_bakery" > <!-- 베이커리 치즈 델리 -->
                                    <li value="101" class="subs"><a href="">식빵·빵류</a></li>
                                    <li value="102" class="subs"><a href="">잼·버터·스프레드</a></li>
                                    <li value="103" class="subs"><a href="">치즈</a></li>
                                </ul>
                            </li>
                            <li id="health" class="mainCate_text">
                                <a class="mca" value="110">
                                    건강식품&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                </a>
                                <ul id="sub_health" > <!-- 건강식품 -->
                                    <li value="111" class="subs"><a href="">건강식품</a></li>
                                </ul>
                            </li>
                            <li id="life" class="mainCate_text">
                                <a class="mca" value="120">
                                    생활용품·리빙&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                </a>
                                <ul id="sub_life" > <!-- 생활용품 리빙 -->
                                    <li value="121" class="subs"><a href="">휴지·티슈</a></li>
                                    <li value="122" class="subs"><a href="">세제·청소용품</a></li>
                                    <li value="123" class="subs"><a href="">여성·의약·인테리어</a></li>
                                    <li value="124" class="subs"><a href="">캠핑용품</a></li>
                                </ul>
                            </li>
                            <li id="skincare" class="mainCate_text">
                                <a class="mca" value="130">
                                    스킨케어·메이크업&emsp;&emsp;&emsp;&emsp;&emsp;
                                </a>
                                <ul id="sub_skincare" > <!-- 스킨케어·메이크업 -->
                                    <li value="131" class="subs"><a href="">스킨케어·메이크업</a></li>
                                </ul>
                            </li>
                            <li id="hair" class="mainCate_text">
                                <a class="mca" value="140">
                                    헤어·바디·구강&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                </a>
                                <ul id="sub_hair" > <!-- 헤어 바디 구강 -->
                                    <li value="141" class="subs"><a href="">헤어</a></li>
                                    <li value="142" class="subs"><a href="">바디</a></li>
                                    <li value="143" class="subs"><a href="">구강</a></li>
                                </ul>
                            </li>
                            <li id="kitchen" class="mainCate_text">
                                <a class="mca" value="150">
                                    주방용품&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                </a>
                                <ul id="sub_kitchen" > <!-- 주방용품 -->
                                    <li value="151" class="subs"><a href="">잡화</a></li>
                                    <li value="152" class="subs"><a href="">조리도구</a></li>
                                    <li value="153" class="subs"><a href="">보관용기</a></li>
                                    <li value="154" class="subs"><a href="">컵·잔·커피도구</a></li>
                                </ul>
                            </li>
                            <li id="appliances" class="mainCate_text">
                                <a class="mca" value="160">
                                    가전제품&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                </a>
                                <ul id="sub_appliances" > <!-- 가전제품 -->
                                    <li value="161" class="subs"><a href="">주방가전</a></li>
                                    <li value="162" class="subs"><a href="">생활가전</a></li>
                                    <li value="163" class="subs"><a href="">디지털·PC</a></li>
                                    <li value="164" class="subs"><a href="">대형·설치가전</a></li>
                                </ul>
                            </li>
                            <li id="baby" class="mainCate_text">
                                <a class="mca" value="170">
                                     베이비·키즈&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                </a>
                                <ul id="sub_baby" > <!-- 베이비 키즈 -->
                                    <li value="171" class="subs"><a href="">분유·간편식·이유식</a></li>
                                    <li value="172" class="subs"><a href="">건강식품·음료</a></li>
                                    <li value="173" class="subs"><a href="">기저귀·물티슈·스킨</a></li>
                                </ul>
                            </li>
                            <li id="pet" class="mainCate_text" >
                                <a class="mca" value="180">
                                    반려동물&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                </a>
                                <ul id="sub_pet" > <!-- 반려동물 -->
                                    <li value="181" class="subs"><a href="">강아지</a></li>
                                    <li value="182" class="subs"><a href="">고양이</a></li>
                                    <li value="183" class="subs"><a href="">배변·위생·용품</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div></span>
                </div>
                <a href="" class="gnb_menus">신상품</a>
                <a href="" class="gnb_menus"> 베스트</a>
                <a href="" class="gnb_menus">알뜰쇼핑</a>
                <a href="" class="gnb_menus"> 특가/혜택</a>
                <div></div>
                <div class="gnb_menus">
                    <!--  검색창  -->
                    <div id="inSearch">
                        <input id="search" type="text" placeholder="검색어를 입력해주세요">
                        <span id="reading_glasses" class="material-icons"><a type="button" id="search_a">search</a></span>
                    </div>
                </div>
                <!-- 배송지 아이콘  -->
                <div class="gnb_menus">
                    <span id="room" class="material-icons-outlined" style="font-size: 30px;">room
                    </span>
                    <div id="location">
	                    <c:if test="${sessionScope.customer_id eq null }">
	                        <div id="noAddress">
	                            <div id="noAdd_text">
	                                <span style="color: seagreen;">배송지를 등록</span>하고 <br> 구매 가능한 상품을 확인하세요!
	                            </div>
	                            <div id="button_double">
	                                <button id="login_Btn" onclick="location.href='${path}/customer/signin'">로그인</button>
	                                <button id="address_Btn">주소검색</button>
	                            </div>
	                        </div>								                    
	                	</c:if>
	                	<c:if test="${sessionScope.customer_id ne null }">
	                		<div id="yesAddress">
		                		<div id="noAdd_text">${sessionScope.address_main } ${sessionScope.address_detail } </div>
		                		<div id="button_double">
		                			<button id="address_Btn">배송지 변경</button>
		                		</div>
	                		</div>
	                	</c:if>
                    </div>
                </div>
                <!-- 장바구니 아이콘 -->
                <div class="gnb_menus">
                    <a href="${path}/cart/cartlist">
                        <span id="cart" class="material-icons-outlined" style="font-size: 30px;">shopping_cart</span>
               	  	</a>
                </div>
                <div class="gnb_menus"> </div>
            </div>
        </div> <!-- gnb_menu -->
    </div>
    <script src="${path }/resources/js/style/header.js"></script>
    
</body>
</html>