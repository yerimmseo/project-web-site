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
																				<span class="bhs_button yb"style="float:none;"><button type="submit" class="btn_ok">글쓰기</button></span>
																			</div>
                                                                        </td>
                                                                        
                                                                        <td align="right">
                                                                            <a href="list.php?id=notice">
                                                                                <span class="bhs_button yb"style="float:none;">목록</span>
                                                                            </a>
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
                                            <p>
                                                <br>
                                                <textarea id="examC_931" style="display:none;width:100%;height:300px">
                                                <div><font face="Arial">고객님, 안녕하세요, 마켓컬리 입니다.</font></div><div><font face="Arial"><br></font></div><div><font face="Arial">컬리에서는 친환경 포장재이나 사용 후에도 지속 가능한 유통을 고려하여, 포장재 [종이박스] 회수 서비스를 실시하고 있으므로 관련 안내 드립니다.</font></div><div><font face="Arial"><br></font></div><div><font face="Arial"><br></font></div><div><b><font size="4" face="Arial"># 종이박스 회수 서비스 이용 안내</font></b></div><div><font face="Arial" style=""><b><br></b></font></div><div><font face="Arial"><b>1) 대상 지역 : 수도권 샛별배송 지역</b></font></div><div><font face="Arial"><b><br></b></font></div><div><font face="Arial" style=""><b>2) 회수 대상 : 종이박스 ( 1회 최대 3개 )</b></font></div><div><font face="Arial">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <b>&nbsp; &nbsp; &nbsp; &nbsp;</b><u style="background-color: rgb(255, 255, 128);">※ 상기 대상 외 기타 종이소재 포장재( e.g. 지아미 파우치, 종이 봉투, 종이테이프 등 ) 및 아이스팩은 미회수</u></font></div><div><font face="Arial"><br></font></div><div><b><font face="Arial">3) 회수 방법 :</font></b></div><div><font face="Arial">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <b>① 상품 수령 후 박스에서 송장을 제거해주세요.</b></font></div><div><font face="Arial"><b>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ② 새로운 주문 완료 후, 박스를 펼쳐 자택 문 앞에 놓아 주세요.</b></font></div><div><font face="Arial"><b>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ③ 새로운 주문이 배송 됨과 동시에 배송 기사님께서 종이 박스를 회수합니다.</b></font></div><div><font face="Arial"><b><br></b></font></div><div><font face="Arial"><b>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 이 후,&nbsp; 회수한 박스는 컬리가 재활용 업체에 전달합니다.</b></font></div><div><font face="Arial"><br></font></div><div><b><font face="Arial">4) 유의 사항 :&nbsp;</font></b></div><div><font face="Arial" style="">- 간혹, 배송 매니저님들께서 깜빡하고 회수를 잊으시거나 부득이하게 회수가 어려운 경우 회수가 누락 될 수 있습니다.</font></div><div><font face="Arial" style="">&nbsp; 고객님의 너그러운 양해 부탁 드리며 배송 매니저님께 잊지 않으시도록 꼭 회수 전달 드리겠습니다.</font></div><div><font face="Arial">&nbsp;&nbsp;</font></div><div>----</div><div><span style="font-family: Arial;">상기 내용과 같이 회수 서비스를 통해 회수한 종이 박스는 재활용 업체에 전달하고 있으며&nbsp;</span></div><div><span style="font-family: Arial;">발생 한 수익금으로는 학교 숲 / 샛별 숲 키우기 프로젝트로 지구를 위한 선순환 캠페인을 함께 하고 있습니다.&nbsp;</span></div><div><br></div><div><font face="Arial">원활한 서비스 운영을 위해 내용 준수해주시길 부탁 드립니다.</font></div><div><span style="font-family: Arial;">컬리 이용에 많은 관심과 성원 보내주심에 다시 한번 감사 말씀드리며&nbsp;</span><span style="font-family: Arial;">상품 품질과 식품 안전을 유지하면서도&nbsp;</span></div><div><span style="font-family: Arial;">친환경 포장재 및 포장 간소화를 할 수 있도록 더욱 연구하는 컬리가 되겠습니다.</span></div><div><span style="font-family: Arial;">&nbsp;</span></div><div><font face="Arial">감사합니다. 마켓컬리 드림.</font></div>
                                                </textarea>
                                            </p>
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