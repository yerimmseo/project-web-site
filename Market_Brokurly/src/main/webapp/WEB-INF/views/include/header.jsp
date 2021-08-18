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
</head>
<body>
	 <div id="header">
        <div id="user_menu">
            <!-- 배송안내버튼 -->
            <div id="delivery_info">
                <a href="">
                    <img id="infoBtn" src="${path }/resources/img/icon/ico_delivery.png" alt="샛별 배송 안내">
                </a>
            </div>
            <!-- 우측 상단 메뉴 -->
            <div id="user_info">
                <div id="sign_up"><a href=""><span style="color: green;">회원가입</span></a></div>
                <div id="login"><a href=""><span>로그인</span></a></div>
                <div id="service_center" onclick="Mclick_service()"><span>고객센터</span><span style="font-size: 5px;">▼</span></div>
            </div>
            <ul id="service_menu" >
                <li><a href="">공지사항</a></li>
                <li><a href="">자주하는 질문</a></li>
                <li><a href="">1:1 문의</a></li>
                <li><a href="">상품 제안</a></li>
            </ul>
        </div>
        <div id="title">
            <div id="logo">
                <a href="">
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
                                <a href="" id="mca">
                                    채소&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;
                                </a>
                                <ul id="sub_vegetable" ><!-- 채소 -->
                                    <li class="subs"><a href="">고구마·감자·당근&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">시금치·쌈채소·나물&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">브로콜리·파프리카·양배추</a></li>
                                    <li class="subs"><a href="">양파·대파·마늘·배추&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">오이·호박·고추&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">냉동·이색·간편채소&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">콩나물·버섯&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                </ul>
                            </li>
                            <li id="fruit" class="mainCate_text">
                                <a href="" id="mca">
                                    과일·견과·쌀&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                </a>
                                <ul id="sub_fruit" ><!-- 과일 견과 쌀 -->
                                    <li class="subs"><a href="">친환경&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">제철과일&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">국산과일&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">수입과일&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">간편과일&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">냉동·건과일&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">견과일&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">쌀·잡곡&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                </ul>
                            </li>
                            <li id="seafood" class="mainCate_text">
                                <a href="" id="mca">
                                    수산·해산·건어물&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                </a>
                                <ul id="sub_seafood" > <!-- 수산 해산 건어물 -->
                                    <li class="subs"><a href="">생선류&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">굴비·반건류&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">오징어·낙지·문어&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">새우·게·랍스터&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">해산물·랍스터&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">수산가공품&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">김·미역·해조류&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">건어물·다시팩&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                </ul>
                            </li>
                            <li id="meat" class="mainCate_text">
                                <a href="" id="mca">
                                    정육·계란&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                </a>
                                <ul id="sub_meat" > <!-- 정육 계란 -->
                                    <li class="subs"><a href="">국내산 소고기&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">수입산 소고기&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">돼지고기&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">계란류&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">닭·오리고기&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">양념육·돈까스&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">양고기&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                </ul>
                            </li>
                            <li id="soup" class="mainCate_text">
                                <a href="" id="mca">
                                    국·반찬·메인요리&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                </a>
                                <ul id="sub_soup" > <!-- 국 반찬 메인요리 -->
                                    <li class="subs"><a href="">국·탕·찌개&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">밀키트·메인요리&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">밑반찬&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;</a></li>
                                    <li class="subs"><a href="">김치·젓갈·장류&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">두부·어묵·부침개&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">베이컨·햄·통조림&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                </ul>
                            </li>
                            <li id="salad" class="mainCate_text">
                                <a href="" id="mca">
                                    샐러드·간편식&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                </a>
                                <ul id="sub_salad" ><!-- 샐러드 간편식 -->
                                    <li class="subs"><a href="">샐러드·닭가슴살&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">도시락·밥류&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">파스타·면류&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">떡볶이·튀김·순대&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">피자·핫도그·만두&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">폭립·떡갈비·안주&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">죽·스프·카레&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">선식·시리얼&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                </ul>
                            </li>
                            <li id="noodle" class="mainCate_text">
                                <a href="" id="mca">
                                    면·양념·오일&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                </a>
                                <ul id="sub_noodle" > <!-- 면 양념 오일 -->
                                    <li class="subs"><a href="">파스타·면류&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">식초·소스·드레싱&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">양념·액젓·장류&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">식용유·참기름·오일&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">소금·설탕·향신료&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">밀가루·가루·믹스&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                </ul>
                            </li>
                            <li id="drink" class="mainCate_text">
                                <a href="" id="mca">
                                    생수·음료·우유·커피&emsp;&emsp;&emsp;&emsp;&emsp;
                                </a>
                                <ul id="sub_drink" > <!-- 생수 음료 우유 커피 -->
                                    <li class="subs"><a href="">생수·탄산수&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">음료·주스&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">우유·두유·요거트&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">커피&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">차&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                </ul>
                            </li>
                            <li id="dessert" class="mainCate_text">
                                <a href="" id="mca">
                                    간식·과자·떡&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                </a>
                                <ul id="sub_dessert" > <!-- 간식 과자 떡 -->
                                    <li class="subs"><a href="">과자·스낵·쿠키&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">초콜릿·젤리·캔디&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">떡·한과&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">아이스크림&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                </ul>
                            </li>
                            <li id="bakery" class="mainCate_text">
                                <a href="" id="mca">
                                    베이커리·치즈·델리&emsp;&emsp;&emsp;&emsp;&emsp;
                                </a>
                                <ul id="sub_bakery" > <!-- 베이커리 치즈 델리 -->
                                    <li class="subs"><a href="">식빵·빵류&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">잼·버터·스프레드&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">케이크·파이·디저트&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">치즈&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">델리&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">올리브·피클&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                </ul>
                            </li>
                            <li id="health" class="mainCate_text">
                                <a href="" id="mca">
                                    건강식품&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                </a>
                                <ul id="sub_health" > <!-- 건강식품 -->
                                    <li class="subs"><a href="">영양제&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">유산균&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">홍삼·인삼·꿀&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">건강즙·건강음료&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">건강분말·건강환&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">다이어트·이너뷰티&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">유아동&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                </ul>
                            </li>
                            <li id="life" class="mainCate_text">
                                <a href="" id="mca">
                                    생활용품·리빙&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                </a>
                                <ul id="sub_life" > <!-- 생활용품 리빙 -->
                                    <li class="subs"><a href="">휴지·티슈&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">여성·위생용품&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">세제·청소용품&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">하훼·인테리어소품&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">의약외품·마스크&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">생활잡화·문구&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">캠핑용품&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                </ul>
                            </li>
                            <li id="skincare" class="mainCate_text">
                                <a href="" id="mca">
                                    스킨케어·리빙&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                </a>
                                <ul id="sub_skincare" > <!-- 스킨케어·메이크업 -->
                                    <li class="subs"><a href="">스킨·미스트·패드&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">에센스·앰플·로션&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">크림·오일&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">클렌징&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">마스크팩&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">선케어&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">메이크업&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">맨즈케어&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">뷰티소품·기기&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                </ul>
                            </li>
                            <li id="hair" class="mainCate_text">
                                <a href="" id="mca">
                                    헤어·바디·구강&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                </a>
                                <ul id="sub_hair" > <!-- 헤어 바디 구강 -->
                                    <li class="subs"><a href="">구강·면도&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">샴푸·컨디셔너&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">트리트먼트·팩&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">헤어에센스·염모&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">바디워시·스크럽&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">바디로션·크림&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">핸드·립·데오&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">헤어·바디소품&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                </ul>
                            </li>
                            <li id="kitchen" class="mainCate_text">
                                <a href="" id="mca">
                                    주방용품&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                </a>
                                <ul id="sub_kitchen" > <!-- 주방용품 -->
                                    <li class="subs"><a href="">주방소모품·잡화&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">주방·조리도구&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">냄비·팬·솥&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">보관용기·텀블러&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">식기·테이블웨어&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">컵·잔·커피도구&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                </ul>
                            </li>
                            <li id="appliances" class="mainCate_text">
                                <a href="" id="mca">
                                    가전제품&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                </a>
                                <ul id="sub_appliances" > <!-- 가전제품 -->
                                    <li class="subs"><a href="">주방가전&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">생활가전&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">계절가전&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">디지털·PC&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">대형·설치가전&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                </ul>
                            </li>
                            <li id="baby" class="mainCate_text">
                                <a href="" id="mca">
                                     베이비·키즈&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                </a>
                                <ul id="sub_baby" > <!-- 베이비 키즈 -->
                                    <li class="subs"><a href="">분유·간편 이유식&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">이유식 재료&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">간식·음식·음료&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">건강식품&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">이유·수유용품&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">기저귀·물티슈&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">세제·위생용품&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">스킨·구강케어&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">완구·잡화류&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                </ul>
                            </li>
                            <li id="pet" class="mainCate_text" >
                                <a href="" id="mca">
                                    반려동물&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                </a>
                                <ul id="sub_pet" > <!-- 반려동물 -->
                                    <li class="subs"><a href="">강아지 간식&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">강아지 주식&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">고양이 간식&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">고양이 주식&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">반려동물 용품&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">배변·위생&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                                    <li class="subs"><a href="">소용량·샘플&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
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
                        <span id="reading_glasses" class="material-icons"><a href="">search</a></span>
                    </div>
                </div>
                <!-- 배송지 아이콘  -->
                <div class="gnb_menus">
                    <span id="room" class="material-icons-outlined" style="font-size: 30px;">room
                    </span>
                    <div id="location">
                        <div id="noAddress">
                            <div id="noAdd_text">
                                <span style="color: seagreen;">배송지를 등록</span>하고 <br> 구매 가능한 상품을 확인하세요!
                            </div>
                            <div id="button_double">
                                <button id="login_Btn" onclick="location.href=''">로그인</button>
                                <button id="address_Btn">주소검색</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 장바구니 아이콘 -->
                <div class="gnb_menus">
                    <a href="">
                        <span id="cart" class="material-icons-outlined" style="font-size: 30px;">shopping_cart</span>
                    </a>
                </div>
                <div class="gnb_menus"> </div>
            </div>
        </div> <!-- gnb_menu -->
    </div>
    <script src="${path }/resources/js/header.js"></script>
</body>
</html>