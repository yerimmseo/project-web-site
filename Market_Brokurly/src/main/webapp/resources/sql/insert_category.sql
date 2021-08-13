-- 메인 카테고리 데이터 추가
INSERT INTO maincategory_table VALUES (10, '채소');
INSERT INTO maincategory_table VALUES (20, '과일·견과·쌀');
INSERT INTO maincategory_table VALUES (30, '수산·해산·건어물');
INSERT INTO maincategory_table VALUES (40, '정육·계란');
INSERT INTO maincategory_table VALUES (50, '국·반찬·메인요리');
INSERT INTO maincategory_table VALUES (60, '샐러드·간편식');
INSERT INTO maincategory_table VALUES (70, '면·양념·오일');
INSERT INTO maincategory_table VALUES (80, '생수·음료·우유·커피');
INSERT INTO maincategory_table VALUES (90, '간식·과자·떡');
INSERT INTO maincategory_table VALUES (100, '베이커리·치즈·델리');
INSERT INTO maincategory_table VALUES (110, '건강식품·');
INSERT INTO maincategory_table VALUES (120, '생활용품·리빙');
INSERT INTO maincategory_table VALUES (130, '스킨케어·메이크업');
INSERT INTO maincategory_table VALUES (140, '헤어·바디·구강');
INSERT INTO maincategory_table VALUES (150, '주방용품');
INSERT INTO maincategory_table VALUES (160, '가전제품');
INSERT INTO maincategory_table VALUES (170, '베이비·키즈');
INSERT INTO maincategory_table VALUES (180, '반려동물');

-- 서브 카테고리 데이터 추가
INSERT INTO subcategory_table VALUES(10, 11, '고구마,당근,감자');
INSERT INTO subcategory_table VALUES(10, 12, '시금치,쌈나물,채소');
INSERT INTO subcategory_table VALUES(10, 13, '브로콜리,파프리카,양배추');
INSERT INTO subcategory_table VALUES(10, 14, '양파,대파,마늘,배추');
INSERT INTO subcategory_table VALUES(10, 15, '오이,호박,고추');
INSERT INTO subcategory_table VALUES(10, 16, '냉동,이색,간편채소');
INSERT INTO subcategory_table VALUES(10, 17, '콩나물,버섯');

INSERT INTO subcategory_table VALUES(20, 21, '생과일');
INSERT INTO subcategory_table VALUES(20, 22, '냉동,건과일');
INSERT INTO subcategory_table VALUES(20, 23, '견과류');
INSERT INTO subcategory_table VALUES(20, 24, '쌀,잡곡');

INSERT INTO subcategory_table VALUES(30, 31, '생선류');
INSERT INTO subcategory_table VALUES(30, 32, '오징어,낙지,문');
INSERT INTO subcategory_table VALUES(30, 33, '새우,게,랍스터');
INSERT INTO subcategory_table VALUES(30, 34, '조개류');
INSERT INTO subcategory_table VALUES(30, 35, '해조류');
INSERT INTO subcategory_table VALUES(30, 36, '건어물');
INSERT INTO subcategory_table VALUES(30, 37, '가공품');

INSERT INTO subcategory_table VALUES(40, 41, '소고기');
INSERT INTO subcategory_table VALUES(40, 42, '돼지고기');
INSERT INTO subcategory_table VALUES(40, 43, '닭,오리');
INSERT INTO subcategory_table VALUES(40, 44, '양념,돈까스');
INSERT INTO subcategory_table VALUES(40, 45, '계란류');
INSERT INTO subcategory_table VALUES(40, 46, '양고기');

INSERT INTO subcategory_table VALUES(50, 51, '국,탕,찌개');
INSERT INTO subcategory_table VALUES(50, 52, '메인요리');
INSERT INTO subcategory_table VALUES(50, 53, '밑반찬');
INSERT INTO subcategory_table VALUES(50, 54, '김치,젓갈,장류');
INSERT INTO subcategory_table VALUES(50, 55, '두부,어묵,부침개');
INSERT INTO subcategory_table VALUES(50, 56, '베이컨,햄,통조림');

