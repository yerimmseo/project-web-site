<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path }/resources/css/bbsdetail.css" />
<script src="http://code.jquery.com/jquery-3.3.1.js"></script>
<script>
	$(document).ready(function(){
		
		var formObj = $("form[role='form']");
		
		console.log(formObj);
		
		$(".modifyBtn").on("click", function(){
			formObj.attr("method", "get");
			formObj.attr("action", "/brokurly/bbs/modifyPage");
			formObj.submit();
		});
		$(".removeBtn").on("click", function(){
			formObj.attr("action", "/brokurly/bbs/removePage");
			formObj.submit();
		});
		$(".goListBtn").on("click", function(){
			formObj.attr("method", "post");
			formObj.attr("action", "/brokurly/bbs/updatecnt");
			formObj.submit();
		});
	});
	
</script>
</head>
<body>
  <div id="wrap" class>
        <div id="container">
            <div id="header">
                <div class="tit_page">
                    <h2 class="tit">공지사항</h2>
                    <p class="sub">
                        컬리의 새로운 소식들과 유용한 정보들을 한곳에서 확인하세요.
                    </p>
                </div>
            </div>
            <div id="main">
                <div id="content">
                    <div class="layout-wrapper">
                        <div class="xans-element- xans-myshop xans-myshop-couponserial ">
                            <table width="100%" align="center" cellpadding="0" cellspacing="0">
                                <tbody>
                                    <tr>
                                        <td>
                                            <table width="100%">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <table class="boardView" width="100%">
                                                                <tbody>
                                                                    <tr>
                                                                        <th scope="row" style="border:none;">제목</th>
                                                                        <td>
																			${boardVO.title}
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td scope="row">작성자</td>
                                                                        <td>${boardVO.writer}</td>
                                                                    </tr>
                                                                    <tr class="etcArea">
                                                                        <td colspan="2">
                                                                            <ul>
                                                                                <li class="date ">
                                                                                    <strong class="th">작성일</strong>
                                                                                    <span class="td">${boardVO.regdate}</span>
                                                                                </li>
                                                                                <li class="hit">
                                                                                    <strong class="th">조회수</strong>
                                                                                    <span class="td">${boardVO.viewcnt}</span>
                                                                                </li>
                                                                            </ul>
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right" class="eng" style="padding:5px;"></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="padding:10px;" height="200" valign="top"
                                                            id="contents">
                                                            <table width="100%" style="table-layout:fixed">
                                                                <tbody>
                                                                    <tr>
                                                                        <td class="board_view_content"
                                                                            style="word-wrap:break-word;word-break:break-all"
                                                                            id="contents_931" valign="top">
                                                                            <span class="td">
                                                  							${boardVO.content}
                                                                            </span>
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td height="1" bgcolor="#f4f4f4"></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <br>
                                            <table width="100%" style="table-layout:fixed" cellpadding="0"
                                                cellspacing="0">
                                                <tbody>
                                                    <tr>
                                                        <td align="center" style="padding-top:10px;">
                                                            <table width="100%">
                                                                <tbody>
                                                                    <tr>
                                                                        <td align="right">
                                                                           <div>
																				<button type="submit" class="modifyBtn">Modify</button>
																				<button type="submit" class="removeBtn">Remove</button>
																				<button type="submit" class="goListBtn">List</button>
																			</div>
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <br>
                                         
                                         
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <script>

                            // KM-1483 Amplitude
                            KurlyTracker.setScreenName('notice_detail');

                        </script>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
	<form role="form" method="post" action="modifyPage">
		<input type="hidden" name="bno" value="${boardVO.bno}">
		<input type="hidden" name="page" value="${pvo.page}">
		<input type="hidden" name="perPageNum" value="${pvo.perPageNum}">
		<input type="hidden" name="searchType" value="${pvo.searchType}">
		<input type="hidden" name="keyword" value="${pvo.keyword}">
	</form>
	
		<div class="box-body">
				<div class="form-group">
					<input type="hidden" name="title" class="form-control" value="${boardVO.title}" readonly>
				</div>
				<div class="form-group">
					<textarea  style=display:none name="content" class="form-control" rows="3" readonly>${boardVO.content}</textarea>
				</div>
				<div class="form-group">
					<input type="hidden" name="writer" class="form-control" value="${boardVO.writer}" readonly>
				</div>
		</div>	
</body>
</html>