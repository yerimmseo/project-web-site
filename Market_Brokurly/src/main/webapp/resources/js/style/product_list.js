/* ----------------------------- 메인 카테고리 아이콘 변경 ----------------------------- */
const cateList = document.querySelectorAll('.list > li');
const cateBg = document.querySelector('.bg');
const mainCate_icon = document.querySelector('#mainCate_icon');
var checkList;
var width;



//cateList[0].style.color="seagreen";
//cateBg.style.width ="48px";

function getMainCateId(mainCateId, subCateId) {
	if(mainCateId == 10) {
			mainCate_icon.innerHTML='grass';
			mainCate_icon.style.color='darkseagreen';
		if(subCateId == 0) {
			cateBg.style.right = "756px";
			cateBg.style.width = "48px";
			cateList[0].style.color="seagreen";
		} else if(subCateId == 11) {
			cateBg.style.right = "702px";
			cateBg.style.width = "84px";
			cateList[1].style.color="seagreen";
		} else if(subCateId == 12) {
			cateBg.style.right = "608px";
			cateBg.style.width = "95px";
			cateList[2].style.color="seagreen";
		} else if(subCateId == 13) {
			cateBg.style.right = "503px";
			cateBg.style.width = "128px";
			cateList[3].style.color="seagreen";
		} else if(subCateId == 14) {
			cateBg.style.right = "365px";
			cateBg.style.width = "99px";
			cateList[4].style.color="seagreen";
		} else if(subCateId == 15) {
			cateBg.style.right = "255px";
			cateBg.style.width = "74px";
			cateList[5].style.color="seagreen";
		} else if(subCateId == 16) {
			cateBg.style.right = "172px";
			cateBg.style.width = "96px";
			cateList[6].style.color="seagreen";
		} else if(subCateId == 17) {
			cateBg.style.right = "68px";
			cateBg.style.width = "59px";
			cateList[7].style.color="seagreen";
		}
		
		
		
		
	} else if(mainCateId == 20) {
		mainCate_icon.innerHTML='apple';
		mainCate_icon.style.color='rgb(190, 54, 54)';
		cateBg.style.right = "256px";
		
		
		if (subCateId == 0) { /* 전체보기 */
		    cateList[0].style.color="seagreen";
		    cateBg.style.right = "256px";
		    cateBg.style.width = "48px";
		} else if (subCateId == 21) { /* 생과일 */
		    cateList[1].style.color="seagreen";
		    cateBg.style.right = "199px";
		    cateBg.style.width = "33px";
		} else if (subCateId == 22) { /* 냉건 */
		    cateList[2].style.color="seagreen";
		    cateBg.style.right = "157px";
		    cateBg.style.width = "59px";
		} else if (subCateId == 23) { /* 견과류 */
		    cateList[3].style.color="seagreen";
		    cateBg.style.right = "88px";
		    cateBg.style.width = "33px";
		} else if (subCateId == 24) { /* 쌀잡 */
		    cateList[4].style.color="seagreen";
		    cateBg.style.right = "45px";
		    cateBg.style.width = "37px";
		}
		
	} else if(mainCateId == 30) {
		mainCate_icon.innerHTML='sailing';
		mainCate_icon.style.color='rgb(54, 117, 190)';
		cateBg.style.right = "445px";
		
		if (subCateId == 0) { /* 전체보기 */
		    cateList[0].style.color="seagreen";
		    cateBg.style.right = "445px";
		    cateBg.style.width = "48px";
		} else if (subCateId == 31) { /* 생 */
		    cateList[1].style.color="seagreen";
		    cateBg.style.right = "390px";
		    cateBg.style.width = "33px";
		} else if (subCateId == 32) { /* 오낙문 */
		    cateList[2].style.color="seagreen";
		    cateBg.style.right = "347px";
		    cateBg.style.width = "85px";
		} else if (subCateId == 33) { /* 새게랍 */
		    cateList[3].style.color="seagreen";
		    cateBg.style.right = "252px";
		    cateBg.style.width = "74px";
		} else if (subCateId == 34) { /* 조 */
		    cateList[4].style.color="seagreen";
		    cateBg.style.right = "170px";
		    cateBg.style.width = "33px";
		} else if (subCateId == 35) { /* 해 */
		    cateList[5].style.color="seagreen";
		    cateBg.style.right = "127px";
		    cateBg.style.width = "33px";
		} else if (subCateId == 36) { /* 건 */
		    cateList[6].style.color="seagreen";
		    cateBg.style.right = "84px";
		    cateBg.style.width = "33px";
		} else if (subCateId == 37) { /* 가 */
		    cateList[7].style.color="seagreen";
		    cateBg.style.right = "42px";
		    cateBg.style.width = "33px";
		}
		
		
	} else if(mainCateId == 40) {
		mainCate_icon.innerHTML='egg_alt';
		mainCate_icon.style.color='rgb(235, 223, 59)';
		
		if (subCateId == 0) { /* 전체보기 */
		    cateList[0].style.color="seagreen";
		    cateBg.style.right = "351px";
		    cateBg.style.width = "48px";
		} else if (subCateId == 41) { /* 소 */
		    cateList[1].style.color="seagreen";
		    cateBg.style.right = "296px";
		    cateBg.style.width = "33px";
		} else if (subCateId == 42) { /* 돼 */
		    cateList[2].style.color="seagreen";
		    cateBg.style.right = "253px";
		    cateBg.style.width = "45px";
		} else if (subCateId == 43) { /* 닭오 */
		    cateList[3].style.color="seagreen";
		    cateBg.style.right = "199px";
		    cateBg.style.width = "37px";
		} else if (subCateId == 44) { /* 양돈 */
		    cateList[4].style.color="seagreen";
		    cateBg.style.right = "153px";
		    cateBg.style.width = "59px";
		} else if (subCateId == 45) { /* 계 */
		    cateList[5].style.color="seagreen";
		    cateBg.style.right = "85px";
		    cateBg.style.width = "33px";
		} else if (subCateId == 46) { /* 양 */
		    cateList[6].style.color="seagreen";
		    cateBg.style.right = "42px";
		    cateBg.style.width = "33px";
		}
		
	} else if(mainCateId == 50) {
		mainCate_icon.innerHTML='soup_kitchen';
		mainCate_icon.style.color='rgb(180, 101, 37)';
		
		if (subCateId == 0) { /* 전체보기 */
		    cateList[0].style.color="seagreen";
		    cateBg.style.right = "482px";
		    cateBg.style.width = "48px";
		} else if (subCateId == 51) { /* 국탕찌 */
		    cateList[1].style.color="seagreen";
		    cateBg.style.right = "429px";
		    cateBg.style.width = "51px";
		} else if (subCateId == 52) { /* 메 */
		    cateList[2].style.color="seagreen";
		    cateBg.style.right = "366px";
		    cateBg.style.width = "44px";
		} else if (subCateId == 53) { /* 밑 */
		    cateList[3].style.color="seagreen";
		    cateBg.style.right = "313px";
		    cateBg.style.width = "33px";
		} else if (subCateId == 54) { /* 김젓장 */
		    cateList[4].style.color="seagreen";
		    cateBg.style.right = "270px";
		    cateBg.style.width = "73px";
		} else if (subCateId == 55) { /* 두어부 */
		    cateList[5].style.color="seagreen";
		    cateBg.style.right = "186px";
		    cateBg.style.width = "84px";
		} else if (subCateId == 56) { /* 베햄통 */
		    cateList[6].style.color="seagreen";
		    cateBg.style.right = "93px";
		    cateBg.style.width = "84px";
		}
		
	} else if(mainCateId == 60) {
		mainCate_icon.innerHTML='local_florist';
		mainCate_icon.style.color= 'rgb(81, 199, 110)';
		
		if (subCateId == 0) { /* 전체보기 */
		    cateList[0].style.color="seagreen";
		    cateBg.style.right = "538px";
		    cateBg.style.width = "48px";
		} else if (subCateId == 61) { /* 샐러드·닭가슴살 */
		    cateList[1].style.color="seagreen";
		    cateBg.style.right = "483px";
		    cateBg.style.width = "81px";
		} else if (subCateId == 62) { /* 도시락·밥류 */
		    cateList[2].style.color="seagreen";
		    cateBg.style.right = "392px";
		    cateBg.style.width = "59px";
		} else if (subCateId == 63) { /* 파스타·면류 */
		    cateList[3].style.color="seagreen";
		    cateBg.style.right = "324px";
		    cateBg.style.width = "59px";
		} else if (subCateId == 64) { /* 피자·핫도그·만두 */
		    cateList[4].style.color="seagreen";
		    cateBg.style.right = "255px";
		    cateBg.style.width = "84px";
		} else if (subCateId == 65) { /* 폭립·떡갈비·안주 */
		    cateList[5].style.color="seagreen";
		    cateBg.style.right = "162px";
		    cateBg.style.width = "84px";
		} else if (subCateId == 66) { /* 선식·시리얼 */
		    cateList[6].style.color="seagreen";
		    cateBg.style.right = "67px";
		    cateBg.style.width = "58px";
		}
		
	} else if(mainCateId == 70) {
		mainCate_icon.innerHTML='ramen_dining';
		mainCate_icon.style.color='rgb(223, 172, 64)';
		
		if (subCateId == 0) { /* 전체보기 */
		    cateList[0].style.color="seagreen";
		    cateBg.style.right = "582px";
		    cateBg.style.width = "48px";
		} else if (subCateId == 71) { /* 식초·소스·드레싱 */
		    cateList[1].style.color="seagreen";
		    cateBg.style.right = "527px";
		    cateBg.style.width = "84px";
		} else if (subCateId == 72) { /* 양념·액젓·장류 */
		    cateList[2].style.color="seagreen";
		    cateBg.style.right = "432px";
		    cateBg.style.width = "73px";
		} else if (subCateId == 73) { /* 식용류·참기름·오일 */
		    cateList[3].style.color="seagreen";
		    cateBg.style.right = "349px";
		    cateBg.style.width = "95px";
		} else if (subCateId == 74) { /* 소금·설탕·향신료 */
		    cateList[4].style.color="seagreen";
		    cateBg.style.right = "244px";
		    cateBg.style.width = "84px";
		} else if (subCateId == 75) { /* 밀가루·가루·믹스 */
		    cateList[5].style.color="seagreen";
		    cateBg.style.right = "151px";
		    cateBg.style.width = "84px";
		} else if (subCateId == 76) { /* 파스타·면 */
		    cateList[6].style.color="seagreen";
		    cateBg.style.right = "57px";
		    cateBg.style.width = "47px";
		}
		
	} else if(mainCateId == 80) {
		mainCate_icon.innerHTML='liquor';
		mainCate_icon.style.color='rgb(57, 41, 194)';
		
		if (subCateId == 0) { /* 전체보기 */
		    cateList[0].style.color="seagreen";
		    cateBg.style.right = "327px";
		    cateBg.style.width = "48px";
		} else if (subCateId == 81) { /* 생수·탄산수 */
		    cateList[1].style.color="seagreen";
		    cateBg.style.right = "272px";
		    cateBg.style.width = "58px";
		} else if (subCateId == 82) { /* 음료·주스 */
		    cateList[2].style.color="seagreen";
		    cateBg.style.right = "203px";
		    cateBg.style.width = "48px";
		} else if (subCateId == 83) { /* 우유·두유·요거트 */
		    cateList[3].style.color="seagreen";
		    cateBg.style.right = "146px";
		    cateBg.style.width = "85px";
		} else if (subCateId == 84) { /* 커피 */
		    cateList[4].style.color="seagreen";
		    cateBg.style.right = "51px";
		    cateBg.style.width = "22px";
		} else if (subCateId == 85) { /* 차 */
		    cateList[5].style.color="seagreen";
		    cateBg.style.right = "20px";
		    cateBg.style.width = "11px";
		}
		
	} else if(mainCateId == 90) {
		mainCate_icon.innerHTML='cookie';
		mainCate_icon.style.color='rgb(124, 89, 37)';
		
		if (subCateId == 0) { /* 전체보기 */
		    cateList[0].style.color="seagreen";
		    cateBg.style.right = "342px";
		    cateBg.style.width = "48px";
		} else if (subCateId == 91) { /* 과자·스낵·쿠키 */
		    cateList[1].style.color="seagreen";
		    cateBg.style.right = "288px";
		    cateBg.style.width = "73px";
		} else if (subCateId == 92) { /* 초콜릿·젤리·캔디 */
		    cateList[2].style.color="seagreen";
		    cateBg.style.right = "205px";
		    cateBg.style.width =  "84px";
		} else if (subCateId == 93) { /* 떡·한과 */
		    cateList[3].style.color="seagreen";
		    cateBg.style.right = "111px";
		    cateBg.style.width = "36px";
		} else if (subCateId == 94) { /* 아이스크림 */
		    cateList[4].style.color="seagreen";
		    cateBg.style.right = "64px";
		    cateBg.style.width = "55px";
		}
		
		
	} else if(mainCateId == 100) {
		mainCate_icon.innerHTML='bakery_dining';
		mainCate_icon.style.color='rgb(116, 74, 47)';
		
		if (subCateId == 0) { /* 전체보기 */
		    cateList[0].style.color="seagreen";
		    cateBg.style.right = "238px";
		    cateBg.style.width = "48px";
		} else if (subCateId == 101) { /* 식빵·빵류 */
		    cateList[1].style.color="seagreen";
		    cateBg.style.right = "182px";
		    cateBg.style.width = "47px";
		} else if (subCateId == 102) { /* 잼·버터·스프레드 */
		    cateList[2].style.color="seagreen";
		    cateBg.style.right = "126px";
		    cateBg.style.width =  "84px";
		} else if (subCateId == 103) { /* 치즈 */
		    cateList[3].style.color="seagreen";
		    cateBg.style.right = "31px";
		    cateBg.style.width = "22px";
		}
				
		
	} else if(mainCateId == 110) {
		mainCate_icon.innerHTML='medication_liquid';
		mainCate_icon.style.color='rgb(26, 141, 22)';
		
		if (subCateId == 0) { /* 전체보기 */
		    cateList[0].style.color="seagreen";
		    cateBg.style.right = "109px";
		    cateBg.style.width = "48px";
		} else if (subCateId == 111) { /* 건강식품 */
		    cateList[1].style.color="seagreen";
		    cateBg.style.right = "53px";
		    cateBg.style.width = "48px";
		} 
				
	} else if(mainCateId == 120) {
		mainCate_icon.innerHTML='cottage';
		mainCate_icon.style.color='rgb(28, 109, 75)';
		
		if (subCateId == 0) { /* 전체보기 */
		    cateList[0].style.color="seagreen";
		    cateBg.style.right = "350px";
		    cateBg.style.width = "48px";
		} else if (subCateId == 121) { /* 휴지·티슈 */
		    cateList[1].style.color="seagreen";
		    cateBg.style.right = "295px";
		    cateBg.style.width = "47px";
		} else if (subCateId == 122) { /* 세제·청소용품 */
		    cateList[2].style.color="seagreen";
		    cateBg.style.right = "237px";
		    cateBg.style.width =  "70px";
		} else if (subCateId == 123) { /* 여성·의약·인테리어 */
		    cateList[3].style.color="seagreen";
		    cateBg.style.right = "159px";
		    cateBg.style.width = "96px";
		} else if (subCateId == 124) { /* 캠핑용품 */
		    cateList[4].style.color="seagreen";
		    cateBg.style.right = "53px";
		    cateBg.style.width = "44px";
		}
		
	} else if(mainCateId == 130) {
		mainCate_icon.innerHTML='face';
		mainCate_icon.style.color='rgb(233, 196, 126)';
		
		if (subCateId == 0) { /* 전체보기 */
		    cateList[0].style.color="seagreen";
		    cateBg.style.right = "157px";
		    cateBg.style.width ="48px";
		} else if (subCateId == 131) { /* 스킨케어·메이크업 */
		    cateList[1].style.color="seagreen";
		    cateBg.style.right = "101px";
		    cateBg.style.width = "92px";
		}
		
		
	} else if(mainCateId == 140) {
		mainCate_icon.innerHTML='bubble_chart';
		mainCate_icon.style.color='rgb(72, 191, 247)';
		
		if (subCateId == 0) { /* 전체보기 */
		    cateList[0].style.color="seagreen";
		    cateBg.style.right = "150px";
		    cateBg.style.width = "48px";
		} else if (subCateId == 141) { /* 헤어 */
		    cateList[1].style.color="seagreen";
		    cateBg.style.right = "94px";
		    cateBg.style.width = "22px";
		} else if (subCateId == 142) { /* 바디 */
		    cateList[2].style.color="seagreen";
		    cateBg.style.right = "63px";
		    cateBg.style.width =  "22px";
		} else if (subCateId == 143) { /* 구강 */
		    cateList[3].style.color="seagreen";
		    cateBg.style.right = "32px";
		    cateBg.style.width = "22px";
		}
				
		
	} else if(mainCateId == 150) {
		mainCate_icon.innerHTML='dining';
		mainCate_icon.style.color='rgb(9, 79, 112)';
		
		if (subCateId == 0) { /* 전체보기 */
		    cateList[0].style.color="seagreen";
		    cateBg.style.right = "229px";
		    cateBg.style.width = "48px";
		} else if (subCateId == 151) { /* 잡화 */
		    cateList[1].style.color="seagreen";
		    cateBg.style.right = "174px";
		    cateBg.style.width = "22px";
		} else if (subCateId == 152) { /* 조리도구 */
		    cateList[2].style.color="seagreen";
		    cateBg.style.right = "142px";
		    cateBg.style.width =  "44px";
		} else if (subCateId == 153) { /* 보관용기 */
		    cateList[3].style.color="seagreen";
		    cateBg.style.right = "89px";
		    cateBg.style.width = "44px";
		} else if (subCateId == 154) { /* 컵·잔 */
		    cateList[4].style.color="seagreen";
		    cateBg.style.right = "35px";
		    cateBg.style.width = "25px";
		}
		
	} else if(mainCateId == 160) {
		mainCate_icon.innerHTML='desktop_windows';
		mainCate_icon.style.color='rgb(41, 41, 41)';
		
		if (subCateId == 0) { /* 전체보기 */
		    cateList[0].style.color="seagreen";
		    cateBg.style.right = "302px";
		    cateBg.style.width = "48px";
		} else if (subCateId == 161) { /* 주방가전 */
		    cateList[1].style.color="seagreen";
		    cateBg.style.right = "248px";
		    cateBg.style.width = "44px";
		} else if (subCateId == 162) { /* 생활가전 */
		    cateList[2].style.color="seagreen";
		    cateBg.style.right = "195px";
		    cateBg.style.width =  "45px";
		} else if (subCateId == 163) { /* 디지털·PC */
		    cateList[3].style.color="seagreen";
		    cateBg.style.right = "141px";
		    cateBg.style.width = "52px";
		} else if (subCateId == 164) { /* 대형·설치가전 */
		    cateList[4].style.color="seagreen";
		    cateBg.style.right = "79px";
		    cateBg.style.width = "70px";
		}
				
	} else if(mainCateId == 170) {
		mainCate_icon.innerHTML='child_care';
		mainCate_icon.style.color='rgb(255, 229, 173)';
		
		if (subCateid == 0) { /* 전체보기 */
		    cateList[0].style.color="seagreen";
		    cateBg.style.right = "345px";
		    cateBg.style.width = "48px";
		} else if (subCateid == 171) { /* 분유·간편식·이유식 */
		    cateList[1].style.color="seagreen";
		    cateBg.style.right = "290px";
		    cateBg.style.width = "95px";
		} else if (subCateid == 172) { /* 건강식품·음료 */
		    cateList[2].style.color="seagreen";
		    cateBg.style.right = "184px";
		    cateBg.style.width =  "70px";
		} else if (subCateid == 173) { /* 기저귀·물티슈·스킨 */
		    cateList[3].style.color="seagreen";
		    cateBg.style.right = "104px";
		    cateBg.style.width = "96px";
		}
		
	} else if(mainCateId == 180) {
		mainCate_icon.innerHTML='pets';
		mainCate_icon.style.color='rgb(255, 180, 217)';
		
		if (subCateId == 0) { /* 전체보기 */
		    cateList[0].style.color="seagreen";
		    cateBg.style.right = "223px";
		    cateBg.style.width = "48px";
		} else if (subCateId == 181) { /* 강아지 */
		    cateList[1].style.color="seagreen";
		    cateBg.style.right = "168px";
		    cateBg.style.width = "33px";
		} else if (subCateId == 182) { /* 고양이 */
		    cateList[2].style.color="seagreen";
		    cateBg.style.right = "125px";
		    cateBg.style.width =  "33px";
		} else if (subCateId == 183) { /* 배변·위생·용품 */
		    cateList[3].style.color="seagreen";
		    cateBg.style.right = "84px";
		    cateBg.style.width = "73px";
		}
	}
	
	
	
}




















