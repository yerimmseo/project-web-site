const selected = document.querySelectorAll('.select');
const event_banner = document.querySelector('#event');

document.getElementById('e_1').style.backgroundColor="black";

var chk;

function getEventId(get_id) {
    document.getElementById('e_1').style.backgroundColor="";
    const firstDiv = document.getElementById(get_id);
    firstDiv.style.backgroundColor="black";

    if (chk != null) {
        const chkEvent = document.getElementById(chk);
        chkEvent.style.backgroundColor="";
    }

    chk = get_id;

	

    const selectedDiv = document.getElementById(get_id);

    selectedDiv.style.backgroundColor="black";

    if(get_id == 'e_1') {
        event_banner.style.backgroundImage="url(/brokurly/resources/img/event/main/goods1.jpg)";
    } else if (get_id == 'e_2') {
        event_banner.style.backgroundImage="url(/brokurly/resources/img/event/main/goods2.jpg)";
    } else if (get_id == 'e_3') {
        event_banner.style.backgroundImage="url(/brokurly/resources/img/event/main/goods3.jpg)";
    } else if (get_id == 'e_4') {
        event_banner.style.backgroundImage="url(/brokurly/resources/img/event/main/goods4.jpg)";
    } else if (get_id == 'e_5') {
        event_banner.style.backgroundImage="url(/brokurly/resources/img/event/main/goods5.jpg)";
    } else if (get_id == 'e_6') {
        event_banner.style.backgroundImage="url(/brokurly/resources/img/event/main/goods6.jpg)";
    }




}
    






const rightBtn = document.querySelectorAll('.right_btn');
const leftBtn = document.querySelectorAll('.left_btn');
const itemList = document.querySelectorAll('.item_list');

var page = 1;
var page2 = 1;
var page3 = 1;
var page4 = 1;
var page5 = 1;
var page6 = 1;
var page7 = 1;
var page8 = 1;

// 이 상품 어때요
rightBtn[0].onclick = function() {
    if(page == 1) {
        leftBtn[0].style.visibility="visible";
        itemList[0].style.left="-1050px";
        page = 2;
    } else if (page == 2) {
        itemList[0].style.left="-2100px";
        page = 3;
    } else if (page == 3) {
        rightBtn[0].style.visibility="hidden";
        itemList[0].style.left="-3150px";
        page = 4;
    }
}
leftBtn[0].onclick = function() {
    if(page == 2) {
        leftBtn[0].style.visibility="hidden";
        itemList[0].style.left="0px";
        page = 1;
    } else if (page == 3) {
        itemList[0].style.left="-1050px";
        page = 2;
    } else if (page == 4) {
        rightBtn[0].style.visibility="visible";
        itemList[0].style.left="-2100px";
        page = 3;
    }
}

//놓치면 후회할 가격
rightBtn[1].onclick = function() {
    if(page2 == 1) {
        leftBtn[1].style.visibility="visible";
        itemList[1].style.left="-1050px";
        page2 = 2;
    } else if (page2 == 2) {
        rightBtn[1].style.visibility="hidden";
        itemList[1].style.left="-2100px";
        page2 = 3;
    }
}
leftBtn[1].onclick = function() {
    if(page2 == 2) {
        leftBtn[1].style.visibility="hidden";
        itemList[1].style.left="0px";
        page2 = 1;
    } else if (page2 == 3) {
        itemList[1].style.left="-1050px";
        rightBtn[1].style.visibility="visible";
        page2 = 2;
    }
}

