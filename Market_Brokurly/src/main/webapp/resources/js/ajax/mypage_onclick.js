/**
 * 
 */
function openPopup(address_chk, ths) {
	const main_addr_input = $(ths).parents('td').parents('tr').find('input[name=address_main]');
	const sub_addr_input = $(ths).parents('td').parents('tr').find('input[name=address_detail]');
	const receive_customer = $(ths).parents('td').parents('tr').find('input[name=receive_customer]');
	const receive_tel = $(ths).parents('td').parents('tr').find('input[name=receive_tel]');
	
	/* 기본 배송지 수정(address_chk == 1), 일반 배송지 수정(address_chk == 0) */
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
				alert('서버오류');
			}
		});
	} else if (address_chk == 0) {
		$.ajax({
			url: '/brokurly/customer/mypage/popup0',
			type: 'GET',
			data: {
				'address_main': main_addr_input.val(),
				'address_detail': sub_addr_input.val(),
				'receive_customer': receive_customer.val(),
				'receive_tel': receive_tel.val()
			},
			success: function() {
				window.open("/brokurly/customer/mypage/updateaddr_popup0", "배송지 수정", "width=500, height=600");
			},
			error: function() {
				alert('서버오류');
			}
		});
	}
}

function viewOrderList(order_list) {
	$.ajax({
		url: '/brokurly/customer/mypage/view',
		type: 'GET',
		data: {
			'order_id': order_list
		}, 
		success: function() {
			$('#orderviewForm').submit();
		},
		error: function() {
			alert('서버오류');
		}
	});
}

function oneCart(product_id) {
	$.ajax({
		url: '/brokurly/customer/mypage/gocart',
		type: 'GET',
		data: {
			'product': product_id
		},
		success: function() {
			
		},
		error: function() {
			alert('서버오류');
		}
	});
}

function allCart(order_id) {
	$.ajax({
		url: '/brokurly/customer/mypage/goallcart',
		type: 'GET',
		data: {
			'order_id': order_id
		},
		success: function() {
			
		},
		error: function() {
			alert('서버오류');
		}
	});
}