function getId(getId, getMainCateId){
    
    cateList[0].style.color="";

    if(checkList != null) {
        const beforeCheckList = document.getElementById(checkList);
        beforeCheckList.style.color="";
    }
    checkList = getId;

    /* 선택한 요소의 길이를 구해보자! */
    const selected = document.getElementById(getId);
    getWidth = selected.clientWidth;
    width = getWidth - 10;

	console.log(width);

	if(getMainCateId == 10) {
	    if (getId == 'l1') { /* 전체보기 */
	        cateList[0].style.color="seagreen";
	        cateBg.style.right = "756px";
	        cateBg.style.width = width + 3 + "px";
	    } else if (getId == 'l2') { /* 고감당 */
	        cateList[1].style.color="seagreen";
	        cateBg.style.right = "702px";
	        cateBg.style.width = width + "px";
	    } else if (getId == 'l3') { /* 시쌈채 */
	        cateList[2].style.color="seagreen";
	        cateBg.style.right = "608px";
	        cateBg.style.width =  width + "px";
	    } else if (getId == 'l4') { /* 브파양 */
	        cateList[3].style.color="seagreen";
	        cateBg.style.right = "503px";
	        cateBg.style.width = width + "px";
	    } else if (getId == 'l5') { /* 양대마배 */
	        cateList[4].style.color="seagreen";
	        cateBg.style.right = "365px";
	        cateBg.style.width = width + "px";
	    } else if (getId == 'l6') { /* 오호고 */
	        cateList[5].style.color="seagreen";
	        cateBg.style.right = "255px";
	        cateBg.style.width = width + "px";
	    } else if (getId == 'l7') { /* 냉이간 */
	        cateList[6].style.color="seagreen";
	        cateBg.style.right = "172px";
	        cateBg.style.width = width + "px";
	    } else if (getId == 'l8') { /* 콩버 */
	        cateList[7].style.color="seagreen";
	        cateBg.style.right = "68px";
	        cateBg.style.width = width + "px";
	    }
	}
	
	if(getMainCateId == 20) {
        if (getId == 'l1') { /* 전체보기 */
            cateList[0].style.color="seagreen";
            cateBg.style.right = "256px";
            cateBg.style.width = width + 3 + "px";
        } else if (getId == 'l2') { /* 생과일 */
            cateList[1].style.color="seagreen";
            cateBg.style.right = "199px";
            cateBg.style.width = width + "px";
        } else if (getId == 'l3') { /* 냉건 */
            cateList[2].style.color="seagreen";
            cateBg.style.right = "157px";
            cateBg.style.width =  width + "px";
        } else if (getId == 'l4') { /* 견과류 */
            cateList[3].style.color="seagreen";
            cateBg.style.right = "88px";
            cateBg.style.width = width + "px";
        } else if (getId == 'l5') { /* 쌀잡 */
            cateList[4].style.color="seagreen";
            cateBg.style.right = "45px";
            cateBg.style.width = width + "px";
        }
    }
	
	if(getMainCateId == 30) {
        if (getId == 'l1') { /* 전체보기 */
            cateList[0].style.color="seagreen";
            cateBg.style.right = "445px";
            cateBg.style.width = width + 3 + "px";
        } else if (getId == 'l2') { /* 생 */
            cateList[1].style.color="seagreen";
            cateBg.style.right = "390px";
            cateBg.style.width = width + "px";
        } else if (getId == 'l3') { /* 오낙문 */
            cateList[2].style.color="seagreen";
            cateBg.style.right = "347px";
            cateBg.style.width =  width + "px";
        } else if (getId == 'l4') { /* 새게랍 */
            cateList[3].style.color="seagreen";
            cateBg.style.right = "252px";
            cateBg.style.width = width + "px";
        } else if (getId == 'l5') { /* 조 */
            cateList[4].style.color="seagreen";
            cateBg.style.right = "170px";
            cateBg.style.width = width + "px";
        } else if (getId == 'l6') { /* 해 */
            cateList[5].style.color="seagreen";
            cateBg.style.right = "127px";
            cateBg.style.width = width + "px";
        } else if (getId == 'l7') { /* 건 */
            cateList[6].style.color="seagreen";
            cateBg.style.right = "84px";
            cateBg.style.width = width + "px";
        } else if (getId == 'l8') { /* 가 */
            cateList[7].style.color="seagreen";
            cateBg.style.right = "42px";
            cateBg.style.width = width + "px";
        }
    }

	if(getMainCateId == 40) {
        if (getId == 'l1') { /* 전체보기 */
            cateList[0].style.color="seagreen";
            cateBg.style.right = "351px";
            cateBg.style.width = width + 3 + "px";
        } else if (getId == 'l2') { /* 소 */
            cateList[1].style.color="seagreen";
            cateBg.style.right = "296px";
            cateBg.style.width = width + "px";
        } else if (getId == 'l3') { /* 돼 */
            cateList[2].style.color="seagreen";
            cateBg.style.right = "253px";
            cateBg.style.width =  width + "px";
        } else if (getId == 'l4') { /* 닭오 */
            cateList[3].style.color="seagreen";
            cateBg.style.right = "199px";
            cateBg.style.width = width + "px";
        } else if (getId == 'l5') { /* 양돈 */
            cateList[4].style.color="seagreen";
            cateBg.style.right = "153px";
            cateBg.style.width = width + "px";
        } else if (getId == 'l6') { /* 계 */
            cateList[5].style.color="seagreen";
            cateBg.style.right = "85px";
            cateBg.style.width = width + "px";
        } else if (getId == 'l7') { /* 양 */
            cateList[6].style.color="seagreen";
            cateBg.style.right = "42px";
            cateBg.style.width = width + "px";
        } 
    }

	if(getMainCateId == 50){
        if (getId == 'l1') { /* 전체보기 */
            cateList[0].style.color="seagreen";
            cateBg.style.right = "482px";
            cateBg.style.width = width + 3 + "px";
        } else if (getId == 'l2') { /* 국탕찌 */
            cateList[1].style.color="seagreen";
            cateBg.style.right = "429px";
            cateBg.style.width = width + "px";
        } else if (getId == 'l3') { /* 메 */
            cateList[2].style.color="seagreen";
            cateBg.style.right = "366px";
            cateBg.style.width =  width + "px";
        } else if (getId == 'l4') { /* 밑 */
            cateList[3].style.color="seagreen";
            cateBg.style.right = "313px";
            cateBg.style.width = width + "px";
        } else if (getId == 'l5') { /* 김젓장 */
            cateList[4].style.color="seagreen";
            cateBg.style.right = "270px";
            cateBg.style.width = width + "px";
        } else if (getId == 'l6') { /* 두어부 */
            cateList[5].style.color="seagreen";
            cateBg.style.right = "186px";
            cateBg.style.width = width + "px";
        } else if (getId == 'l7') { /* 베햄통 */
            cateList[6].style.color="seagreen";
            cateBg.style.right = "93px";
            cateBg.style.width = width + "px";
        } 
    }

	if(getMainCateId == 60){
        if (getId == 'l1') { /* 전체보기 */
            cateList[0].style.color="seagreen";
            cateBg.style.right = "538px";
            cateBg.style.width = width + 3 + "px";
        } else if (getId == 'l2') { /* 샐러드·닭가슴살 */
            cateList[1].style.color="seagreen";
            cateBg.style.right = "483px";
            cateBg.style.width = width + "px";
        } else if (getId == 'l3') { /* 도시락·밥류 */
            cateList[2].style.color="seagreen";
            cateBg.style.right = "392px";
            cateBg.style.width =  width + "px";
        } else if (getId == 'l4') { /* 파스타·면류 */
            cateList[3].style.color="seagreen";
            cateBg.style.right = "324px";
            cateBg.style.width = width + "px";
        } else if (getId == 'l5') { /* 피자·핫도그·만두 */
            cateList[4].style.color="seagreen";
            cateBg.style.right = "255px";
            cateBg.style.width = width + "px";
        } else if (getId == 'l6') { /* 폭립·떡갈비·안주 */
            cateList[5].style.color="seagreen";
            cateBg.style.right = "162px";
            cateBg.style.width = width + "px";
        } else if (getId == 'l7') { /* 선식·시리얼 */
            cateList[6].style.color="seagreen";
            cateBg.style.right = "67px";
            cateBg.style.width = width + "px";
        } 
    }

	if(getMainCateId == 70){
        if (getId == 'l1') { /* 전체보기 */
            cateList[0].style.color="seagreen";
            cateBg.style.right = "582px";
            cateBg.style.width = width + 3 + "px";
        } else if (getId == 'l2') { /* 식초·소스·드레싱 */
            cateList[1].style.color="seagreen";
            cateBg.style.right = "527px";
            cateBg.style.width = width + "px";
        } else if (getId == 'l3') { /* 양념·액젓·장류 */
            cateList[2].style.color="seagreen";
            cateBg.style.right = "432px";
            cateBg.style.width =  width + "px";
        } else if (getId == 'l4') { /* 식용류·참기름·오일 */
            cateList[3].style.color="seagreen";
            cateBg.style.right = "349px";
            cateBg.style.width = width + "px";
        } else if (getId == 'l5') { /* 소금·설탕·향신료 */
            cateList[4].style.color="seagreen";
            cateBg.style.right = "244px";
            cateBg.style.width = width + "px";
        } else if (getId == 'l6') { /* 밀가루·가루·믹스 */
            cateList[5].style.color="seagreen";
            cateBg.style.right = "151px";
            cateBg.style.width = width + "px";
        } else if (getId == 'l7') { /* 파스타·면 */
            cateList[6].style.color="seagreen";
            cateBg.style.right = "57px";
            cateBg.style.width = width + "px";
        } 
    }

	if(getMainCateId == 80){
        if (getId == 'l1') { /* 전체보기 */
            cateList[0].style.color="seagreen";
            cateBg.style.right = "327px";
            cateBg.style.width = width + 3 + "px";
        } else if (getId == 'l2') { /* 생수·탄산수 */
            cateList[1].style.color="seagreen";
            cateBg.style.right = "272px";
            cateBg.style.width = width + "px";
        } else if (getId == 'l3') { /* 음료·주스 */
            cateList[2].style.color="seagreen";
            cateBg.style.right = "203px";
            cateBg.style.width =  width + "px";
        } else if (getId == 'l4') { /* 우유·두유·요거트 */
            cateList[3].style.color="seagreen";
            cateBg.style.right = "146px";
            cateBg.style.width = width + "px";
        } else if (getId == 'l5') { /* 커피 */
            cateList[4].style.color="seagreen";
            cateBg.style.right = "51px";
            cateBg.style.width = width + "px";
        } else if (getId == 'l6') { /* 차 */
            cateList[5].style.color="seagreen";
            cateBg.style.right = "20px";
            cateBg.style.width = width + "px";
        } 
    }

	if(getMainCateId == 90){
        if (getId == 'l1') { /* 전체보기 */
            cateList[0].style.color="seagreen";
            cateBg.style.right = "342px";
            cateBg.style.width = width + 3 + "px";
        } else if (getId == 'l2') { /* 과자·스낵·쿠키 */
            cateList[1].style.color="seagreen";
            cateBg.style.right = "288px";
            cateBg.style.width = width + "px";
        } else if (getId == 'l3') { /* 초콜릿·젤리·캔디 */
            cateList[2].style.color="seagreen";
            cateBg.style.right = "205px";
            cateBg.style.width =  width + "px";
        } else if (getId == 'l4') { /* 떡·한과 */
            cateList[3].style.color="seagreen";
            cateBg.style.right = "111px";
            cateBg.style.width = width + "px";
        } else if (getId == 'l5') { /* 아이스크림 */
            cateList[4].style.color="seagreen";
            cateBg.style.right = "64px";
            cateBg.style.width = width + "px";
        }  
    }

	if(getMainCateId == 100){
        if (getId == 'l1') { /* 전체보기 */
            cateList[0].style.color="seagreen";
            cateBg.style.right = "238px";
            cateBg.style.width = width + 3 + "px";
        } else if (getId == 'l2') { /* 식빵·빵류 */
            cateList[1].style.color="seagreen";
            cateBg.style.right = "182px";
            cateBg.style.width = width + "px";
        } else if (getId == 'l3') { /* 잼·버터·스프레드 */
            cateList[2].style.color="seagreen";
            cateBg.style.right = "126px";
            cateBg.style.width =  width + "px";
        } else if (getId == 'l4') { /* 치즈 */
            cateList[3].style.color="seagreen";
            cateBg.style.right = "31px";
            cateBg.style.width = width + "px";
        }   
    }

	if(getMainCateId == 110){
        if (getId == 'l1') { /* 전체보기 */
            cateList[0].style.color="seagreen";
            cateBg.style.right = "109px";
            cateBg.style.width = width + 3 + "px";
        } else if (getId == 'l2') { /* 건강식품 */
            cateList[1].style.color="seagreen";
            cateBg.style.right = "53px";
            cateBg.style.width = width + "px";
        } 
    }

	if(getMainCateId == 120){
        if (getId == 'l1') { /* 전체보기 */
            cateList[0].style.color="seagreen";
            cateBg.style.right = "350px";
            cateBg.style.width = width + 3 + "px";
        } else if (getId == 'l2') { /* 휴지·티슈 */
            cateList[1].style.color="seagreen";
            cateBg.style.right = "295px";
            cateBg.style.width = width + "px";
        } else if (getId == 'l3') { /* 세제·청소용품 */
            cateList[2].style.color="seagreen";
            cateBg.style.right = "237px";
            cateBg.style.width =  width + "px";
        } else if (getId == 'l4') { /* 여성·의약·인테리어 */
            cateList[3].style.color="seagreen";
            cateBg.style.right = "159px";
            cateBg.style.width = width + "px";
        } else if (getId == 'l5') { /* 캠핑용품 */
            cateList[4].style.color="seagreen";
            cateBg.style.right = "53px";
            cateBg.style.width = width + "px";
        }     
    }

	if(getMainCateId == 130){
        if (getId == 'l1') { /* 전체보기 */
            cateList[0].style.color="seagreen";
            cateBg.style.right = "157px";
            cateBg.style.width = width + 3 + "px";
        } else if (getId == 'l2') { /* 스킨케어·메이크업 */
            cateList[1].style.color="seagreen";
            cateBg.style.right = "101px";
            cateBg.style.width = width + "px";
        } 
    }

	if(getMainCateId == 140){
        if (getId == 'l1') { /* 전체보기 */
            cateList[0].style.color="seagreen";
            cateBg.style.right = "150px";
            cateBg.style.width = width + 3 + "px";
        } else if (getId == 'l2') { /* 헤어 */
            cateList[1].style.color="seagreen";
            cateBg.style.right = "94px";
            cateBg.style.width = width + "px";
        } else if (getId == 'l3') { /* 바디 */
            cateList[2].style.color="seagreen";
            cateBg.style.right = "63px";
            cateBg.style.width =  width + "px";
        } else if (getId == 'l4') { /* 구강 */
            cateList[3].style.color="seagreen";
            cateBg.style.right = "32px";
            cateBg.style.width = width + "px";
        }   
    }

	if(getMainCateId == 150){
        if (getId == 'l1') { /* 전체보기 */
            cateList[0].style.color="seagreen";
            cateBg.style.right = "229px";
            cateBg.style.width = width + 3 + "px";
        } else if (getId == 'l2') { /* 잡화 */
            cateList[1].style.color="seagreen";
            cateBg.style.right = "174px";
            cateBg.style.width = width + "px";
        } else if (getId == 'l3') { /* 조리도구 */
            cateList[2].style.color="seagreen";
            cateBg.style.right = "142px";
            cateBg.style.width =  width + "px";
        } else if (getId == 'l4') { /* 보관용기 */
            cateList[3].style.color="seagreen";
            cateBg.style.right = "89px";
            cateBg.style.width = width + "px";
        } else if (getId == 'l5') { /* 컵·잔 */
            cateList[4].style.color="seagreen";
            cateBg.style.right = "35px";
            cateBg.style.width = width + "px";
        }  
    }

	if(getMainCateId == 160){
        if (getId == 'l1') { /* 전체보기 */
            cateList[0].style.color="seagreen";
            cateBg.style.right = "302px";
            cateBg.style.width = width + 3 + "px";
        } else if (getId == 'l2') { /* 주방가전 */
            cateList[1].style.color="seagreen";
            cateBg.style.right = "248px";
            cateBg.style.width = width + "px";
        } else if (getId == 'l3') { /* 생활가전 */
            cateList[2].style.color="seagreen";
            cateBg.style.right = "195px";
            cateBg.style.width =  width + "px";
        } else if (getId == 'l4') { /* 디지털·PC */
            cateList[3].style.color="seagreen";
            cateBg.style.right = "141px";
            cateBg.style.width = width + "px";
        } else if (getId == 'l5') { /* 대형·설치가전 */
            cateList[4].style.color="seagreen";
            cateBg.style.right = "79px";
            cateBg.style.width = width + "px";
        }  
    }

	if(getMainCateId == 170){
        if (getId == 'l1') { /* 전체보기 */
            cateList[0].style.color="seagreen";
            cateBg.style.right = "345px";
            cateBg.style.width = width + 3 + "px";
        } else if (getId == 'l2') { /* 분유·간편식·이유식 */
            cateList[1].style.color="seagreen";
            cateBg.style.right = "290px";
            cateBg.style.width = width + "px";
        } else if (getId == 'l3') { /* 건강식품·음료 */
            cateList[2].style.color="seagreen";
            cateBg.style.right = "184px";
            cateBg.style.width =  width + "px";
        } else if (getId == 'l4') { /* 기저귀·물티슈·스킨 */
            cateList[3].style.color="seagreen";
            cateBg.style.right = "104px";
            cateBg.style.width = width + "px";
        }   
    }

	if(getMainCateId == 180){
        if (getId == 'l1') { /* 전체보기 */
            cateList[0].style.color="seagreen";
            cateBg.style.right = "223px";
            cateBg.style.width = width + 3 + "px";
        } else if (getId == 'l2') { /* 강아지 */
            cateList[1].style.color="seagreen";
            cateBg.style.right = "168px";
            cateBg.style.width = width + "px";
        } else if (getId == 'l3') { /* 고양이 */
            cateList[2].style.color="seagreen";
            cateBg.style.right = "125px";
            cateBg.style.width =  width + "px";
        } else if (getId == 'l4') { /* 배변·위생·용품 */
            cateList[3].style.color="seagreen";
            cateBg.style.right = "84px";
            cateBg.style.width = width + "px";
        }   
    }
	
		
}

