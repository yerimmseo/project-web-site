<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품</title>
<link rel="stylesheet" href="${path }/resources/css/product_list.css" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons|Material+Icons+Outlined" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
        <div class="header">
			<jsp:include page="../include/header.jsp"></jsp:include>
		</div>
		<br />
  <div id="wrap"> 
         
        <div id="inner-nav-bar">
            <div id="main_title">
               <span>
                   검색 결과 : ${search_product.size()} 건 
               </span>
            </div>
        </div>
        <div id="select-type">
            <div>
                <div id="type-title">
                    <span id="type-name" style="text-align: right;">추천순</span>
                    <span style="font-size: 18px; position: relative; top: 5px;" class="material-icons-outlined">
                        expand_more
                    </span>
                </div>
                
                <div id="type-list">
                    <ul id="type">
                        <li id="t1" class="types" onclick="getTitle(this.id)">추천순</li>
                        <li id="t2" class="types" onclick="getTitle(this.id)">인기상품순</li>
                        <li id="t3" class="types" onclick="getTitle(this.id)">낮은 가격순</li>
                        <li id="t4" class="types" onclick="getTitle(this.id)">높은 가격순</li>
                    </ul>
                </div>
            </div>
        </div>
        
       <div id="goods_box" class="inner-list">
            <ul class="item-list">
	            <c:forEach var="i" begin="0" end="${search_product.size() - 1 }">
	                <li class="lists">
	                    <div class="item" id="productno">
	                        <a class="change_detail info" value="<c:out value="${search_product.get(i).product_id }"/>">
			                    <div class="thum-box">
			                        <div class="thum" style="background-image: url('${path }/resources/img/product/maincategory${search_product.get(i).maincate_id}/${search_product.get(i).product_id }.jpg'); background-size: cover"></div>
			                    </div>
	                            <span class="product-name">${search_product.get(i).product_name }</span>
	                        </a>
	                        	<span class="price_tag">
	                            <c:if test="${search_product.get(i).event_discount != 0 }"><span class="discounted_price">${search_product.get(i).event_discount }%</span>&nbsp;</c:if>
	        	                <span class="product_price" style='font-size: 20px; color: #333; font-weight: 1000;'><fmt:formatNumber value="${search_product.get(i).discount_price }" pattern="#,###,###" />원</span></span>
	        	                <c:if test="${search_product.get(i).event_discount != 0 }"><span class="price"><fmt:formatNumber value="${search_product.get(i).product_price }" pattern="#,###,###" />원</span></c:if>
	                            <div class="basket" value="${search_product.get(i).product_id }">
	                                <a>
	                                    <span id="basket" class="material-icons-outlined">shopping_cart</span>
	                                </a>
	                            </div>
	                       	</a>
	                   	 	</div>
	               		</li>
	            </c:forEach>
            </ul>
        </div>
        <ul class="paging">
            <li class="pages" onclick="prevBtn(${search_product.size() })">
                <span class="material-icons-outlined" style="font-size: 16px;">
                arrow_back_ios
                </span>
            </li>
            <li class="pages" onclick="onePage(${search_product.size() })">1</li>
            <c:if test="${product.size() > 30 }">
            <li class="pages" onclick="twoPage(${search_product.size() })">2</li>
            </c:if>
            <c:if test="${product.size() > 60 }">
            <li class="pages" onclick="threePage(${search_product.size() })">3</li>
            </c:if>
            <li class="pages" onclick="nextBtn(${search_product.size() })">
                <span class="material-icons-outlined" style="font-size: 16px;">
                    arrow_forward_ios
                </span>
            </li>
        </ul>
    </div>
    
    <br /><br /><br /> 
    <div>
    	<jsp:include page="../include/footer.jsp"></jsp:include>
    </div>
    <jsp:include page="../include/topBtn.jsp"></jsp:include>
</body>
    <script src="${path }/resources/js/style/product_list.js"></script>
    <script src="${path }/resources/js/ajax/product_detail_ajax.js"></script>
</html>