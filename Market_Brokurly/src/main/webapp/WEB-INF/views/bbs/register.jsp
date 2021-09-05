<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path }/resources/css/bbsdetail.css" />
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
                                       <form method="post">
                                        	<div class="box-body">
                                            <table width="100%">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <table class="boardView" width="100%">
                                                                <tbody>
                                                                    <tr>
                                                                    <div class="form-group">
                                                                        <th scope="row" style="border:none;">제목</th>
                                                                        <td><input type="text" name="title" class="form-control" placeholder="Enter Title"></td>
                                                                    </div>
                                                                    </tr>
                                                                    <tr>
                                                                    	<div class="form-group">
                                                                        	<td scope="row">작성자</td>
                                                                        	<td><input type="text" name="writer" class="form-control" placeholder="Enter Writer"></td>
                                                                    	</div>
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
                                                                            <div class="form-group">
                                                                            	<textarea name="content" class="form-control" cols="60" rows="10" placeholder="Enter Contents"></textarea>
				                                       					 	</div>
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
                                                                            <div class="box-footer">
																				<button type="submit" class="btn_ok">글쓰기</button>
																			</div>
                                                                        </td>
                                                               
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            
                                            </div>
                                            
                                            <br>
                                            <table width="100%" cellpadding="5" cellspacing="0">
                                                <colgroup>
                                                    <col width="100" align="right" bgcolor="#f7f7f7"
                                                        style="padding-right:10px">
                                                    <col style="padding-left:10px">
                                                </colgroup>
                                            </table>
                                          
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        </form>
                        <script>

                            // KM-1483 Amplitude
                            KurlyTracker.setScreenName('notice_detail');

                        </script>
                    </div>
                </div>
            </div>
        </div>
</body>
</html>