<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path }/resources/css/footer.css" />
</head>
<body>
	<div class="footer" style="opacity: 1;">
        <div class="inner_footer">
            <div class="footer_cc">
                <h2 class="tit_cc">KG아이티뱅크</h2>
                <div class="cc_view cc_call">
                    <h3><span class="tit">1661-1284</span></h3>
                    <dl class="list">
                        <dt>KG아이티뱅크</dt>
                        <dd>24시간 운영</dd>
                    </dl>
                </div>
                <div class="cc_view cc_kakao">
                    <h3><a class="tit" href=#none>카카오톡 문의</a></h3>
                    <dl class="list">
                        <dt>KG아이티뱅크</dt>
                        <dd>24시간 운영</dd>
                    </dl>
                </div>
                <div class="cc_view cc_qna">
                    <h3>
                        <a class="tit">1:1 문의</a>
                    </h3>
                    <dl class="list">
                        <dt>24시간 접수 가능</dt>
                        <dd>고객센터 운영시간에 순차적으로 답변해드리겠습니다.</dd>
                    </dl>
                </div>
            </div>
            <div class="company">
                <ul class="list">
                    <li>
                        <a class="link">이용약관</a>
                    </li>
                    <li>
                        <a class="link emph">개인정보처리방침</a>
                    </li>
                    <li>
                        <a class="link">이용안내</a>
                    </li>
                </ul>
                    법인명 (상호) : 주식회사 브로컬리
                    <span class="fbar">I</span>
                    사업자 등록번호 : 123-12-12345
                    <a class="link">사업자정보 확인</a>
                    <br>
                    통신판매업 : 제 2019-서울중구-2086 호
                    <span class="fbar">I</span>
                    개인정보보호책임자 : 배지혜
                    <br>
                    주소 : 서울특별시 강남구 강남대로84길 16 제이스타워 11층~12층
                    <br>
                    대표이사 : 서예림
                    <br>
                    채용문의
                    <a class="link">recruit@brokurlycorp.com</a>
                    <br>
                    팩스: 070 - 0000 - 0000 
                    <span class="fbar">I</span>
                    이메일
                    <a class="link">help@brokurlycorp.com</a>
                    <em class="copy">ⓒ BROKURLY CORP. ALL RIGHTS RESERVED</em>
                <ul class="list_sns">
                    <li>
                        <a class="link_sns lst" target="_blank">
                            <img src="${path }/resources/img/icon/ico_git.png" alt="브로컬리 깃 허브 바로가기">
                        </a>
                    </li>
                    <li>
                        <a class="link_sns youtub" target="_blank">
                            <img src="${path }/resources/img/icon/ico_youtub.png" alt="브로컬리 유튜브 바로가기">
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</body>
</html>