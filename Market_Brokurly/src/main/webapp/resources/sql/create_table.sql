CREATE TABLE maincategory_table (
    maincate_id NUMBER(3) CONSTRAINT MAINCATE_ID_PK PRIMARY KEY,
    maincate_name VARCHAR2(50) CONSTRAINT MAINCATE_NAME_NN NOT NULL
);

CREATE TABLE subcategory_table (
    maincate_id NUMBER(3) CONSTRAINT MAINCATE_ID_FK REFERENCES maincategory_table(maincate_id),
    subcate_id NUMBER(3) CONSTRAINT SUBCATE_ID_PK PRIMARY KEY,
    subcate_name VARCHAR2(50) CONSTRAINT SUBCATE_NAME_NN NOT NULL
);


CREATE TABLE product_table (
    subcate_id NUMBER(3) CONSTRAINT SUBCATE_ID_FK REFERENCES subcategory_table(subcate_id),
    product_id NUMBER(3) CONSTRAINT PRODUCT_ID_PK PRIMARY KEY,
    product_name VARCHAR2(50) CONSTRAINT PRODUCT_NAME_NN NOT NULL,
    product_price NUMBER(5),
    product_origin VARCHAR2(30) CONSTRAINT PRODUCT_ORIGIN_NN NOT NULL,
    product_unit VARCHAR2(30),
    event_id NUMBER(3) CONSTRAINT MENU_EVENT_ID_FK REFERENCES event_table(event_id)
);

CREATE TABLE event_table (
    event_id NUMBER(3) CONSTRAINT EVENT_ID_PK PRIMARY KEY,
    event_name VARCHAR2(100) CONSTRAINT EVENT_NAME_NN NOT NULL,
    event_discount NUMBER(2)
);

CREATE TABLE customer_table (
    customer_id VARCHAR2(50) CONSTRAINT CUSTOMER_ID_PK PRIMARY KEY,
    customer_pw VARCHAR2(1000) CONSTRAINT CUSTOMER_PW_NN NOT NULL,
    customer_name VARCHAR2(50) CONSTRAINT CUSTOMER_NAME_NN NOT NULL,
    customer_email VARCHAR2(50) CONSTRAINT CUSTOMER_EMAIL_NN NOT NULL, 
    customer_tel VARCHAR2(30) CONSTRAINT CUSTOMER_TEL_NN NOT NULL,
    customer_address VARCHAR2(500) CONSTRAINT CUSTOMER_ADDRESS_NN NOT NULL,
    customer_detailaddress VARCHAR2(500) CONSTRAINT CUSTOMER_DETAIL_ADDRESS_NN NOT NULL,
    customer_birth DATE,
    customer_gender VARCHAR2(10),
    customer_mileage NUMBER(9),
    customer_grade VARCHAR2(50) CONSTRAINT CUSTOMER_GRADE_CHK CHECK (customer_grade IN('BROCCOLI',  'ASPARAGUS', 'GREEN', 'FRIENDS', 'NORMAL')), 
    customer_totalpay NUMBER(10),
    customer_coupon NUMBER(3),
    customer_joindate DATE
);

CREATE TABLE mileagehistory_table (
    customer_id CONSTRAINT HISTORY_CUSTOMER_ID_FK REFERENCES customer_table(customer_id), 
    history_date DATE,
    history_amount NUMBER(10) CONSTRAINT HISTORY_AMOUNT_NN NOT NULL, --  마일리지 사용 및 적립금액내역
    history_content VARCHAR2(500) CONSTRAINT HISTORY_CONTENT_NN NOT NULL, -- 마일리지 내용
    history_validity DATE -- 사용기한
); 

CREATE TABLE coupon_table (
    coupon_id NUMBER(3) CONSTRAINT COUPON_ID_PK PRIMARY KEY,
    coupon_name VARCHAR2(100) CONSTRAINT COUPON_NAME_NN NOT NULL,
    coupon_code VARCHAR2(300),
    coupon_discountrate NUMBER(2),
    coupon_discountprice NUMBER(5),
    coupon_term DATE
);

CREATE TABLE customercoupon_table (
    customer_id VARCHAR2(50) CONSTRAINT CUSTOMER_ID_FK REFERENCES customer_table(customer_id),
    coupon_id NUMBER(3) CONSTRAINT CUSTOMER_COUPON_ID_FK REFERENCES coupon_table(coupon_id),
    coupon_confirm VARCHAR2(30) CONSTRAINT COUPON_CONFIRM_CHK CHECK (coupon_confirm IN('미사용', '사용완료'))
);

CREATE TABLE order_table (
    order_id NUMBER(5) CONSTRAINT ORDER_ID_PK PRIMARY KEY,
    customer_id VARCHAR2(50) CONSTRAINT CUSTOMER_ORDER_ID_FK REFERENCES customer_table(customer_id),
    product_id NUMBER(3) CONSTRAINT ORDER_PRODUCT_ID_FK REFERENCES PRODUCT_table(product_id),
    order_time DATE
);