// 지금 가장 핫한 상품
rightBtn[2].onclick = function() {
    if(page4 == 1) {
        leftBtn[2].style.visibility="visible";
        itemList[2].style.left="-525px";
        rightBtn[2].style.visibility="hidden";
        page4 = 2;
    } 
}
leftBtn[2].onclick = function() {
    if(page4 == 2) {
        leftBtn[2].style.visibility="hidden";
        rightBtn[2].style.visibility="visible";
        itemList[2].style.left="0px";
        page4 = 1;
    }
}
// 집콕을 즐겁게!
rightBtn[3].onclick = function() {
    if(page5 == 1) {
        leftBtn[3].style.visibility="visible";
        itemList[3].style.left="-525px";
        rightBtn[3].style.visibility="hidden";
        page5 = 2;
    } 
}
leftBtn[3].onclick = function() {
    if(page5 == 2) {
        leftBtn[3].style.visibility="hidden";
        rightBtn[3].style.visibility="visible";
        itemList[3].style.left="0px";
        page5 = 1;
    }
}
// 최저가 도전
rightBtn[4].onclick = function() {
    if(page6 == 1) {
        leftBtn[4].style.visibility="visible";
        itemList[4].style.left="-525px";
        rightBtn[4].style.visibility="hidden";
        page6 = 2;
    } 
}
leftBtn[4].onclick = function() {
    if(page6 == 2) {
        leftBtn[4].style.visibility="hidden";
        rightBtn[4].style.visibility="visible";
        itemList[4].style.left="0px";
        page6 = 1;
    }
}
// 삶의 질 상승
rightBtn[5].onclick = function() {
    if(page7 == 1) {
        leftBtn[5].style.visibility="visible";
        itemList[5].style.left="-525px";
        rightBtn[5].style.visibility="hidden";
        page7 = 2;
    } 
}
leftBtn[5].onclick = function() {
    if(page7 == 2) {
        leftBtn[5].style.visibility="hidden";
        rightBtn[5].style.visibility="visible";
        itemList[5].style.left="0px";
        page7 = 1;
    }
}
// 설레는 캠핑
rightBtn[6].onclick = function() {
    if(page8 == 1) {
        leftBtn[6].style.visibility="visible";
        itemList[6].style.left="-525px";
        rightBtn[6].style.visibility="hidden";
        page8 = 2;
    } 
}
leftBtn[6].onclick = function() {
    if(page8 == 2) {
        leftBtn[6].style.visibility="hidden";
        rightBtn[6].style.visibility="visible";
        itemList[6].style.left="0px";
        page8 = 1;
    }
}






var checked;
const linkBtn = document.getElementById('link_cate');
const linkBtn_inner = document.getElementById('list_name');
const linkBtn_a = document.getElementById('link_a');
const mdList = document.querySelectorAll('#md_list');
const mdView = document.querySelector('#md_view');


document.querySelector('#list_1').style.backgroundColor="rgb(0, 107, 14)";
document.querySelector('#list_1').style.color="white";

mdList[0].style.display="block";
mdView.style.opacity="100%";

