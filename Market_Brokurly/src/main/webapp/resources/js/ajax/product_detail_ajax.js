/**
 * 
 */
/* ---------------------------------- 상품 정보 가져오기 ---------------------------------- */

$(document).ready(function(e) {
    $('.change_detail').click(function(){
        $.ajax({ 
            url: '/brokurly/products/product_code', 
            type: "GET",
            data:{
                "product_id": $(this).attr('value') //this는 우리가 클릭한 태그를 가져옴. 
            },                           		    //.attr()은 요소(element)의 속성(attribute)의 값을 가져오거나 속성을 추가
            success: function(data) {
				if(data != '') {
					console.log(data);
				}else {
					console.log('null');
				}
				
				location.href="http://localhost:8080/brokurly/products/product_detail_page?product_id=" + data;
            },
            error : function() {
                alert('통신실패');
            }
        })
    });
});


/* ---------------------------------- +,-수량버튼, 가격 변동 ---------------------------------- */

 //가격에 콤마 넣는 식
 Number.prototype.format = function(){
    if(this==0) return 0;
  
    var reg = /(^[+-]?\d+)(\d{3})/;
    var n = (this + '');
  
    while (reg.test(n)) n = n.replace(reg, '$1' + ',' + '$2');
  
    return n;
  };

  //+,- 버튼 클릭시 수량 변경 및 가격 변동
  let sum_number = document.getElementsByClassName('sum_num')[0];
  let accumulate = document.getElementById('accumulate');
  let number = sum_number.innerText;
  let accumulate_num = accumulate.innerText;
  var basic_amount = parseInt(number.replace(",", ""));
  var accumulated_fund = parseInt(accumulate_num.replace(",", ""));
  
  function btn_click(type){
    var min_qty = 0;
    var this_qty = $("#ct_qty").val() * 1;
    var max_qty = '200'; // 현재 재고
    if(type == "minus"){
      this_qty--;
      if(this_qty < min_qty){
        return;
        }
      }
      else if(type == "plus"){
        this_qty++;
        if(this_qty > max_qty){
          alert("죄송합니다. 재고가 부족합니다.");
          return;
          }
      }
  
    var show_total_amount = basic_amount * this_qty;
	var show_accumulate = accumulated_fund * this_qty;
    $("#ct_qty").val(this_qty);
    $("#it_pay").val(show_total_amount);
    $(".sum_num").html(show_total_amount.format());
	$("#accumulate").html(show_accumulate.format());
}


//function btn_click(type)  {
//    // 결과를 표시할 element
//    const purchase_quantity = document.getElementsByClassName('inp')[0];
//    
//    // 현재 화면에 표시된 값
//    let number = purchase_quantity.innerText;
//    
//    // 더하기/빼기
//    if(type === 'plus') {
//        number = parseInt(number) + 1;
//    }else if(type == 'minus') {
//        if(number == 0) {
//            purchase_quantity.innerText = number;
//        }else {
//            number = parseInt(number) - 1;
//        }
//    }
//    
//    // 결과 출력
//    purchase_quantity.innerText = number;
//}


/* ------------------------ 상품설명,상세정보,후기,문의 탭 선택시 색변경 & 탭 누를시 위치 이동 ----------------------- */

var checked;

//여긴 처음에 보여주는 곳
document.querySelector('#tab1').style.backgroundColor="white";
document.querySelector('#tab1').style.color="seagreen";
document.querySelector('#tab1').style.borderBottom="1px solid white";

function get_tab_id(clicked_id) {
    
    document.querySelector('#tab1').style.backgroundColor="";  //css에서 원래 지정한 값으로 돌려줌
    document.querySelector('#tab1').style.color=""; 
    document.querySelector('#tab1').style.borderBottom="";

    if(checked != null){
        const check = document.getElementById(checked);
        check.style.backgroundColor="";
        check.style.color="";
        check.style.borderBottom="";
    }

    checked = clicked_id;
    
    const list = document.getElementById(clicked_id);
    
    list.style.backgroundColor="white";
    list.style.color="seagreen";
    list.style.borderBottom="1px solid white";

	if(clicked_id == 'tab1') {
		var offset = $(".photo_detail").offset();
	    $('html, body').animate({scrollTop : offset.top}, 400);
	}else if(clicked_id == 'tab2') {
		var offset = $("#table").offset();
	    $('html, body').animate({scrollTop : offset.top}, 400);
	}
}


/* --------------------------------------- 장바구니 담기 클릭------------------------------------ */

$(document).ready(function(e) {
    $('.basket').click(function(){
	
	var qty = $("#ct_qty").val();
	var pid = $("#pid").val();
	
	if(qty == 0) {
		alert("선택 가능한 수량이 없습니다.");
		return;
	}
	
        $.ajax({ 
            url: '/brokurly/products/product_detail_cart', 
            type: "GET",
            data:{
				 "quantity" : qty,
				 "product_id": pid
			},       		   
            success: function(data) {
				if(data != '') {
					alert("장바구니 담기가 완료되었습니다.");
					console.log(data);
					//장바구니 아이콘에 상품 개수 적용
					$('.cart_count').val(parseInt(data));
				}else {
					console.log('null');
				}
					 	
            },
            error : function() {
                alert('통신실패');
            }
        })
    });
});



/* ------------------------------- 위에 설명한 탭 고정 ------------------------------ */
// tab fixed

//window.onload : 화면이 켜지면 실행된다
//window.onload = function() {
//                           
//    document.addEventListener('scroll', onscroll, {passive:true});
//
//    function onscroll() {
//
//        const scrollposition = pageYOffset;
//        const view_tab = document.querySelector('#view_tab');
//
//        console.log(scrollposition);
//        if(1000 < scrollposition) {
//            view_tab.classList.add('fix_tab');
//        } else {
//            view_tab.classList.remove('fix_tab');
//        }
//    }
//}