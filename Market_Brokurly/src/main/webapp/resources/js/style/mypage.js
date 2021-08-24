$(function() {
	var grade_logo = $('.grade_logo');
	var grade_logo_value = $.trim($('.grade_logo').text());
	var write_available = $('.write_available');
	var write_complete = $('.write_complete');
	var before_view = $('.before_view');
	var after_view = $('.after_view');

	/* 계급별 색상 변경 */
	if (grade_logo_value == '웰컴') {
		grade_logo.addClass('class0');
	} else if (grade_logo_value == '일반') {
		grade_logo.addClass('class1');
	} else if (grade_logo_value == '프렌즈') {
		grade_logo.addClass('class2');
	} else if (grade_logo_value == '그린') {
		grade_logo.addClass('class3');
	} else if (grade_logo_value == '아스파라거스') {
		grade_logo.addClass('class4');
	} else if (grade_logo_value == '브로컬리') {
		grade_logo.addClass('class5');
	}
	
	write_available.click(() => {
		write_available.addClass('on');
		write_complete.removeClass('on');
		before_view.css('display', 'block');
		after_view.css('display', 'none');
	});
	
	write_complete.click(() => {
		write_available.removeClass('on');
		write_complete.addClass('on');
		before_view.css('display', 'none');
		after_view.css('display', 'block');
	});
	
});

$(function() {
    var new_pw_input = $('.new_pw_input');
    var new_pw_guide = $('.new_pw_guide');
    var chk_new_pw_input = $('.chk_new_pw_input');
    var chk_new_pw_guide = $('.chk_new_pw_guide');
    var other_chk_btn = $('.other_chk_btn');
    var code_num = $('.code_num');
    var code_num_guide = $('.code_num_guide');
    var birth_input = $('.birth_input');
    var birth_day = $('.birth_day');
	var btn_choice = $('.btn_choice');
	var layer_choice = $('.layer_choice');
	var bg_dim = $('.bg_dim');
	var btn_ok = $('.btn_ok');
	var btn_close = $('.btn_close');

    new_pw_input.click(() => {
        new_pw_guide.css('display', 'block');
    });

    chk_new_pw_input.click(() => {
        chk_new_pw_guide.css('display', 'block');
    });

    other_chk_btn.click(() => {
        code_num.css('display', 'block');
        code_num_guide.css('display', 'block');
    });

    birth_input.click(() => {
        birth_day.css('border', 'solid 1px #333');
    });

    birth_input.blur(() => {
        birth_day.css('border', 'solid 1px #ddd');
    });

	btn_choice.click(() => {
		layer_choice.css('display', 'block');
        bg_dim.css('display', 'block');
	});
	
	btn_ok.click(() => {
        layer_choice.css('display', 'none');
        bg_dim.css('display', 'none');
    });

    btn_close.click(() => {
        layer_choice.css('display', 'none');
        bg_dim.css('display', 'none');
    });
});