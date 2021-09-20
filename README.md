# project-web-site
🥦 market brokurly 🥦
마켓 컬리를 모티브로 한 온라인 웹사이트 개발

## 🥦 소개
### 프로젝트 진행 기간
> 2021.08.09 ~ 2021.09.07

### 🥦 구현한 기능
> * 회원 가입, 회원 로그인 및 로그아웃, 회원 정보 찾기 및 비밀번호 변경
> * 회원 등급별 차등 혜택 지정
> * 전체 상품 조회, 항목별 상품 리스트 조회, 상품 세부 정보 조회, 상품별 할인율
> * 회원 마이페이지 (주문 내역, 주문 내역 상세 조회, 기간별 조회, 적립 포인트 및 만료 예정 포인트 조회, 쿠폰 조회 및 등록, 회원 정보 수정 및 탈퇴)
> * 장바구니
> * 상품결제

### 🥦 사용한 프로그램
> * [Java SE 11](https://www.oracle.com/kr/java/technologies/javase-downloads.html "java SE 11 link")
> * [Eclipse](https://www.eclipse.org/downloads/ "eclipse IDE link")
> * [Oracle XE](https://www.oracle.com/kr/database/technologies/xe-downloads.html "oracle XE link")
> * [Oracle SQL Developer 20.4.1](https://www.oracle.com/tools/downloads/sqldev-downloads.html "oracle sql developer link")
> * [Spring Framwork](https://spring.io/projects/spring-framework "spring framwork") <br>
>   [Spring Legacy Project] - Spring MVC Project <br>
>   [Maven repository] - Lombok(1.18.20 ver) <br>
>                      - Hikari Connection Pool(4.0.3 ver) <br>
>                      - MyBatis(3.4.6 ver) <br>
>                      - Logging(slf4j, log4j(1.2.17 ver)) <br>
>                      - jstl(1.2 ver) <br>
>                      - junit(4.12 ver) <br>

### 🥦 사용한 외부 API
> * kakaoAPI, KGInesisAPI
### 🥦 diagram
> * usecase diagram
> ![Use case diagram (1)](https://user-images.githubusercontent.com/80576569/129040363-6b5c8bec-a791-4598-b85b-9e5223446256.png)
> * E-R diagram
> ![ER diagram](https://user-images.githubusercontent.com/82787224/133020924-f1f1e392-c9dc-469b-9f7e-65afd490c61f.jpg)

### 🥦 flow chart
> ![Flowchart](https://user-images.githubusercontent.com/82787224/133020597-c6f7b72a-3701-4b68-aa28-d4e8ffe80cdf.png)

## 🥦 package diagram
> ![package diagram](https://user-images.githubusercontent.com/82787224/133020795-19193cd5-9a1b-4607-b317-579fc43f353d.png)


## 🥦 구현한 화면 캡쳐
> * 회원가입 창으로 이동
> ![signuppage](https://user-images.githubusercontent.com/82787224/133022014-7a9c2417-e3d1-47a0-a324-9da68785dc4e.png)
> * kakao API를 이용한 주소입력 창
> ![addressAPI](https://user-images.githubusercontent.com/82787224/133022068-99298f6b-a994-443d-893d-daafe4a0dda2.png)
> * 회원가입 완료 시 데이터베이스 변화 
> ![signup](https://user-images.githubusercontent.com/82787224/133022159-a69e8bd7-fa84-4c43-be8a-e70cc1fafc96.png)
> * 회원가입 완료 후 띄워주는 화면
> ![signup after](https://user-images.githubusercontent.com/82787224/133022362-eb4235d2-8027-4fdb-b94f-a98db90371d6.png)
> * 로그인 시 나오는 알림과 로그인 후 페이지 이동
> ![signin](https://user-images.githubusercontent.com/82787224/133022554-b9c0c529-426f-420d-a4b1-a44db5f430bb.png)
> * 로그인 시 바뀌는 것들
> ![signin after](https://user-images.githubusercontent.com/82787224/133022647-9a093931-c003-48e6-ac52-b17ec8adf503.png)
> * 상품 검색 시 나오는 상품들
> ![search menu](https://user-images.githubusercontent.com/82787224/133022805-01f0d631-d141-43ea-90f0-4584dc9808a4.png)
> * 장바구니 담기 
> ![add cartlist](https://user-images.githubusercontent.com/82787224/133029564-52bf7f15-5b7b-4d48-9b48-ebe97a9b2b4f.jpg)
> * 장바구니 클릭 시 나오는 페이지
> ![cartlist after](https://user-images.githubusercontent.com/82787224/133029603-51e51e37-da17-43aa-858b-4437ec53bb29.png)
> * 결제하기 클릭 시 발생하는 이벤트
> ![order](https://user-images.githubusercontent.com/82787224/133029619-4faa0dc0-a947-46c9-8282-9a3bf7363a1a.png)
> * 결제 API를 이용한 결제 창
> ![order after](https://user-images.githubusercontent.com/82787224/133029696-e2f0dd04-9c74-4878-8125-f85ec0886f55.png)
> * 결제 완료 시 데이터 베이스의 변화
> ![order after2](https://user-images.githubusercontent.com/82787224/133029699-36a61954-82c2-46cc-acc3-a8656013f858.png)
> * 주문 내역 페이지
> ![order list](https://user-images.githubusercontent.com/82787224/133029712-bfb6ab7c-f9ef-40a0-8118-34daa78f4737.png)
> * 개인정보 수정 클릭 시 나오는 페이지
> ![edit information](https://user-images.githubusercontent.com/82787224/133028262-d8289e34-0807-43a6-9dba-0caf67bb210d.png)
> * 비밀번호 재 확인 후 개인정보 수정 페이지로 이동
> ![edit information2](https://user-images.githubusercontent.com/82787224/133028272-98312de2-5f64-4f62-9c75-69ae1db94b4e.png)
> * 개인정보 수정 시 데이터베이스 변화
> ![edit information3](https://user-images.githubusercontent.com/82787224/133028289-d91cdfb6-0b58-478b-8c73-929001db2abf.png)
>
>
>### 🥦 사용한 API.
> [kakaoAPI, kginesisAPI]
> ![addressAPI](https://user-images.githubusercontent.com/82787224/133022068-99298f6b-a994-443d-893d-daafe4a0dda2.png)
> ![order after](https://user-images.githubusercontent.com/82787224/133029696-e2f0dd04-9c74-4878-8125-f85ec0886f55.png)
>
>
>
>
>
>
>
