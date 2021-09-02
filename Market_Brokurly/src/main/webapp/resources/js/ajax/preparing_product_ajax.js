
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


