$(function() {
	var grade_logo = $('.grade_logo');
	var grade_logo_value = $.trim($('.grade_logo').text());

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
	
});