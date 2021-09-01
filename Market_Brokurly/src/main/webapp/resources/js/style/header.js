/**
 * 
 */

// gnb_menu fixed

window.onload = function navi_fix() {
    
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
}

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
		url: "/brokurly/products/search",
		type: "GET",
		data: {
			"search_name": $('#search').val()
		},
		success:function(){
			alert("성공")
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