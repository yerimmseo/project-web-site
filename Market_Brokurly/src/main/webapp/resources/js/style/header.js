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