/* --------------------------------- 상품 페이징 --------------------------------- */

const itemList = document.querySelectorAll('.lists');
const pagingUI = document.querySelectorAll('.pages');
const body = document.querySelector('body');
let page = 1;
// page 당 30개의 제품 
// itemList[0].style.display="none";

function paging(getProductSize) {

    pagingUI[1].classList.add('on');
    pagingUI[2].classList.remove('on');
    pagingUI[3].classList.remove('on');
    for(let i = 30; i < getProductSize; i++){
        itemList[i].style.display="none";
    }
}

function onePage(getProductSize) {
    page = 1;
    pagingUI[1].classList.add('on');
    pagingUI[2].classList.remove('on');
    pagingUI[3].classList.remove('on');
    for(let i = 0; i < getProductSize; i++){
        itemList[i].style.display="none";
    }

    if(getProductSize > 30) {
        for(let i = 0; i < 30; i++ ){
            itemList[i].style.display="inline-block";
        }
    } else {
        for(let i = 0; i < getProductSize; i++ ){
            itemList[i].style.display="inline-block";
        }
    }
	window.scroll({top:body + 50, behavior: 'auto'});
}

function twoPage(getProductSize) {
    page = 2; 
    pagingUI[1].classList.remove('on');
    pagingUI[2].classList.add('on');
    pagingUI[3].classList.remove('on');
    for(let i = 0; i < getProductSize; i++){
        itemList[i].style.display="none";
    }
    if(getProductSize > 60) {
        for(let i = 30; i < 60; i++ ){
            itemList[i].style.display="inline-block";
        }
    } else {
        for(let i = 30; i < getProductSize; i++ ){
            itemList[i].style.display="inline-block";
        }
    }
	window.scroll({top:body + 50, behavior: 'auto'});
}
function threePage(getProductSize) {
    page = 3;
    pagingUI[1].classList.remove('on');
    pagingUI[2].classList.remove('on');
    pagingUI[3].classList.add('on');
    for(let i = 0; i < getProductSize; i++){
        itemList[i].style.display="none";
    }
    for(let i = 60; i < getProductSize; i++ ){
        itemList[i].style.display="inline-block";
    }
	window.scroll({top:body + 50, behavior: 'auto'});
}

function prevBtn(getProductSize) {

    if(page == 1) {
        alert('첫 페이지 입니다.');
    } else if (page == 2) {
        onePage(getProductSize);
    } else if (page == 3) {
        twoPage(getProductSize);
    }
}

function nextBtn(getProductSize) {
    limitPage = Math.ceil(getProductSize / 30);

    if(limitPage == 1){
        if(page == 1) {
            alert('마지막 페이지 입니다.');
        }
    }
    if(limitPage == 2){
        if(page == 2) {
            alert('마지막 페이지 입니다.');
        } else if (page == 1) {
            twoPage(getProductSize);
        }
    }
    if(limitPage == 3){
        if(page == 3) {
            alert('마지막 페이지 입니다.');
        } else if (page == 2) {
            threePage(getProductSize);
        } else if (page == 1) {
            twoPage(getProductSize);
        }
    }
}