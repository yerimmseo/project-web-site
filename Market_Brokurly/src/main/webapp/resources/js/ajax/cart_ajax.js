/**
 *
 */
$("#allCheck").click(function(){
    var chk = $("#allCheck").prop("checked");
    if(chk) {
     $(".chBox").prop("checked", true);
    } else {
     $(".chBox").prop("checked", false);
    }
}); 

$(".chBox").click(function(){
     $("#allCheck").prop("checked", false);
});

function deleteValue(ths) {
   var valueArr = new Array();
   var list = $(ths).parent('div').parent('div').parent('div').find("input[name='rowch']:checked");


   console.log(list.length);
   console.log(valueArr);
   for(var i = 0; i < list.length; i++){
           valueArr.push(list[i].value);
   } 
   console.log(valueArr);
   if(list.length == 0){
       alert("선택된 항목이 없습니다!");
   } else {
       var chk = confirm("삭제하시겠습니까?");
	   if(chk) {
       $.ajax({
           url: "/brokurly/cart/check_delete",
           type: "GET",
           data: {
               "valueArr": valueArr
           },
           success:function(jdata){
               if(jdata == "") {
                   alert("해당 품목을 삭제하였습니다!!");
                   location.href = "/brokurly/cart/cartlist";
               } else {
                   alert("삭제 실패");
               }
           },
           error:function(){
               alert("서버오류");
           }
       });
		} else {
			return;
		}
   }
}

function checkNum() {
    const query = "input[name='rowch']:checked";
    const selectedElements = document.querySelectorAll(query);

    const selected = selectedElements.length;

    document.getElementById('checkedNum').innerText = selected;
}


$(function() {
	const all_chk = $('#allCheck');
	const chk = $('.chBox');
	
	all_chk.click(() => {
		if (all_chk.prop('checked')) {
			chk.prop('checked', true);
		} else {
			chk.prop('checked', false);
		}
	});

    chk.click(() => {
        if ($("input[name='rowck']:checked").length == 3) {
            all_chk.prop('checked', true);
        } else {
            all_chk.prop('checked', false);
        }
    });
});

$(function() {
	
	var new_address_btn = $('.new_address');
	var research_btn = $('.research_btn');

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
                    url: "/brokurly/cart/address",
                    type: "GET",
                    data: {
                        "address_main": $('#address_main').val()
                    },
                    success: function() {
						alert('배송지가 선택 되었습니다.');
                        $('.addressForm').submit();
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
                    url: '/brokurly/cart/address',
                    type: 'GET',
                    data: {
                        'address_main': $('#address_main').val()
                    },
                    success: function() {
						alert('배송지가 변경 되었습니다.');
                        $('.addressForm').submit();
                    },
                    error: function() {
                        alert('서버오류');
                    }
                });
            }
        }).open();
    });
});