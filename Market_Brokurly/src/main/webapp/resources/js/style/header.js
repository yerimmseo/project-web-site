/**
 * 
 */

// gnb_menu fixed
window.addEventListener('load', function navi_fix() {

    
    document.addEventListener('scroll', onscroll, {passive:true});

    function onscroll () {

        const scrollposition = pageYOffset;
        const gnb = document.querySelector('#gnb_menu');

        if(106 < scrollposition) {
            gnb.classList.add('fix');
        } else {
            gnb.classList.remove('fix');
        }
    }
	
});


/* ----------------------------- 고객센터 하위메뉴 클릭시 나타남 ---------------------------- */
check = true;
function Mclick_service() {
    const service_menu = document.querySelector('#service_menu');
    
    
    if(check){
        service_menu.style.visibility="visible";
        check = false;
    } else {
        service_menu.style.visibility="hidden";
        check = true;
    }
    setTimeout(function() {
        service_menu.style.visibility="hidden";
        check = true;
    }, 4000);
}

/* ----------------------------- 고객명 하위메뉴 클릭시 나타남 ---------------------------- */
function Mclick_customer() {
	const customer_menu = document.querySelector('#customer_menu');
	
	
	if(check){
		customer_menu.style.visibility="visible";
		check = false;
	} else {
		customer_menu.style.visibility="hidden";
		check = true;
	}
	setTimeout(function() {
		customer_menu.style.visibility="hidden";
		check = true;
	}, 4000);
}

/* ------------------------------- 검색시 해당 품목 가져오기 ----------------------------------- */
$('#search_a').click(function(){
	
	$.ajax({
		url: "/brokurly/products/productsearch_list",
		type: "GET",
		data: {
			"search_name": $('#search').val()
		},
		success:function(){
			$('#searchForm').submit();
		},
		error:function(){
			alert("에러");
		}
	});
});	


$('#logout').click(function(){
	$.ajax({
		url: "/brokurly/customer/logout",
		type: "GET",
		success:function(data){
			alert("로그아웃 성공");
			$('#logoutForm').submit();
		},
		error:function(){
			alert("에러");
		}
	});
});

/* ------------------------------- 주소지 변경 누를시 함수 ----------------------------------- */
$('#address_Btn').click(function(){
	$('#destination_btn').submit();
});



/* ----------------------------- AJAX MAINCATEGORY ---------------------------- */


$(document).ready(function(e) {
	$('.mca').click(function(){
		$.ajax({
	        type : "GET",
	        url : "/brokurly/products/product_main_id",
			data: {
				"maincate_id": $(this).attr('value')
			},
	        error : function() {
	            alert('통신실패!!');
	        },
	        success : function(data) {
				console.log('성공!!!!!!	');
				console.log(data);
				location.href="http://localhost:8080/brokurly/products/product_list";
				
	        }
		})
    });
});

/* ----------------------------- AJAX SUBCATEGORY ---------------------------- */

$(document).ready(function(e) {
	$('.subs').click(function(){
		$.ajax({
	        type : "GET",
	        url : "/brokurly/products/product_subcate",
			data: {
				"subcate_id": $(this).attr('value')
			},
	        error : function() {
	            alert('통신실패!!');
	        },
	        success : function(data) {
				console.log('성공!!!!!!	');
				console.log(data);
				location.href="http://localhost:8080/brokurly/products/product_list";
				
	        }
		})
    });
});









