<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons|Material+Icons+Sharp|Material+Icons+Two+Tone" rel="stylesheet">
<link rel="stylesheet" href="${path }/resources/css/signup.css">
</head>
<body>

	<!-- header 추가 해야됨 -->
	<div class="header">
		<jsp:include page="../home.jsp"></jsp:include>
	</div>

    <div class="contents">
        <div class="join_body">
            <div class="member_join">
                <form action="">
                    <div class="field_head">
                        <h3 class="tit">회원가입</h3>
                        <p class="sub">
                            <span class="ico">*</span>
                            필수입력사항
                        </p>
                    </div>
                    <table class="tbl">
                        <tr class="">
                            <th>아이디<span class="ico">*</span></th>
                            <td>
                                <input type="text" name="mid" class="id_input" placeholder="6자 이상의 영문 혹은 영문과 숫자를 조합">
                                <a class="chk_btn">중복확인</a>
                                <p class="txt_guide square id_guide">
                                    <span class="txt">6자 이상의 영문 혹은 영문과 숫자를 조합</span>
                                    <span class="txt">아이디 중복확인</span>
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <th>비밀번호<span class="ico">*</span></th>
                            <td>
                                <input type="password" name="password" class="password_input" placeholder="비밀번호를 입력해주세요">
                                <p class="txt_guide square password_guide">
                                    <span class="txt">10자 이상 입력</span>
                                    <span class="txt">영문/숫자/특수문자(공백 제외)만 허용하며, 2개 이상 조합</span>
                                    <span class="txt">동일한 숫자 3개 이상 연속 사용 불가</span>
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <th>비밀번호확인<span class="ico">*</span></th>
                            <td>
                                <input type="password" name="password" class="pass_chk_input" placeholder="비밀번호를 한번 더 입력해주세요">
                                <p class="txt_guide square pass_chk_guide">
                                    <span class="txt">동일한 비밀번호를 입력해주세요.</span>
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <th>이름<span class="ico">*</span></th>
                            <td>
                                <input type="text" name="name" placeholder="이름을 입력해주세요">
                            </td>
                        </tr>
                        <tr>
                            <th>이메일<span class="ico">*</span></th>
                            <td>
                                <input type="text" name="email" placeholder="예: marketbrokurly@brokurly.com">
                                <a class="chk_btn">중복확인</a>
                            </td>
                        </tr>
                        <tr>
                            <th>휴대폰<span class="ico">*</span></th>
                            <td>
                                <div class="phone_num">
                                    <input type="text" pattern="[0-9]*" placeholder="숫자만 입력해주세요">
                                    <button class="btn_cert send_num_btn" type="button">인증번호 받기</button>
                                </div>
                                <div class="chk_phone_num">
                                    <input type="text" pattern="[0-9]*">
                                    <button class="btn_cert" type="button">인증번호 확인</button>
                                    <p id="countdown" class="count_down">0 : 06</p>
                                </div>
                                <p class="txt_guide square phone_guide">
                                    <span class="phone_guide">인증번호가 오지 않는다면, 통신사 스팸 차단 서비스 혹은 휴대폰 번호 차단 여부를 확인해주세요. (마켓브로컬리 1644-1107)</span>
                                </p>
                            </td>
                        </tr>
                        <tr class="delevery">
                            <th>주소<span class="ico">*</span></th>
                            <td>
                                <a class="search_address">
                                    <span class="material-icons-sharp">
                                        search
                                    </span>
                                    <span>주소 검색</span>
                                </a>
                                <div class="main_sub_wrap">
                                    <input type="text">
                                    <button class="btn_cert research" type="button">
                                        <span class="material-icons-sharp">
                                            search
                                        </span>
                                        <span>재검색</span>
                                    </button>
                                    <input type="text" placeholder="나머지 주소를 입력해주세요">
                                </div>
                                <p class="txt_guide">
                                    배송지에 따라 상품 정보가 달라질 수 있습니다.
                                </p>
                            </td>
                        </tr>
                        <tr class="select_gender">
                            <th>성별</th>
                            <td>
                                <div class="gender_wrap">
                                    <label>
                                        <input type="radio" name="gender">
                                        <span class="ico"></span>
                                        남자
                                    </label>
                                    <label>
                                        <input type="radio" name="gender">
                                        <span class="ico"></span>
                                        여자
                                    </label>
                                    <label>
                                        <input type="radio" name="gender" checked>
                                        <span class="ico"></span>
                                        선택안함
                                    </label>
                                </div>
                            </td>
                        </tr>
                        <tr class="birth">
                            <th>생년월일</th>
                            <td>
                                <div class="birth_day">
                                    <input type="text" name="birth_year" class="birth_input" maxlength="4" placeholder="YYYY">
                                    <span class="bar"></span>
                                    <input type="text" name="birth_month" class="birth_input" maxlength="2" placeholder="MM">
                                    <span class="bar"></span>
                                    <input type="text" name="birth_day" class="birth_input" maxlength="2" placeholder="DD">
                                </div>
                            </td>
                        </tr>
                        <tr class="select_recommend">
                            <th>추가입력 사항</th>
                            <td>
                                <div class="group_radio">
                                    <span class="radio_wrap">
                                        <label>
                                            <input type="radio" name="recommend" class="chk_reco">
                                            <span class="ico"></span>
                                            추천인 아이디
                                        </label>
                                        <label>
                                            <input type="radio" name="recommend" class="chk_event">
                                            <span class="ico"></span>
                                            참여 이벤트명
                                        </label>
                                    </span>
                                </div>
                                <div>
                                    <input type="text" class="add_input reco_input" placeholder="추천인 아이디를 입력해주세요.">
                                    <input type="text" class="add_input event_input" placeholder="참여 이벤트명을 입력해주세요.">
                                    <p class="txt_guide reco_guide">
                                        추천인 아이디와 참여 이벤트명 중 하나만 선택 가능합니다.
                                        <br>
                                        가입 이후, 수정이 불가합니다.
                                        <br>
                                        대소문자 및 띄어쓰기에 유의해주세요.
                                    </p>
                                </div>
                            </td>
                        </tr>
                        <tr class="reg_agree">
                            <th>이용약관동의<span class="ico">*</span></th>
                            <td>
                                <div class="bg_dim"></div>
                                <div class="all_check">
                                    <label class="check_agree label_all_check">
                                        <input type="checkbox" name="agree_allcheck" class="all_check_input">
                                        <span class="ico"></span>
                                        전체 동의합니다.
                                    </label>
                                    <p class="sub">
                                        선택항목에 동의하지 않은 경우도 회원가입 및 일반적인 서비스를 이용할 수 있습니다.
                                    </p>
                                </div>
                                <div class="check_view">
                                    <label class="check_agree label_block">
                                        <input type="checkbox" name="agree_allcheck" class="chk" name="chk">
                                        <span class="ico"></span>
                                        이용약관 동의
                                        <span class="sub">(필수)</span>
                                    </label>
                                    <a class="link btn_link btn_agreement">약관보기</a>
                                </div>
                                <div class="layer layer_agreement">
                                    <div class="inner_layer">
                                        <h4 class="tit_layer">
                                            이용약관
                                            <span class="sub">(필수)</span>
                                        </h4>
                                        <div id="service_view" class="box_tbl">
                                            <div class="box_type">
                                                <h3 class="box_tit">총칙</h3>
                                                <div class="box_view">
                                                    <div class="txt_view">
                                                        <!-- 1조 -->
                                                        제1조(목적)
                                                        <br>
                                                        이 약관은 주식회사 브로컬리(전자상거래 사업자)가 운영하는 인터넷사이트 마켓브로컬리(이하 "브로컬리"라 한다)에서 제공하는 전자상거래 관련 서비스(이하 "서비스"라 한다)를 이용함에 있어
                                                        브로컬리와 이용자의 권리, 의무 및 책임사항을 규정함을 목적으로 합니다.
                                                        <br>
                                                        *PC통신, 스마트폰 앱, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 준용합니다.
                                                        <br>
                                                        <br>
                                                        <!-- 2조 -->
                                                        제2조(정의)
                                                        <br>
                                                        ① "브로컬리"란 회사가 재화 또는 용역(이하 "재화 등"이라 함)을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 재화 등을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 서비스를 운영하는 사업자의 의미로도 사용합니다.
                                                        <br>
                                                        ② "이용자"란 "브로컬리"에 접속하여 이 약관에 따라 "브로컬리"가 제공하는 서비스를 받는 회원 및 비회원을 말합니다.
                                                        <br>
                                                        ③ ‘회원’이라 함은 "브로컬리"에 회원등록을 한 자로서, 계속적으로 "브로컬리"가 제공하는 서비스를 이용할 수 있는 자를 말합니다.
                                                        <br>
                                                        ⑤ "휴면회원"이라 함은 "컬리"의 ‘회원’중 1년 이상 서비스 이용 기록이 없는 자를 말합니다. 휴면 회원은 "브로컬리"의 정책에 따라 서비스 이용이 제한 될 수 있으며, 다시 서비스를 이용하기 위하여는 거래 안전 등을 위하여 "브로컬리"가 정하는 본인확인 절차 등을 이행하여야 올바른 ‘회원’의 서비스를 이용할 수 있습니다.
                                                        <br>
                                                        <br>
                                                        <!-- 3조 -->
                                                        제3조(약관 등의 명시와 설명 및 개정)
                                                        <br>
                                                        ① "브로컬리"는 이 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함), 전화번호/모사전송번호/전자우편주소, 사업자등록번호, 통신판매업 신고번호, 개인정보 보호책임자 등을 이용자가 쉽게 알 수 있도록 컬리의 초기 서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.
                                                        <br>
                                                        ② "브로컬리"는 이용자가 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 청약철회/배송책임/환불조건 등과 같은 중요한 내용을 이용자가 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등을 제공하여 이용자의 확인을 구하여야 합니다.
                                                        <br>
                                                        ③ "브로컬리"는「전자상거래 등에서의 소비자보호에 관한 법률」, 「약관의 규제에 관한 법률」, 「전자문서 및 전자거래기본법」, 「전자금융거래법」, 「전자서명법」, 「개인정보보호법」, 「방문판매 등에 관한 법률」, 「소비자기본법」 등 관련 법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.
                                                        <br>
                                                        ④ "브로컬리"가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 몰의 초기화면에 그 적용일자 7일 이전부터 적용일자 전일까지 공지합니다. 다만, 이용자에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지합니다. 이 경우 "브로컬리"는 개정 전 내용과 개정 후 내용을 명확하게 비교하여 이용자가 알기 쉽도록 표시합니다.
                                                        <br>
                                                        ⑤ "브로컬리"가 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는 개정 전의 약관조항이 그대로 적용됩니다. 다만 이미 계약을 체결한 이용자가 개정약관 조항의 적용을 받기를 원하는 뜻을 제4항에 의한 개정약관의 공지기간 내에 "브로컬리"에 송신하여 "브로컬리"의 동의를 받은 경우에는 개정약관 조항이 적용됩니다.
                                                        <br>
                                                        ⑥ 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 전자상거래 등에서의 소비자보호에 관한 법률, 약관의 규제 등에 관한 법률, 공정거래위원회가 정하는 전자상거래 등에서의 소비자 보호지침 및 관계법령 또는 상관례에 따릅니다.
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="box_type">
                                                <h3 class="box_tit">회사의 서비스</h3>
                                                <div class="box_view">
                                                    <div class="txt_view">
                                                        <!-- 4조 -->
                                                        제4조(서비스의 제공 및 변경)
                                                        <br>
                                                        ① "브로컬리"는 다음과 같은 업무를 수행합니다.
                                                        <br>
                                                        1. 재화 또는 용역에 대한 정보 제공 및 구매계약의 체결
                                                        <br>
                                                        2. 구매계약이 체결된 재화 또는 용역의 배송
                                                        <br>
                                                        3. 기타 "브로컬리"가 정하는 업무
                                                        <br>
                                                        ② "브로컬리"는 재화 또는 용역의 품절 또는 기술적 사양의 변경 등의 경우에는 장차 체결되는 계약에 의해 제공할 재화 또는 용역의 내용을 변경할 수 있습니다. 이 경우에는 변경된 재화 또는 용역의 내용 및 제공일자를 명시하여 현재의 재화 또는 용역의 내용을 게시한 곳에 즉시 공지합니다.
                                                        <br>
                                                        ③ "브로컬리"가 제공하기로 이용자와 계약을 체결한 서비스의 내용을 재화등의 품절 또는 기술적 사양의 변경 등의 사유로 변경할 경우에는 그 사유를 이용자에게 통지 가능한 주소로 즉시 통지합니다.
                                                        <br>
                                                        ④ 전항의 경우 "브로컬리"는 이로 인하여 이용자가 입은 손해를 배상합니다. 다만, "브로컬리"가 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.
                                                        <br>
                                                        <br>
                                                        <!-- 5조 -->
                                                        제5조(서비스의 중단)
                                                        <br>
                                                        ① "브로컬리"는 컴퓨터 등 정보통신설비의 보수점검/교체 및 고장, 통신의 두절 등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있습니다.
                                                        <br>
                                                        ② "브로컬리"는 제1항의 사유로 서비스의 제공이 일시적으로 중단됨으로 인하여 이용자 또는 제3자가 입은 손해에 대하여 배상합니다. 단, "브로컬리"가 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.
                                                        <br>
                                                        ③ 사업종목의 전환, 사업의 포기, 업체 간의 통합 등의 이유로 서비스를 제공할 수 없게 되는 경우에는 "브로컬리"는 제8조에 정한 방법으로 이용자에게 통지하고 당초 "브로컬리"에서 제시한 조건에 따라 소비자에게 보상합니다. 다만, "브로컬리"가 보상기준 등을 고지하지 아니한 경우에는 이용자들의 마일리지 또는 적립금 등을 "브로컬리"에서 통용되는 통화가치에 상응하는 현물 또는 현금으로 이용자에게 지급합니다.
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <button class="btn_ok" type="button">확인</button>
                                        <button class="btn_close" type="button"></button>
                                    </div>
                                </div>
                                <div class="check_view">
                                    <label class="check_agree label_block">
                                        <input type="checkbox" name="agree_allcheck" class="chk" name="chk">
                                        <span class="ico"></span>
                                        개인정보 수집·이용 동의
                                        <span class="sub">(필수)</span>
                                    </label>
                                    <a class="link btn_link btn_essential">약관보기</a>
                                </div>
                                <div class="layer layer_essential">
                                    <div class="inner_layer">
                                        <div class="in_layer">
                                            <h4 class="tit_layer">
                                                개인정보 수집·이용 동의
                                                <span class="sub">(필수)</span>
                                            </h4>
                                            <div class="box_tbl">
                                                <table class="inner_tbl">
                                                    <thead>
                                                        <tr>
                                                            <th scope="row" class="tit1">수집 목적</th>
                                                            <th scope="row" class="tit2">수집 항목</th>
                                                            <th scope="row" class="tit3">보유 기간</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>이용자 식별 및 본인여부</td>
                                                            <td rowspan="4">이름, 주소, 비밀번호, 휴대폰 번호, 이메일, 주소</td>
                                                            <td rowspan="4" class="emph">
                                                                회원 탈퇴
                                                                <br>
                                                                즉시 파기
                                                                <br>
                                                                <br>
                                                                부정이용 방지를 위하여 30일 동안 보관 (아이디, 휴대폰 번호) 후 파기
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>거점 기반 서비스 제공</td>
                                                        </tr>
                                                        <tr>
                                                            <td>계약 이행 및 약관변경 등의 고지를 위한 연락, 본인의사 확인 및 민원 등의 고객 고충 처리</td>
                                                        </tr>
                                                        <tr>
                                                           <td>부정 이용 방지, 비인가 사용방지 및 서비스 제공 및 계약의 이행</td> 
                                                        </tr>
                                                        <tr>
                                                            <td>서비스방문 및 이용기록 분석, 부정이용 방지 등을 위한 기록 관리</td>
                                                            <td>서비스 이용기록, IP주소, 쿠키, MAC 주소, 모바일 기기정보(광고식별자, OS/앱 버전)</td>
                                                            <td class="emph">회원 탈퇴 즉시 또는 이용 목적 달성 즉시 파기</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <p class="txt_service">
                                                서비스 제공을 위해서 필요한 최소한의 개인정보입니다. 동의를 해 주셔야 서비스를 이용하실 수 있으며, 동의하지 않으실 경우 서비스에 제한이 있을 수 있습니다.
                                            </p>
                                        </div>
                                        <button class="btn_ok" type="button">확인</button>
                                        <button class="btn_close" type="button"></button>
                                    </div>
                                </div>
                                <div class="check_view">
                                    <label class="check_agree label_block">
                                        <input type="checkbox" name="agree_allcheck" class="chk" name="chk">
                                        <span class="ico"></span>
                                        개인정보 수집·이용 동의
                                        <span class="sub">(선택)</span>
                                    </label>
                                    <a class="link btn_link btn_choice">약관보기</a>
                                </div>
                                <div class="layer layer_choice choice">
                                    <div class="inner_layer">
                                        <div class="in_layer">
                                            <h4 class="tit_layer">
                                                개인정보 수집·이용 동의
                                                <span class="sub">(선택)</span>
                                            </h4>
                                            <div class="box_tbl">
                                                <table class="inner_tbl">
                                                    <thead>
                                                        <tr>
                                                            <th scope="row" class="tit1">수집 목적</th>
                                                            <th scope="row" class="tit2">수집 항목</th>
                                                            <th scope="row" class="tit3">보유 기간</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>맞춤형 회원 서비스 제공</td>
                                                            <td>성별, 생년월일</td>
                                                            <td class="emph">
                                                                회원 탈퇴
                                                                <br>
                                                                즉시 파기
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                                <p class="txt_service2">
                                                    동의를 거부하시는 경우에도 서비스는 이용하실 수 있습니다.
                                                </p>
                                            </div>
                                            <button class="btn_ok" type="button">확인</button>
                                            <button class="btn_close" type="button"></button>
                                        </div>
                                    </div>
                                </div>
                                <div class="check_view">
                                    <label class="check_agree label_block">
                                        <input type="checkbox" name="agree_allcheck" class="chk" name="chk">
                                        <span class="ico"></span>
                                        무료배송, 할인쿠폰 등 혜택/정보 수신 동의
                                        <span class="sub">(선택)</span>
                                    </label>
                                    <div class="check_event email_sms">
                                        <label class="check_agree label_block">
                                            <input type="checkbox" name="agree_allcheck" class="chk" name="chk">
                                            <span class="ico"></span>
                                            <span id="method">SMS</span>
                                        </label>
                                        <label class="check_agree label_block">
                                            <input type="checkbox" name="agree_allcheck" class="chk" name="chk">
                                            <span class="ico"></span>
                                            <span id="method">이메일</span>
                                        </label>
                                    </div>
                                    <p class="sms_info">
                                        동의 시 한달간 [5% 적립] + [무제한 무료배송]
                                        <span class="sub">(첫 주문 후 적용)</span>
                                    </p>
                                </div>
                                <div class="check_view">
                                    <label class="check_agree label_block">
                                        <input type="checkbox" name="agree_allcheck" class="chk" name="chk">
                                        <span class="ico"></span>
                                        본인은 만 14세 이상입니다.
                                        <span class="sub">(필수)</span>
                                    </label>
                                </div>
                            </td>
                        </tr>
                    </table>
                    <div id="form_submit" class="form_footer">
                        <button class="btn active btn_join">가입하기</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="${path }/resources/js/signup.js"></script>
</body>
</html>