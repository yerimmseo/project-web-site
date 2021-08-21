$(function() {
    // 아이디 input 클릭 시 나오는 안내문
    var $id_input = $('.id_input');
    var $id_guide = $('.id_guide');
    // 패스워드 input 클릭 시 나오는 안내문
    var $password_input = $('.password_input');
    var $password_guide = $('.password_guide');
    // 패스워드 확인 input 클릭 시 나오는 안내문
    var $pass_chk_input = $('.pass_chk_input');
    var $pass_chk_guide = $('.pass_chk_guide');
    // 인증번호 받기
    var $send_num_btn = $('.send_num_btn');
    var $chk_phone_num = $('.chk_phone_num');
    var $phone_guide = $('.phone_guide');
    // 주소 검색 버튼
    var $search_address = $('.search_address');
    // 주소 받아왔을 때 나타나는 메인 주소 & 상세 주소
    var $main_sub_wrap = $('.main_sub_wrap');
    // 생일 input 합쳐서 하나인 것으로 보이게 만듦
    var $birth_input = $('.birth_input');
    var $birth_day = $('.birth_day');
    var $btn_ok = $('.btn_ok');
    var $btn_close = $('.btn_close');
    // 추천인 아이디, 참여이벤트명
    var $chk_reco = $('.chk_reco');
    var $chk_event = $('.chk_event');
    var $reco_input = $('.reco_input');
    var $event_input = $('.event_input');
    var $reco_guide = $('.reco_guide');
    // 약관보기 버튼들
    var $btn_agreement = $('.btn_agreement');
    var $btn_essential = $('.btn_essential');
    var $btn_choice = $('.btn_choice');
    // 약관 레이어
    var $layer_agreement = $('.layer_agreement');
    var $layer_essential = $('.layer_essential');
    var $layer_choice = $('.layer_choice');
    // 약관 레이어 배경
    var $bg_dim = $('.bg_dim');
    // 약관 동의 체크
    var $all_check_input = $('.all_check_input');
    var $chk = $('.chk');

    $id_input.click(() => {
        $id_guide.css('display', 'block');
    });
    
    $password_input.click(() => {
        $password_guide.css('display', 'block');
    });

    $pass_chk_input.click(() => {
        $pass_chk_guide.css('display', 'block');
    });
    
    $send_num_btn.click(() => {
        var time = 180;

        $send_num_btn.addClass('disabled');
        $chk_phone_num.css('display', 'block');
        $phone_guide.css('display', 'block');
    });

    $search_address.click(() => {
        $search_address.css('display', 'none');
        $main_sub_wrap.css('display', 'block');
    });

    $chk_reco.click(() => {
        $event_input.css('display', 'none');
        $reco_input.css('display', 'block');
        $reco_guide.css('display', 'block');
    });

    $chk_event.click(() => {
        $reco_input.css('display', 'none');
        $event_input.css('display', 'block');
        $reco_guide.css('display', 'block');
    });    

    $birth_input.focus(() => {
        $birth_day.css('border', 'solid 1px #333');
    });

    $birth_input.blur(() => {
        $birth_day.css('border', 'solid 1px #ddd');
    });

    // 약관보기
    $btn_agreement.click(() => {
        $layer_agreement.css('display', 'block');
        $bg_dim.css('display', 'block');
    });

    $btn_essential.click(() => {
        $layer_essential.css('display', 'block');
        $bg_dim.css('display', 'block');
    });

    $btn_choice.click(() => {
        $layer_choice.css('display', 'block');
        $bg_dim.css('display', 'block');
    });

    $btn_ok.click(() => {
        $layer_agreement.css('display', 'none');
        $layer_essential.css('display', 'none');
        $layer_choice.css('display', 'none');
        $bg_dim.css('display', 'none');
    });

    $btn_close.click(() => {
        $layer_agreement.css('display', 'none');
        $layer_essential.css('display', 'none');
        $layer_choice.css('display', 'none');
        $bg_dim.css('display', 'none');
    });

    $all_check_input.click(() => {
        if ($all_check_input.prop('checked')) {
            $chk.prop('checked', true);
        } else {
            $chk.prop('checked', false);
        }
    });

    $chk.click(() => {
        if ($("input[name='chk']:checked").length == 7) {
            $all_check_input.prop('checked', true);
        } else {
            $all_check_input.prop('checked', false);
        }
    });
});