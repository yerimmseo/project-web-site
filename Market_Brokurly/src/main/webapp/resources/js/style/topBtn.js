// 위로가기 버튼 나타남
const topBtn = document.querySelector('#top_btn');
const bodyTop = document.querySelector('body');

window.addEventListener('load', function topBtn_fix() {

    
    document.addEventListener('scroll', onscroll, {passive:true});

    function onscroll () {

        const scrollposition = pageYOffset;

        if(400 < scrollposition) {
            topBtn.classList.add('visible_on');
			topBtn.classList.remove('visible_off');
        } else if(400 > scrollposition) {
			topBtn.classList.add('visible_off');
            topBtn.classList.remove('visible_on');
        }
    }
	
});




// 위로가기 버튼 스크롤 상단 이동
topBtn.onclick = function() {
    window.scroll({top:bodyTop + 50, behavior: 'smooth'});
}