CREATE TABLE productbbs_table (
    productbbs_id NUMBER(5) CONSTRAINT PRODUCT_BBS_ID_PK PRIMARY KEY,
    productbbs_title VARCHAR2(100),
    productbbs_content VARCHAR2(3000),
    productbbs_status VARCHAR2(30) CONSTRAINT PRODUCT_BBS_STATUS_CHK CHECK (productbbs_status IN('답변대기', '답변완료')),
    product_id NUMBER(3) CONSTRAINT PRODUCT_BBS_ID_FK REFERENCES product_table(product_id)
);

CREATE TABLE customerbbs_table (
    customerbbs_id NUMBER(5) CONSTRAINT CUSTOMER_BBS_ID_PK PRIMARY KEY,
    customerbbs_title VARCHAR2(100),
    customerbbs_content VARCHAR2(3000),
    customerbbs_status VARCHAR2(30) CONSTRAINT CUSTOMER_BBS_STATUS_CHK CHECK (customerbbs_status IN('답변대기', '답변완료')),
    customer_id VARCHAR2(50) CONSTRAINT CUSTOMER_BBS_ID_FK REFERENCES customer_table(customer_id)
);

CREATE TABLE reply_table (
    customerbbs_id NUMBER(5) CONSTRAINT REPLY_BBS_ID_FK REFERENCES customerbbs_table(customerbbs_id),
    reply_content VARCHAR2(3000)
);

CREATE TABLE manager_table (
    manager_id VARCHAR2(50) CONSTRAINT MANAGER_ID_PK PRIMARY KEY,
    manager_pw VARCHAR2(1000),
    manager_name VARCHAR2(50)
);

CREATE TABLE delivery_table (
    delivery_id NUMBER(5) CONSTRAINT DELIVERY_ID_PK PRIMARY KEY,
    delivery_status VARCHAR2(30) CONSTRAINT DELIVERY_STATUS_CHK CHECK(delivery_status IN('배송준비중', '배송중', '배송완료')),
    delivery_address VARCHAR2(500),
    customer_id VARCHAR2(50) CONSTRAINT DELIVERY_CUSTOMER_ID_FK REFERENCES customer_table(customer_id),
    order_id NUMBER(5) CONSTRAINT DELIVERY_ORDER_ID_FK REFERENCES order_table(order_id)
);

CREATE TABLE stock_table (
    product_id NUMBER(3) CONSTRAINT STOCK_PRODUCT_ID_FK REFERENCES product_table(product_id),
    stock_count NUMBER(4)
);

CREATE TABLE sales_table (
    product_id NUMBER(3) CONSTRAINT SALES_product_ID_FK REFERENCES product_table(product_id),
    sales_count NUMBER(5),
    sales_paymentdate DATE
);

CREATE TABLE cart_table (
    cart_id number(8),
    cart_count NUMBER(3),
    product_id NUMBER(3) CONSTRAINT CART_PRODUCT_ID_FK REFERENCES product_table(product_id),
    customer_id VARCHAR2(50) CONSTRAINT CART_CUSTOMER_ID_FK REFERENCES customer_table(customer_id)
);


-- 제약조건 상관없이 테이블 삭제하기
DROP TABLE MAINCATEGORY_TABLE CASCADE CONSTRAINTS;
DROP TABLE SUBCATEGORY_TABLE CASCADE CONSTRAINTS;
DROP TABLE CART_TABLE CASCADE CONSTRAINTS;
DROP TABLE COUPON_TABLE CASCADE CONSTRAINTS;
DROP TABLE CUSTOMERCOUPON_TABLE CASCADE CONSTRAINTS;
DROP TABLE CUSTOMER_TABLE CASCADE CONSTRAINTS;
DROP TABLE CUSTOMERBBS_TABLE CASCADE CONSTRAINTS;
DROP TABLE DELIVERY_TABLE CASCADE CONSTRAINTS;
DROP TABLE EVENT_TABLE CASCADE CONSTRAINTS;
DROP TABLE MANAGER_TABLE CASCADE CONSTRAINTS;
DROP TABLE PRODUCTBBS_TABLE CASCADE CONSTRAINTS;
DROP TABLE MILEAGEHISTORY_TABLE CASCADE CONSTRAINTS;
DROP TABLE ORDER_TABLE CASCADE CONSTRAINTS;
DROP TABLE PRODUCT_TABLE CASCADE CONSTRAINTS;
DROP TABLE REPLY_TABLE CASCADE CONSTRAINTS;
DROP TABLE SALES_TABLE CASCADE CONSTRAINTS;
DROP TABLE STOCK_TABLE CASCADE CONSTRAINTS;

COMMIT;
