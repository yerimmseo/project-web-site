/* ------------------------------- 위에 설명한 탭 고정 ------------------------------ */
// tab fixed

//window.onload : 화면이 켜지면 실행된다
window.onload = function() {
                           
    document.addEventListener('scroll', onscroll, {passive:true});

    function onscroll() {

        const scrollposition = pageYOffset;
        const view_tab = document.querySelector('#view_tab');

        if(1000 < scrollposition) {
            view_tab.classList.add('fix_tab');
        } else {
            view_tab.classList.remove('fix_tab');
        }
    }
}
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
