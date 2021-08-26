$(function() {
    var new_address_btn = $('.new_address');

    new_address_btn.click(() => {
        new daum.Postcode({
			oncomplete : function(data) {
				var roadAddr = data.roadAddress; // 도로명 주소 변수
				var jibunAddr = data.jibunAddress; // 지번 주소 변수
				if (roadAddr !== '') {
					document.getElementById("main_addr").value = roadAddr;
                    console.log($('#main_addr').val());

				} else if (jibunAddr !== '') {
					document.getElementById("main_addr").value = jibunAddr;
				}
                $.ajax({
                    url: '/brokurly/customer/mypage/address',
                    type: 'GET',
                    data: {
                        'main_addr': $('#main_addr').val()
                    },
                    success: function(data) {
                        if (data != '') {
                            window.open("/brokurly/customer/mypage/destination_popup", "새 배송지 입력", "width=500, height=550");
                        } 
                    },
                    error: function() {
                        alert("서버오류");
                    }
                });
			}
		}).open();
    });
});