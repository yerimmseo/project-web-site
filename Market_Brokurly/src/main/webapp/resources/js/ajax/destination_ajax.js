$(function() {
    var new_address_btn = $('.new_address');
	var research_btn = $('#research_btn');
	var add_addr_btn = $('#add_addr_btn');
	var receive_tel_input = $('#receive_tel');
	var address_detail_input = $('#address_detail');
	var popup1_btn = $('#popup1_btn');
	var popup0_save_btn = $('#popup0_save_btn');
	var popup0_del_btn = $('#popup0_del_btn');
	
	var replaceNotInt = /[^0-9]/gi;
	var telNumberCheck = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;

    new_address_btn.click(() => {
        new daum.Postcode({
			oncomplete: function(data) {
				var roadAddr = data.roadAddress; // 도로명 주소 변수
				var jibunAddr = data.jibunAddress; // 지번 주소 변수
				if (roadAddr !== '') {
					document.getElementById('address_main').value = roadAddr;
				} else if (jibunAddr !== '') {
					document.getElementById('address_main').value = jibunAddr;
				}
                $.ajax({
                    url: '/brokurly/customer/mypage/address',
                    type: 'GET',
                    data: {
                        'address_main': $('#address_main').val(),
                    },
                    success: function() {
                        window.open("/brokurly/customer/mypage/newaddr_popup", "새 배송지 입력", "width=500, height=550");
                    },
                    error: function() {
                        alert('서버오류');
                    }
                });
			}
		}).open();
    });

	research_btn.click(() => {
		new daum.Postcode({
			oncomplete: function(data) {
				var roadAddr = data.roadAddress; // 도로명 주소 변수
				var jibunAddr = data.jibunAddress; // 지번 주소 변수
				if (roadAddr !== '') {
					document.getElementById('address_main').value = roadAddr;
				} else if (jibunAddr !== '') {
					document.getElementById('address_main').value = jibunAddr;
				}
                $.ajax({
                    url: '/brokurly/customer/mypage/newaddr_popup',
                    type: 'GET',
                    data: {
                        'address_main': $('#address_main').val(),
                    },
                    success: function() {
                    },
                    error: function() {
                        alert('서버오류');
                    }
                });
			}
		}).open();
	});
	
	add_addr_btn.click(() => {
		var address_main = $('#address_main').val();
		var address_detail = $('#address_detail').val();
		var default_chk = $('#default_chk').is(':checked');
		
		if (address_detail === '') {
			alert('나머지 주소를 입력해주세요.');
			return;
		}
		
		if (address_main !== '' && address_detail !== '') {
			$.ajax({
				url: '/brokurly/customer/mypage/newAddr',
				type: 'GET',
				data: {
					'address_main': address_main,
					'address_detail': address_detail,
					'default_chk': default_chk
				},
				success: function() {
					alert('배송지 등록에 성공하셨습니다.');
					self.close();
					opener.parent.location.reload();
				},
				error: function() {
					alert('서버오류');
				}
			});
		}
	});
	
	// 연락처에 숫자 외 문자 입력 불가
	receive_tel_input.on('focusout', function() {
		var x = $(this).val();
		if (x.length > 0) {
			if (x.match(replaceNotInt)) {
				x = x.replace(replaceNotInt, '');
			}
		}
	}).on('keyup', function() {
		$(this).val($(this).val().replace(replaceNotInt, ''));
	});
	
	popup1_btn.click(() => {
		if (!telNumberCheck.test(receive_tel_input.val()) && receive_tel_input.val().length != 0) {
			alert('핸드폰 번호를 정확히 입력해주세요.');
			return;
		}
		if (address_detail_input.val() === '') {
			alert('나머지 주소를 입력해주세요.');
		} else {
			$.ajax({
				url: '/brokurly/customer/mypage/p1update',
				type: 'GET',
				data: {
					'address_main': $('#address_main').val(),
					'address_detail': $('#address_detail').val(),
					'receive_customer': $('#receive_customer').val(),
					'receive_tel': $('#receive_tel').val()
				},
				success: function() {
					self.close();
					opener.parent.location.reload();
				},
				arror: function() {
					alert('서버오류');
				}
			});
		}
	});
	
	popup0_save_btn.click(() => {
		if (!telNumberCheck.test(receive_tel_input.val()) && receive_tel_input.val().length != 0) {
			alert('핸드폰 번호를 정확히 입력해주세요.');
			return;
		}
		if (address_detail_input.val() === '') {
			alert('나머지 주소를 입력해주세요.');
		} else {
			$.ajax({
				url: '/brokurly/customer/mypage/p0update',
				type: 'GET',
				data: {
					'address_main': $('#address_main').val(),
					'address_detail': $('#address_detail').val(),
					'default_chk': $('#default_chk').is(':checked'),
					'receive_customer': $('#receive_customer').val(),
					'receive_tel': $('#receive_tel').val(),
				},
				success: function() {
					self.close();
					opener.parent.location.reload();
				},
				error: function() {
					alert('서버오류');
				}
			});
		}
	});
	
	popup0_del_btn.click(() => {
		var confirm_msg = confirm('배송지를 삭제하시겠습니까?');
		
		if (confirm_msg == true) {
			$.ajax({
				url: '/brokurly/customer/mypage/p0delete',
				type: 'GET',
				data: {
					'address_main': $('#address_main').val()
				},
				success: function() {
					self.close();
					opener.parent.location.reload();
				},
				error: function() {
					alert('서버오류');
				}
			});
		}
	});
});

