  
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path }/resources/css/joinok.css" />
<link rel="stylesheet" href="${path }/resources/css/font.css" />
</head>
<body>
	<div class="header">
		<jsp:include page="../include/header.jsp"></jsp:include>
	</div>
	<div class="main">
        <div class="content">
            <div class="default"></div>
            <div class="layout-wrapper">
                <div class="indiv">
                    <div class="xans-member-joincomplete">
                        <div class="joinComplete">
                            <p class="desc">회원가입이 완료되었습니다.</p>
                            <div class="memberInfo">
                                <ul>
                                    <li>
                                        <strong class="bolds">아이디</strong>
                                        <span>
                                            <span>${signup_id } </span>
                                        </span>
                                    </li>
                                    <li>
                                        <strong class="bolds">이름</strong>
                                        <span>
                                            <span>${signup_name }</span>
                                        </span>
                                    </li>
                                    <li>
                                        <strong class="bolds">이메일</strong>
                                        <span>
                                            <span>${signup_email } </span>
                                        </span>
                                    </li>
                                </ul>
                            </div>
                            <p class="button">
                                <a href="${path}/customer/signin">
                                    <span class="bhs_button active">신규 혜택 100원 상품 보러가기</span>
                                </a>
                                <a href="${path}/customer/signin">
                                    <span class="bhs_button">로그인화면으로</span>
                                </a>
                            </p>
                        </div>
                    </div>
                    <div class="default2"></div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer_wrap">
		<jsp:include page="../include/footer.jsp"></jsp:include>
	</div>
</body>
</html>