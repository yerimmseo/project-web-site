/**
 * 
 */
function openPopup(address_chk, ths) {
	const main_addr_input = $(ths).parents('td').parents('tr').find('input[name=address_main]');
	const sub_addr_input = $(ths).parents('td').parents('tr').find('input[name=address_detail]');
	const receive_customer = $(ths).parents('td').parents('tr').find('input[name=receive_customer]');
	const receive_tel = $(ths).parents('td').parents('tr').find('input[name=receive_tel]');
	console.log(main_addr_input.val());
	console.log(sub_addr_input.val());
	if (address_chk == 1) {
		$.ajax({
			url: '/brokurly/customer/mypage/popup1',
			type: 'GET',
			data: {
				'address_main': main_addr_input.val(),
				'address_detail': sub_addr_input.val(),
				'receive_customer': receive_customer.val(),
				'receive_tel': receive_tel.val()
			},
			success: function() {
				window.open("/brokurly/customer/mypage/updateaddr_popup1", "배송지 수정", "width=500, height=550");
			},
			error: function() {
			}
		});
	}
	/* else if (address_chk == 0) {
		$.ajax({
			url: '/brokurly/customer/mypage/updateaddr_popup0',
			type: 'GET',
			data: {
				'main_addr': main_input.val(),
				'sub_addr': sub_input.val()
			},
			success: function() {
				window.open("/brokurly/customer/mypage/updateaddr_popup0", "배송지 수정", "width=500, height=550");
			},
			error: function() {
				
			}
		});
	}*/
}