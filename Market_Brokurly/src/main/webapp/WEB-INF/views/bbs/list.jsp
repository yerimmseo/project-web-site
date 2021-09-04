<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${path }/resources/css/bbs.css" />
    <script type="text/javascript" src="https://res.kurly.com/js/lib/jquery-1.10.2.min.js"></script>
    <title>브로컬리 :: 내일의장보기 브로컬리 공지사항</title>
<script>
	$(document).ready(function(){

		$("#searchBtn").on("click", function(event){
			self.location = "list" + '${pageMaker.makeQuery(1)}' + "&searchType="
				+ $("select option:selected").val()
				+ "&keyword=" + encodeURIComponent($('#keywordInput').val());
		});
		
		$("#newBtn").on("click", function(evt){
			self.location = "register";
		});
		
	}); 

	$(".pagination li a").on("click", function(event){
		event.preventDefault();
		
		var targetPage = $(this).attr("href");
		
		var jobForm = $("#jobForm");
		jobForm.find("[name='page']").val(targetPage);
		jobForm.attr("action", "/bbs/list").attr("method", "get");
		jobForm.submit();
	});
</script>
</head>
<body>

	<div class="header">
		<jsp:include page="../include/header.jsp"></jsp:include>
	</div>
<div id="wrap">
        <div id="container">
            <div id="main">
                <div id="content">
                    <div class="page_aticle aticle_type2">
                        <div id="snb" class="snb_cc">
                            <h2 class="tit_snb">고객센터</h2>
                            <div class="inner_snb">
                                <ul class="list_menu">
                                    <li class="on">
                                        <a href="${path }/bbs/list">
                                            공지사항
                                        </a>
                                    </li>
                                    <li>
                                        <a href="${path }/bbs/question">
                                            자주하는 질문
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="page_section">
                            <div class="head_aticle">
                                <h2 class="tit">
                                    공지사항
                                    <span class="tit_sub">컬리의 새로운 소식들과 유용한 정보들을 한곳에서 확인하세요.</span>
                                </h2>
                            </div>
                            <form name="frmList" action="/shop/board/list.php?&" onsubmit="return chkFormList(this)">
                                <input type="hidden" name="id" value="notice">
                              
                                <table width="100%" align="center" cellpadding="0" cellspacing="0">
                                    <tbody>
                                        <tr>
                                            <td>
                                                <div class="xans-element- xans-myshop xans-myshop-couponserial ">
                                                    <table width="100%" class="xans-board-listheader jh" cellpadding="0"
                                                        cellspacing="0">
                                                        <thead>
                                                            <tr>
                                                                <th>번호</th>
                                                                <th>제목</th>
                                                                <th>작성자</th>
                                                                <th>작성일</th>
                                                                <th>조회</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                           	<c:forEach items="${list}" var="boardVO">
																<tr>
																	<td>${boardVO.bno}</td>
																	<td><a href="/brokurly/bbs/readPage${pageMaker.makeSearch(pageMaker.pvo.page)}&bno=${boardVO.bno}">${boardVO.title}</a></td>
																	<td>${boardVO.writer}</td>
																	<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardVO.regdate}"/></td>
																	<td>${boardVO.viewcnt}</td>
																</tr>
															</c:forEach>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>                            
                            </form>
                            
                            
                            <form id="jobForm">
								<input type="hidden" name="page" value="${pageMaker.pvo.page}">
								<input type="hidden" name="perPageNum" value="${pageMaker.pvo.perPageNum}">
							</form>
							
							<div class="pagenum">
								<ul class="pagination">
									<c:if test="${pageMaker.prev}">
										<li><a href="list${pageMaker.makeSearch(pageMaker.startPage-1)}">&laquo;</a></li>
									</c:if>
									
									<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
										<li 
											<c:out value="${pageMaker.pvo.page == idx?'class=active':'' }"/>>
											<a href="list${pageMaker.makeSearch(idx)}">${idx}</a>
										</li>
									</c:forEach>
									
									<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
										<li><a href="list${pageMaker.makeSearch(pageMaker.endPage+1)}">&raquo;</a></li>
									</c:if>
								</ul>
							</div>
							
							<hr>
							
							<div>
								<select name="searchType">
									<option value="n" <c:out value="${pvo.searchType == null?'selected':''}"/>>모두보기</option>
									<option value="t" <c:out value="${pvo.searchType eq 't'?'selected':''}"/>>제목</option>
									<option value="c" <c:out value="${pvo.searchType eq 'c'?'selected':''}"/>>내용</option>
									<option value="w" <c:out value="${pvo.searchType eq 'w'?'selected':''}"/>>작성자</option>
									<option value="tc" <c:out value="${pvo.searchType eq 'tc'?'selected':''}"/>>제목 + 내용</option>
									<option value="cw" <c:out value="${pvo.searchType eq 'cw'?'selected':''}"/>>내용 + 작성자</option>
									<option value="tcw" <c:out value="${pvo.searchType eq 'tcw'?'selected':''}"/>>제목 + 내용 + 작성자</option>
								</select>
								<input type="text" name="keyword" id="keywordInput" value="${pvo.keyword}">
								<button id="searchBtn" ><img src="${path }/resources/img/bbs/search.png"></button>
								<button id="newBtn">글작성</button>
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
</body>
</html>