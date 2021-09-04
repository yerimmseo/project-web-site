<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<% 
response.setHeader("Pragma", "no-cache"); 
response.setHeader("Cache-Control", "no-cache"); 
response.setHeader("Cache-Control", "no-store"); 
response.setDateHeader("Expires", 0L); 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BroKurly</title>
<link rel="stylesheet" href="${path }/resources/css/main.css" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons|Material+Icons+Outlined" rel="stylesheet" />
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body ondragstart="return false">
   <div class="header">
      <jsp:include page="include/header.jsp"></jsp:include>
   </div>
   <div id="main">
        <!-- 상단 광고 -->
        <div id="event_box">
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
                	<c:forEach var="i" begin="0" end="15" items="${product }" >
			                    <li class="items change_detail" value="<c:out value="${i.product_id }"/>">
		                	        <div onclick="location.href=''"><img src='/brokurly/resources/img/product/all/${i.product_id }.jpg' alt='items'></div>     
		            	            <span class='product_name'><a href=''> ${i.product_name } </a></span>  
		        	                <span class="price_tag">
		        	                <c:if test="${i.event_discount != 0 }"><span class="discounted_price">${i.event_discount }%</span>&nbsp;</c:if>
		        	                <span style='font-size: 17px; color: #333; font-weight: 1000;'><fmt:formatNumber value="${i.discount_price }" pattern="#,###,###" />원</span></span>
		        	                <c:if test="${i.event_discount != 0 }"><span class="price"><fmt:formatNumber value="${i.product_price }" pattern="#,###,###" />원</span></c:if>
		    	                </li>
                    </c:forEach>
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
                    <li class="events mca" value="110">
                        <div onclick="location.href=''"><img src="${path }/resources/img/event/main/event1.jpg" alt="events"></div> 
                        <span class="event_name"><a href="">솔가 최대 46% 할인</a></span> <br>
                        <span class="event_info">미국에서 온 프리미엄 영양제</span>
                    </li>
                    <li class="events mca" value="150">
                        <div onclick="location.href=''"><img src="${path }/resources/img/event/main/event2.jpg" alt="events"></div> 
                        <span class="event_name"><a href="">스텐 주방용품 최대 15% 할인</a></span> <br>
                        <span class="event_info">디자인과 내구성, 모두 잡고 싶다면</span>
                    </li>
                    <li class="events mca" value="60">
                        <div onclick="location.href=''"><img src="${path }/resources/img/event/main/event3.jpg" alt="events"></div> 
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
                	<c:forEach var="i" begin="16" end="27" items="${product }" >
			                    <li class="items change_detail" value="<c:out value="${i.product_id }"/>">
		                	        <div onclick="location.href=''"><img src='/brokurly/resources/img/product/all/${i.product_id }.jpg' alt='items'></div>     
		            	            <span class='product_name'><a href=''> ${i.product_name } </a></span>  
		        	                <span class="price_tag">
		        	                <c:if test="${i.event_discount != 0 }"><span class="discounted_price">${i.event_discount }%</span>&nbsp;</c:if>
		        	                <span style='font-size: 17px; color: #333; font-weight: 1000;'><fmt:formatNumber value="${i.discount_price }" pattern="#,###,###" />원</span></span>
		        	                <c:if test="${i.event_discount != 0 }"><span class="price"><fmt:formatNumber value="${i.product_price }" pattern="#,###,###" />원</span></c:if>
		    	                </li>
                    </c:forEach>
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
	           		 <form id="md_form" action="/main_code" method="GET">
        <div id="md_recommend">
            <div id="tit_goods"> <!-- title -->
                <h3 id="tit">MD의 추천</h3>
            </div>
            <div id="md_category"><!-- 카테고리 -->
                <ul id="list_category">
                    <li><a value="10" id="list_1"  data-title="채소" onclick="getId(this.id)" class="md_list" href="#none">채소</a></li>
                    <li><a value="20" id="list_2"  data-title="과일"  onclick="getId(this.id)" class="md_list" href="#none">과일·견과·쌀</a></li>
                    <li><a value="30" id="list_3"  data-title="수산"  onclick="getId(this.id)" class="md_list" href="#none">수산·해산·건어물</a></li>
                    <li><a value="40" id="list_4"  data-title="정육" onclick="getId(this.id)" class="md_list" href="#none">정육·계란</a></li>
                    <li><a value="50" id="list_5"  data-title="국" onclick="getId(this.id)" class="md_list" href="#none">국·반찬·메인요리</a></li>
                    <li><a value="60" id="list_6"  data-title="샐러드" onclick="getId(this.id)" class="md_list" href="#none">샐러드·간편식</a></li>
                    <li><a value="70" id="list_7"  data-title="면" onclick="getId(this.id)" class="md_list" href="#none">면·양념·오일</a></li>
                    <li><a value="80" id="list_8"  data-title="생수" onclick="getId(this.id)" class="md_list" href="#none">생수·음료·우유·커피</a></li>
                    <li><a value="90" id="list_9"  data-title="간식" onclick="getId(this.id)" class="md_list" href="#none">간식·과자·떡</a></li>
                    <li><a value="100" id="list_10" data-title="베이커리" onclick="getId(this.id)"  class="md_list" href="#none">베이커리·치즈·델리</a></li>
                    <li><a value="110" id="list_11" data-title="건강식품" onclick="getId(this.id)"  class="md_list" href="#none">건강식품</a></li>
                    <li><a value="120" id="list_12" data-title="생활용품" onclick="getId(this.id)"  class="md_list" href="#none">생활용품·리빙</a></li>
                    <li><a value="130" id="list_13" data-title="스킨케어" onclick="getId(this.id)"  class="md_list" href="#none">스킨케어·메이크업</a></li>
                    <li><a value="140" id="list_14" data-title="헤어" onclick="getId(this.id)"  class="md_list" href="#none">헤어·바디·구강</a></li>
                    <li><a value="150" id="list_15" data-title="주방용품" onclick="getId(this.id)"  class="md_list" href="#none">주방용품</a></li>
                    <li><a value="160" id="list_16" data-title="가전제품" onclick="getId(this.id)"  class="md_list" href="#none">가전제품</a></li>
                    <li><a value="170" id="list_17" data-title="베이비" onclick="getId(this.id)"  class="md_list" href="#none">베이비·키즈</a></li>
                    <li><a value="180" id="list_18" data-title="반려동물" onclick="getId(this.id)"  class="md_list" href="#none">반려동물</a></li>
                </ul>
            </div>
            <div id="md_view" class="view_port">
               		<ul id="md_list" class="on">
               			<c:forEach var="i" begin="0" end="3" items="${md_list }">
			                    <li class="items change_detail" value="<c:out value="${i.product_id }"/>">
		                	        <div id="items_div" onclick="location.href=''"><img id="md_img" src='/brokurly/resources/img/product/all/${i.product_id }.jpg' alt='items'></div>     
		            	            <span class='product_name'><a href=''> ${i.product_name } </a></span>  
		        	                <span class="price_tag">
		        	                <c:if test="${i.event_discount != 0 }"><span class="discounted_price">${i.event_discount }%</span>&nbsp;</c:if>
		        	                <span style='font-size: 17px; color: #333; font-weight: 1000;'><fmt:formatNumber value="${i.discount_price }" pattern="#,###,###" />원</span></span>
		        	                <c:if test="${i.event_discount != 0 }"><span class="price"><fmt:formatNumber value="${i.product_price }" pattern="#,###,###" />원</span></c:if>
		    	                </li>
                   		</c:forEach>
 	              	</ul>
 	              	<ul id="md_list">
               			<c:forEach var="i" begin="4" end="7" items="${md_list }">
			                    <li class="items change_detail" value="<c:out value="${i.product_id }"/>">
		                	        <div id="items_div" onclick="location.href=''"><img id="md_img" src='/brokurly/resources/img/product/all/${i.product_id }.jpg' alt='items'></div>     
		            	            <span class='product_name'><a href=''> ${i.product_name } </a></span>  
		        	                <span class="price_tag">
		        	                <c:if test="${i.event_discount != 0 }"><span class="discounted_price">${i.event_discount }%</span>&nbsp;</c:if>
		        	                <span style='font-size: 17px; color: #333; font-weight: 1000;'><fmt:formatNumber value="${i.discount_price }" pattern="#,###,###" />원</span></span>
		        	                <c:if test="${i.event_discount != 0 }"><span class="price"><fmt:formatNumber value="${i.product_price }" pattern="#,###,###" />원</span></c:if>
		    	                </li>
                   		</c:forEach>
 	              	</ul>
 	              	<ul id="md_list">
               			<c:forEach var="i" begin="8" end="11" items="${md_list }">
			                    <li class="items change_detail" value="<c:out value="${i.product_id }"/>">
		                	        <div id="items_div" onclick="location.href=''"><img id="md_img" src='/brokurly/resources/img/product/all/${i.product_id }.jpg' alt='items'></div>     
		            	            <span class='product_name'><a href=''> ${i.product_name } </a></span>  
		        	                <span class="price_tag">
		        	                <c:if test="${i.event_discount != 0 }"><span class="discounted_price">${i.event_discount }%</span>&nbsp;</c:if>
		        	                <span style='font-size: 17px; color: #333; font-weight: 1000;'><fmt:formatNumber value="${i.discount_price }" pattern="#,###,###" />원</span></span>
		        	                <c:if test="${i.event_discount != 0 }"><span class="price"><fmt:formatNumber value="${i.product_price }" pattern="#,###,###" />원</span></c:if>
		    	                </li>
                   		</c:forEach>
 	              	</ul>
 	              	<ul id="md_list">
               			<c:forEach var="i" begin="12" end="15" items="${md_list }">
			                    <li class="items change_detail" value="<c:out value="${i.product_id }"/>">
		                	        <div id="items_div" onclick="location.href=''"><img id="md_img" src='/brokurly/resources/img/product/all/${i.product_id }.jpg' alt='items'></div>     
		            	            <span class='product_name'><a href=''> ${i.product_name } </a></span>  
		        	                <span class="price_tag">
		        	                <c:if test="${i.event_discount != 0 }"><span class="discounted_price">${i.event_discount }%</span>&nbsp;</c:if>
		        	                <span style='font-size: 17px; color: #333; font-weight: 1000;'><fmt:formatNumber value="${i.discount_price }" pattern="#,###,###" />원</span></span>
		        	                <c:if test="${i.event_discount != 0 }"><span class="price"><fmt:formatNumber value="${i.product_price }" pattern="#,###,###" />원</span></c:if>
		    	                </li>
                   		</c:forEach>
 	              	</ul>
 	              	<ul id="md_list">
               			<c:forEach var="i" begin="16" end="19" items="${md_list }">
			                    <li class="items change_detail" value="<c:out value="${i.product_id }"/>">
		                	        <div id="items_div" onclick="location.href=''"><img id="md_img" src='/brokurly/resources/img/product/all/${i.product_id }.jpg' alt='items'></div>     
		            	            <span class='product_name'><a href=''> ${i.product_name } </a></span>  
		        	                <span class="price_tag">
		        	                <c:if test="${i.event_discount != 0 }"><span class="discounted_price">${i.event_discount }%</span>&nbsp;</c:if>
		        	                <span style='font-size: 17px; color: #333; font-weight: 1000;'><fmt:formatNumber value="${i.discount_price }" pattern="#,###,###" />원</span></span>
		        	                <c:if test="${i.event_discount != 0 }"><span class="price"><fmt:formatNumber value="${i.product_price }" pattern="#,###,###" />원</span></c:if>
		    	                </li>
                   		</c:forEach>
 	              	</ul>
 	              	<ul id="md_list">
               			<c:forEach var="i" begin="20" end="23" items="${md_list }">
			                    <li class="items change_detail" value="<c:out value="${i.product_id }"/>">
		                	        <div id="items_div" onclick="location.href=''"><img id="md_img" src='/brokurly/resources/img/product/all/${i.product_id }.jpg' alt='items'></div>     
		            	            <span class='product_name'><a href=''> ${i.product_name } </a></span>  
		        	                <span class="price_tag">
		        	                <c:if test="${i.event_discount != 0 }"><span class="discounted_price">${i.event_discount }%</span>&nbsp;</c:if>
		        	                <span style='font-size: 17px; color: #333; font-weight: 1000;'><fmt:formatNumber value="${i.discount_price }" pattern="#,###,###" />원</span></span>
		        	                <c:if test="${i.event_discount != 0 }"><span class="price"><fmt:formatNumber value="${i.product_price }" pattern="#,###,###" />원</span></c:if>
		    	                </li>
                   		</c:forEach>
 	              	</ul>
 	              	<ul id="md_list">
               			<c:forEach var="i" begin="24" end="27" items="${md_list }">
			                    <li class="items change_detail" value="<c:out value="${i.product_id }"/>">
		                	        <div id="items_div" onclick="location.href=''"><img id="md_img" src='/brokurly/resources/img/product/all/${i.product_id }.jpg' alt='items'></div>     
		            	            <span class='product_name'><a href=''> ${i.product_name } </a></span>  
		        	                <span class="price_tag">
		        	                <c:if test="${i.event_discount != 0 }"><span class="discounted_price">${i.event_discount }%</span>&nbsp;</c:if>
		        	                <span style='font-size: 17px; color: #333; font-weight: 1000;'><fmt:formatNumber value="${i.discount_price }" pattern="#,###,###" />원</span></span>
		        	                <c:if test="${i.event_discount != 0 }"><span class="price"><fmt:formatNumber value="${i.product_price }" pattern="#,###,###" />원</span></c:if>
		    	                </li>
                   		</c:forEach>
 	              	</ul>
 	              	<ul id="md_list">
               			<c:forEach var="i" begin="28" end="31" items="${md_list }">
			                    <li class="items change_detail" value="<c:out value="${i.product_id }"/>">
		                	        <div id="items_div" onclick="location.href=''"><img id="md_img" src='/brokurly/resources/img/product/all/${i.product_id }.jpg' alt='items'></div>     
		            	            <span class='product_name'><a href=''> ${i.product_name } </a></span>  
		        	                <span class="price_tag">
		        	                <c:if test="${i.event_discount != 0 }"><span class="discounted_price">${i.event_discount }%</span>&nbsp;</c:if>
		        	                <span style='font-size: 17px; color: #333; font-weight: 1000;'><fmt:formatNumber value="${i.discount_price }" pattern="#,###,###" />원</span></span>
		        	                <c:if test="${i.event_discount != 0 }"><span class="price"><fmt:formatNumber value="${i.product_price }" pattern="#,###,###" />원</span></c:if>
		    	                </li>
                   		</c:forEach>
 	              	</ul>
 	              	<ul id="md_list">
               			<c:forEach var="i" begin="32" end="35" items="${md_list }">
			                    <li class="items change_detail" value="<c:out value="${i.product_id }"/>">
		                	        <div id="items_div" onclick="location.href=''"><img id="md_img" src='/brokurly/resources/img/product/all/${i.product_id }.jpg' alt='items'></div>     
		            	            <span class='product_name'><a href=''> ${i.product_name } </a></span>  
		        	                <span class="price_tag">
		        	                <c:if test="${i.event_discount != 0 }"><span class="discounted_price">${i.event_discount }%</span>&nbsp;</c:if>
		        	                <span style='font-size: 17px; color: #333; font-weight: 1000;'><fmt:formatNumber value="${i.discount_price }" pattern="#,###,###" />원</span></span>
		        	                <c:if test="${i.event_discount != 0 }"><span class="price"><fmt:formatNumber value="${i.product_price }" pattern="#,###,###" />원</span></c:if>
		    	                </li>
                   		</c:forEach>
 	              	</ul>
 	              	<ul id="md_list">
               			<c:forEach var="i" begin="36" end="39" items="${md_list }">
			                    <li class="items change_detail" value="<c:out value="${i.product_id }"/>">
		                	        <div id="items_div" onclick="location.href=''"><img id="md_img" src='/brokurly/resources/img/product/all/${i.product_id }.jpg' alt='items'></div>     
		            	            <span class='product_name'><a href=''> ${i.product_name } </a></span>  
		        	                <span class="price_tag">
		        	                <c:if test="${i.event_discount != 0 }"><span class="discounted_price">${i.event_discount }%</span>&nbsp;</c:if>
		        	                <span style='font-size: 17px; color: #333; font-weight: 1000;'><fmt:formatNumber value="${i.discount_price }" pattern="#,###,###" />원</span></span>
		        	                <c:if test="${i.event_discount != 0 }"><span class="price"><fmt:formatNumber value="${i.product_price }" pattern="#,###,###" />원</span></c:if>
		    	                </li>
                   		</c:forEach>
 	              	</ul>
 	              	<ul id="md_list">
               			<c:forEach var="i" begin="40" end="43" items="${md_list }">
			                    <li class="items change_detail" value="<c:out value="${i.product_id }"/>">
		                	        <div id="items_div" onclick="location.href=''"><img id="md_img" src='/brokurly/resources/img/product/all/${i.product_id }.jpg' alt='items'></div>     
		            	            <span class='product_name'><a href=''> ${i.product_name } </a></span>  
		        	                <span class="price_tag">
		        	                <c:if test="${i.event_discount != 0 }"><span class="discounted_price">${i.event_discount }%</span>&nbsp;</c:if>
		        	                <span style='font-size: 17px; color: #333; font-weight: 1000;'><fmt:formatNumber value="${i.discount_price }" pattern="#,###,###" />원</span></span>
		        	                <c:if test="${i.event_discount != 0 }"><span class="price"><fmt:formatNumber value="${i.product_price }" pattern="#,###,###" />원</span></c:if>
		    	                </li>
                   		</c:forEach>
 	              	</ul>
 	              	<ul id="md_list">
               			<c:forEach var="i" begin="44" end="47" items="${md_list }">
			                    <li class="items change_detail" value="<c:out value="${i.product_id }"/>">
		                	        <div id="items_div" onclick="location.href=''"><img id="md_img" src='/brokurly/resources/img/product/all/${i.product_id }.jpg' alt='items'></div>     
		            	            <span class='product_name'><a href=''> ${i.product_name } </a></span>  
		        	                <span class="price_tag">
		        	                <c:if test="${i.event_discount != 0 }"><span class="discounted_price">${i.event_discount }%</span>&nbsp;</c:if>
		        	                <span style='font-size: 17px; color: #333; font-weight: 1000;'><fmt:formatNumber value="${i.discount_price }" pattern="#,###,###" />원</span></span>
		        	                <c:if test="${i.event_discount != 0 }"><span class="price"><fmt:formatNumber value="${i.product_price }" pattern="#,###,###" />원</span></c:if>
		    	                </li>
                   		</c:forEach>
 	              	</ul>
 	              	<ul id="md_list">
               			<c:forEach var="i" begin="48" end="51" items="${md_list }">
			                    <li class="items change_detail" value="<c:out value="${i.product_id }"/>">
		                	        <div id="items_div" onclick="location.href=''"><img id="md_img" src='/brokurly/resources/img/product/all/${i.product_id }.jpg' alt='items'></div>     
		            	            <span class='product_name'><a href=''> ${i.product_name } </a></span>  
		        	                <span class="price_tag">
		        	                <c:if test="${i.event_discount != 0 }"><span class="discounted_price">${i.event_discount }%</span>&nbsp;</c:if>
		        	                <span style='font-size: 17px; color: #333; font-weight: 1000;'><fmt:formatNumber value="${i.discount_price }" pattern="#,###,###" />원</span></span>
		        	                <c:if test="${i.event_discount != 0 }"><span class="price"><fmt:formatNumber value="${i.product_price }" pattern="#,###,###" />원</span></c:if>
		    	                </li>
                   		</c:forEach>
 	              	</ul>
 	              	<ul id="md_list">
               			<c:forEach var="i" begin="52" end="55" items="${md_list }">
			                    <li class="items change_detail" value="<c:out value="${i.product_id }"/>">
		                	        <div id="items_div" onclick="location.href=''"><img id="md_img" src='/brokurly/resources/img/product/all/${i.product_id }.jpg' alt='items'></div>     
		            	            <span class='product_name'><a href=''> ${i.product_name } </a></span>  
		        	                <span class="price_tag">
		        	                <c:if test="${i.event_discount != 0 }"><span class="discounted_price">${i.event_discount }%</span>&nbsp;</c:if>
		        	                <span style='font-size: 17px; color: #333; font-weight: 1000;'><fmt:formatNumber value="${i.discount_price }" pattern="#,###,###" />원</span></span>
		        	                <c:if test="${i.event_discount != 0 }"><span class="price"><fmt:formatNumber value="${i.product_price }" pattern="#,###,###" />원</span></c:if>
		    	                </li>
                   		</c:forEach>
 	              	</ul>
 	              	<ul id="md_list">
               			<c:forEach var="i" begin="56" end="59" items="${md_list }">
			                    <li class="items change_detail" value="<c:out value="${i.product_id }"/>">
		                	        <div id="items_div" onclick="location.href=''"><img id="md_img" src='/brokurly/resources/img/product/all/${i.product_id }.jpg' alt='items'></div>     
		            	            <span class='product_name'><a href=''> ${i.product_name } </a></span>  
		        	                <span class="price_tag">
		        	                <c:if test="${i.event_discount != 0 }"><span class="discounted_price">${i.event_discount }%</span>&nbsp;</c:if>
		        	                <span style='font-size: 17px; color: #333; font-weight: 1000;'><fmt:formatNumber value="${i.discount_price }" pattern="#,###,###" />원</span></span>
		        	                <c:if test="${i.event_discount != 0 }"><span class="price"><fmt:formatNumber value="${i.product_price }" pattern="#,###,###" />원</span></c:if>
		    	                </li>
                   		</c:forEach>
 	              	</ul>
 	              	<ul id="md_list">
               			<c:forEach var="i" begin="60" end="63" items="${md_list }">
			                    <li class="items change_detail" value="<c:out value="${i.product_id }"/>">
		                	        <div id="items_div" onclick="location.href=''"><img id="md_img" src='/brokurly/resources/img/product/all/${i.product_id }.jpg' alt='items'></div>     
		            	            <span class='product_name'><a href=''> ${i.product_name } </a></span>  
		        	                <span class="price_tag">
		        	                <c:if test="${i.event_discount != 0 }"><span class="discounted_price">${i.event_discount }%</span>&nbsp;</c:if>
		        	                <span style='font-size: 17px; color: #333; font-weight: 1000;'><fmt:formatNumber value="${i.discount_price }" pattern="#,###,###" />원</span></span>
		        	                <c:if test="${i.event_discount != 0 }"><span class="price"><fmt:formatNumber value="${i.product_price }" pattern="#,###,###" />원</span></c:if>
		    	                </li>
                   		</c:forEach>
 	              	</ul>
 	              	<ul id="md_list">
               			<c:forEach var="i" begin="64" end="67" items="${md_list }">
			                    <li class="items change_detail" value="<c:out value="${i.product_id }"/>">
		                	        <div id="items_div" onclick="location.href=''"><img id="md_img" src='/brokurly/resources/img/product/all/${i.product_id }.jpg' alt='items'></div>     
		            	            <span class='product_name'><a href=''> ${i.product_name } </a></span>  
		        	                <span class="price_tag">
		        	                <c:if test="${i.event_discount != 0 }"><span class="discounted_price">${i.event_discount }%</span>&nbsp;</c:if>
		        	                <span style='font-size: 17px; color: #333; font-weight: 1000;'><fmt:formatNumber value="${i.discount_price }" pattern="#,###,###" />원</span></span>
		        	                <c:if test="${i.event_discount != 0 }"><span class="price"><fmt:formatNumber value="${i.product_price }" pattern="#,###,###" />원</span></c:if>
		    	                </li>
                   		</c:forEach>
 	              	</ul>
 	              	<ul id="md_list">
               			<c:forEach var="i" begin="68" end="71" items="${md_list }">
			                    <li class="items change_detail" value="<c:out value="${i.product_id }"/>">
		                	        <div id="items_div" onclick="location.href=''"><img id="md_img" src='/brokurly/resources/img/product/all/${i.product_id }.jpg' alt='items'></div>     
		            	            <span class='product_name'><a href=''> ${i.product_name } </a></span>  
		        	                <span class="price_tag">
		        	                <c:if test="${i.event_discount != 0 }"><span class="discounted_price">${i.event_discount }%</span>&nbsp;</c:if>
		        	                <span style='font-size: 17px; color: #333; font-weight: 1000;'><fmt:formatNumber value="${i.discount_price }" pattern="#,###,###" />원</span></span>
		        	                <c:if test="${i.event_discount != 0 }"><span class="price"><fmt:formatNumber value="${i.product_price }" pattern="#,###,###" />원</span></c:if>
		    	                </li>
                   		</c:forEach>
 	              	</ul>
            </div>
            <div id="link_cate" value="10">
                <a id="link_a"><span id="list_name">채소</span> 전체보기
                    <span style="position: relative; top: 3px;  font-size: 17px;" class="material-icons-outlined">
                    arrow_forward_ios
                    </span>
                </a>
            </div>
        </div>
	             	  </form>
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
                	<c:forEach var="i" begin="28" end="33" items="${product }" >
			                    <li class="items change_detail" value="<c:out value="${i.product_id }"/>">
		                	        <div onclick="location.href=''"><img src='/brokurly/resources/img/product/all/${i.product_id }.jpg' alt='items'></div>     
		            	            <span class='product_name'><a href=''> ${i.product_name } </a></span>  
		        	                <span class="price_tag">
		        	                <c:if test="${i.event_discount != 0 }"><span class="discounted_price">${i.event_discount }%</span>&nbsp;</c:if>
		        	                <span style='font-size: 17px; color: #333; font-weight: 1000;'><fmt:formatNumber value="${i.discount_price }" pattern="#,###,###" />원</span></span>
		        	                <c:if test="${i.event_discount != 0 }"><span class="price"><fmt:formatNumber value="${i.product_price }" pattern="#,###,###" />원</span></c:if>
		    	                </li>
                    </c:forEach>
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
                <h3 id="tit"><a href="">집에 있으면 좋은 상품<span style="color: #333; font-size: 25px;" class="material-icons-outlined">
                    arrow_forward_ios
                </span></a></h3>
            </div>
            <div class="view_port">
                <ul class="item_list">
                	<c:forEach var="i" begin="34" end="39" items="${product }" >
			                    <li class="items change_detail" value="<c:out value="${i.product_id }"/>">
		                	        <div onclick="location.href=''"><img src='/brokurly/resources/img/product/all/${i.product_id }.jpg' alt='items'></div>     
		            	            <span class='product_name'><a href=''> ${i.product_name } </a></span>  
		        	                <span class="price_tag">
		        	                <c:if test="${i.event_discount != 0 }"><span class="discounted_price">${i.event_discount }%</span>&nbsp;</c:if>
		        	                <span style='font-size: 17px; color: #333; font-weight: 1000;'><fmt:formatNumber value="${i.discount_price }" pattern="#,###,###" />원</span></span>
		        	                <c:if test="${i.event_discount != 0 }"><span class="price"><fmt:formatNumber value="${i.product_price }" pattern="#,###,###" />원</span></c:if>
		    	                </li>
                    </c:forEach>
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
                	<c:forEach var="i" begin="40" end="45" items="${product }" >
			                    <li class="items change_detail" value="<c:out value="${i.product_id }"/>">
		                	        <div onclick="location.href=''"><img src='/brokurly/resources/img/product/all/${i.product_id }.jpg' alt='items'></div>     
		            	            <span class='product_name'><a href=''> ${i.product_name } </a></span>  
		        	                <span class="price_tag">
		        	                <c:if test="${i.event_discount != 0 }"><span class="discounted_price">${i.event_discount }%</span>&nbsp;</c:if>
		        	                <span style='font-size: 17px; color: #333; font-weight: 1000;'><fmt:formatNumber value="${i.discount_price }" pattern="#,###,###" />원</span></span>
		        	                <c:if test="${i.event_discount != 0 }"><span class="price"><fmt:formatNumber value="${i.product_price }" pattern="#,###,###" />원</span></c:if>
		    	                </li>
                    </c:forEach>
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
                	<c:forEach var="i" begin="0" end="5" items="${product_160 }" >
			                    <li class="items change_detail" value="<c:out value="${i.product_id }"/>">
		                	        <div onclick="location.href=''"><img src='/brokurly/resources/img/product/all/${i.product_id }.jpg' alt='items'></div>     
		            	            <span class='product_name'><a href=''> ${i.product_name } </a></span>  
		        	                <span class="price_tag">
		        	                <c:if test="${i.event_discount != 0 }"><span class="discounted_price">${i.event_discount }%</span>&nbsp;</c:if>
		        	                <span style='font-size: 17px; color: #333; font-weight: 1000;'><fmt:formatNumber value="${i.discount_price }" pattern="#,###,###" />원</span></span>
		        	                <c:if test="${i.event_discount != 0 }"><span class="price"><fmt:formatNumber value="${i.product_price }" pattern="#,###,###" />원</span></c:if>
		    	                </li>
                    </c:forEach>
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
                <h3 id="tit_main"><a href="">필요한 것만 딱, 주방용품 특가<span style="color: #333; font-size: 25px;" class="material-icons-outlined">
                    arrow_forward_ios
                </span></a></h3>
                <h5 id="tit_under">현명한 주부라면 당연한 선택!</h5>
            </div>
            <div class="view_port">
                <ul class="item_list">
                	<c:forEach var="i" begin="0" end="5" items="${product_150 }" >
			                    <li class="items change_detail" value="<c:out value="${i.product_id }"/>">
		                	        <div onclick="location.href=''"><img src='/brokurly/resources/img/product/all/${i.product_id }.jpg' alt='items'></div>     
		            	            <span class='product_name'><a href=''> ${i.product_name } </a></span>  
		        	                <span class="price_tag">
		        	                <c:if test="${i.event_discount != 0 }"><span class="discounted_price">${i.event_discount }%</span>&nbsp;</c:if>
		        	                <span style='font-size: 17px; color: #333; font-weight: 1000;'><fmt:formatNumber value="${i.discount_price }" pattern="#,###,###" />원</span></span>
		        	                <c:if test="${i.event_discount != 0 }"><span class="price"><fmt:formatNumber value="${i.product_price }" pattern="#,###,###" />원</span></c:if>
		    	                </li>
                    </c:forEach>
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
    <jsp:include page="include/topBtn.jsp"></jsp:include>
   
</body>
<script type="text/javascript" src="${path }/resources/js/ajax/product_detail_ajax.js"></script>
<script type="text/javascript" src="${path }/resources/js/style/main.js"></script>
<script type="text/javascript" src="${path }/resources/js/ajax/main_ajax.js"></script>
</html>