function getId(clicked_id) {
     
    document.querySelector('#list_1').style.backgroundColor="";
    document.querySelector('#list_1').style.color="";
    
    
    if(checked != null){
        const check = document.getElementById(checked);
        check.style.backgroundColor="";
        check.style.color="";
    }

    checked = clicked_id;
    
    const list = document.getElementById(clicked_id);
    
    innerText = list.innerText; /* 선택한 요소 안 텍스트를 가져옴 */
    linkBtn_inner.innerHTML = innerText; /* 가져온 텍스트 버튼에 넣기 */
    
    list.style.backgroundColor="rgb(0, 107, 14)";
    list.style.color="white";
    
    var getTitle = list.getAttribute('data-title'); /* 선택한 요소의 data-title 값을 가져옴(이 안에 링크를 넣으면 됨) */

    if (getTitle == '채소') {
		mdView.style.animation="fade-out 0.3s forwards";
		setTimeout(function() {
		for(let i = 0; i < 18; i++) { mdList[i].style.display="none"; }
		mdList[0].style.display="block"; 
		mdView.style.animation="fade-in 0.3s forwards";
		}, 200);
		linkBtn.setAttribute('value', '10');
    } else if (getTitle == '과일') {
		mdView.style.animation="fade-out 0.3s forwards";
		setTimeout(function() {
		for(let i = 0; i < 18; i++) { mdList[i].style.display="none"; }
		mdList[1].style.display="block"; 
		mdView.style.animation="fade-in 0.3s forwards";
		}, 200);
		linkBtn.setAttribute('value', '20');
    } else if (getTitle == '수산') {
		mdView.style.animation="fade-out 0.3s forwards";
		setTimeout(function() {
		for(let i = 0; i < 18; i++) { mdList[i].style.display="none"; }
		mdList[2].style.display="block"; 
		mdView.style.animation="fade-in 0.3s forwards";
		}, 200);
		linkBtn.setAttribute('value', '30');
    } else if (getTitle == '정육') {
       mdView.style.animation="fade-out 0.3s forwards";
		setTimeout(function() {
		for(let i = 0; i < 18; i++) { mdList[i].style.display="none"; }
		mdList[3].style.display="block"; 
		mdView.style.animation="fade-in 0.3s forwards";
		}, 200);
		linkBtn.setAttribute('value', '40');
    } else if (getTitle == '국') {
        mdView.style.animation="fade-out 0.3s forwards";
		setTimeout(function() {
		for(let i = 0; i < 18; i++) { mdList[i].style.display="none"; }
		mdList[4].style.display="block"; 
		mdView.style.animation="fade-in 0.3s forwards";
		}, 200);
		linkBtn.setAttribute('value', '50');
    } else if (getTitle == '샐러드') {
        mdView.style.animation="fade-out 0.3s forwards";
		setTimeout(function() {
		for(let i = 0; i < 18; i++) { mdList[i].style.display="none"; }
		mdList[5].style.display="block"; 
		mdView.style.animation="fade-in 0.3s forwards";
		}, 200);
		linkBtn.setAttribute('value', '60');
    } else if (getTitle == '면') {
        mdView.style.animation="fade-out 0.3s forwards";
		setTimeout(function() {
		for(let i = 0; i < 18; i++) { mdList[i].style.display="none"; }
		mdList[6].style.display="block"; 
		mdView.style.animation="fade-in 0.3s forwards";
		}, 200);
		linkBtn.setAttribute('value', '70');
    } else if (getTitle == '생수') {
        mdView.style.animation="fade-out 0.3s forwards";
		setTimeout(function() {
		for(let i = 0; i < 18; i++) { mdList[i].style.display="none"; }
		mdList[7].style.display="block"; 
		mdView.style.animation="fade-in 0.3s forwards";
		}, 200);
		linkBtn.setAttribute('value', '80');
    } else if (getTitle == '간식') {
        mdView.style.animation="fade-out 0.3s forwards";
		setTimeout(function() {
		for(let i = 0; i < 18; i++) { mdList[i].style.display="none"; }
		mdList[8].style.display="block"; 
		mdView.style.animation="fade-in 0.3s forwards";
		}, 200);
		linkBtn.setAttribute('value', '90');
    } else if (getTitle == '베이커리') {
        mdView.style.animation="fade-out 0.3s forwards";
		setTimeout(function() {
		for(let i = 0; i < 18; i++) { mdList[i].style.display="none"; }
		mdList[9].style.display="block"; 
		mdView.style.animation="fade-in 0.3s forwards";
		}, 200);
		linkBtn.setAttribute('value', '100');
    } else if (getTitle == '건강식품') {
        mdView.style.animation="fade-out 0.3s forwards";
		setTimeout(function() {
		for(let i = 0; i < 18; i++) { mdList[i].style.display="none"; }
		mdList[10].style.display="block"; 
		mdView.style.animation="fade-in 0.3s forwards";
		}, 200);
		linkBtn.setAttribute('value', '110');
    } else if (getTitle == '생활용품') {
        mdView.style.animation="fade-out 0.3s forwards";
		setTimeout(function() {
		for(let i = 0; i < 18; i++) { mdList[i].style.display="none"; }
		mdList[11].style.display="block"; 
		mdView.style.animation="fade-in 0.3s forwards";
		}, 200);
		linkBtn.setAttribute('value', '120');
    } else if (getTitle == '스킨케어') {
        mdView.style.animation="fade-out 0.3s forwards";
		setTimeout(function() {
		for(let i = 0; i < 18; i++) { mdList[i].style.display="none"; }
		mdList[12].style.display="block"; 
		mdView.style.animation="fade-in 0.3s forwards";
		}, 200);
		linkBtn.setAttribute('value', '130');
    } else if (getTitle == '헤어') {
        mdView.style.animation="fade-out 0.3s forwards";
		setTimeout(function() {
		for(let i = 0; i < 18; i++) { mdList[i].style.display="none"; }
		mdList[13].style.display="block"; 
		mdView.style.animation="fade-in 0.3s forwards";
		}, 200);
		linkBtn.setAttribute('value', '140');
    } else if (getTitle == '주방용품') {
        mdView.style.animation="fade-out 0.3s forwards";
		setTimeout(function() {
		for(let i = 0; i < 18; i++) { mdList[i].style.display="none"; }
		mdList[14].style.display="block"; 
		mdView.style.animation="fade-in 0.3s forwards";
		}, 200);
		linkBtn.setAttribute('value', '150');
    } else if (getTitle == '가전제품') {
        mdView.style.animation="fade-out 0.3s forwards";
		setTimeout(function() {
		for(let i = 0; i < 18; i++) { mdList[i].style.display="none"; }
		mdList[15].style.display="block"; 
		mdView.style.animation="fade-in 0.3s forwards";
		}, 200);
		linkBtn.setAttribute('value', '160');
    } else if (getTitle == '베이비') {
        mdView.style.animation="fade-out 0.3s forwards";
		setTimeout(function() {
		for(let i = 0; i < 18; i++) { mdList[i].style.display="none"; }
		mdList[16].style.display="block"; 
		mdView.style.animation="fade-in 0.3s forwards";
		}, 200);
		linkBtn.setAttribute('value', '170');
    } else if (getTitle == '반려동물') {
       mdView.style.animation="fade-out 0.3s forwards";
		setTimeout(function() {
		for(let i = 0; i < 18; i++) { mdList[i].style.display="none"; }
		mdList[17].style.display="block"; 
		mdView.style.animation="fade-in 0.3s forwards";
		}, 200);
		linkBtn.setAttribute('value', '180');
    }
    
}