INSERT INTO subcategory_table VALUES(60, 61, '샐러드,닭가슴살');
INSERT INTO subcategory_table VALUES(60, 62, '도시락,밥류');
INSERT INTO subcategory_table VALUES(60, 63, '파스타,면류');
INSERT INTO subcategory_table VALUES(60, 64, '피자,핫도그,만두');
INSERT INTO subcategory_table VALUES(60, 65, '폭립,떡갈비,안주');
INSERT INTO subcategory_table VALUES(60, 66, '선식,시리얼');

INSERT INTO subcategory_table VALUES(70, 71, '파스타,면');
INSERT INTO subcategory_table VALUES(70, 72, '식초,소스,드레싱');
INSERT INTO subcategory_table VALUES(70, 73, '양념,액젓,장류');
INSERT INTO subcategory_table VALUES(70, 74, '식용류,참기름,오일');
INSERT INTO subcategory_table VALUES(70, 75, '소금,설탕,향신료');
INSERT INTO subcategory_table VALUES(70, 76, '밀가루,가루,믹스');

INSERT INTO subcategory_table VALUES(80, 81, '생수,탄산수');
INSERT INTO subcategory_table VALUES(80, 82, '음료,주스');
INSERT INTO subcategory_table VALUES(80, 83, '우유,두유,요거트');
INSERT INTO subcategory_table VALUES(80, 84, '커피');
INSERT INTO subcategory_table VALUES(80, 85, '차');

INSERT INTO subcategory_table VALUES(90, 91, '과자,스낵,쿠키');
INSERT INTO subcategory_table VALUES(90, 92, '초콜릿,젤리,캔디');
INSERT INTO subcategory_table VALUES(90, 93, '떡,한과');
INSERT INTO subcategory_table VALUES(90, 94, '아이스크림');

INSERT INTO subcategory_table VALUES(100, 101, '식빵,빵류');
INSERT INTO subcategory_table VALUES(100, 102, '잼,버터,스프레드');
INSERT INTO subcategory_table VALUES(100, 103, '치즈');

INSERT INTO subcategory_table VALUES(110, 111, '건강식품');

INSERT INTO subcategory_table VALUES(120, 121, '휴지,티슈');
INSERT INTO subcategory_table VALUES(120, 122, '세제,청소용품');
INSERT INTO subcategory_table VALUES(120, 123, '여성,의약,인테리어');
INSERT INTO subcategory_table VALUES(120, 124, '캠핑용품');

INSERT INTO subcategory_table VALUES(130, 131, '스킨케어,메이크업');

INSERT INTO subcategory_table VALUES(140, 141, '헤어');
INSERT INTO subcategory_table VALUES(140, 142, '바디');
INSERT INTO subcategory_table VALUES(140, 143, '구강');

INSERT INTO subcategory_table VALUES(150, 151, '잡화');
INSERT INTO subcategory_table VALUES(150, 152, '조리도구');
INSERT INTO subcategory_table VALUES(150, 153, '보관용기');
INSERT INTO subcategory_table VALUES(150, 154, '컵,잔');

INSERT INTO subcategory_table VALUES(160, 161, '주방,가전');
INSERT INTO subcategory_table VALUES(160, 162, '생활,가전');
INSERT INTO subcategory_table VALUES(160, 163, '디지털,PC');
INSERT INTO subcategory_table VALUES(160, 164, '대형,설치가전');

INSERT INTO subcategory_table VALUES(170, 171, '분유,간편식,이유식');
INSERT INTO subcategory_table VALUES(170, 172, '건강식품,음료');
INSERT INTO subcategory_table VALUES(170, 173, '기저귀,물티슈,스킨');

INSERT INTO subcategory_table VALUES(180, 181, '강아지');
INSERT INTO subcategory_table VALUES(180, 182, '고양이');
INSERT INTO subcategory_table VALUES(180, 183, '배변,위생,용품');

COMMIT;
