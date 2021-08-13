package com.teamright.brokruly.model;

import static org.junit.Assert.*;

import java.util.Date;

import org.apache.log4j.Logger;
import org.junit.Test;

/*
 * 모델 생성자에 대한 테스트 진행
 * */
public class ModelConstructorTest {

	Logger log = Logger.getLogger(this.getClass());
	
	@Test
	public void TestCartVO() {
		CartVO cart = new CartVO(3, 21, "customer1");
		log.info(cart);
	}
	
	@Test
	public void TestCouponVO() {
		CouponVO coupon = new CouponVO(1, "[채소]항목 70% 할인");
		log.info(coupon);
	}
	
	@Test
	public void TestCustomerVO() {
		CustomerVO customer = new CustomerVO("customer22", "12채소12", "홍길동", 
									"gildong@naver.com", "010-4444-1241", "서울 강남");
		log.info(customer);
	}
	
	@Test
	public void TestCustomerBbsVO() {
		CustomerBbsVO cusBbs = new CustomerBbsVO(10, "배송문의", "배송날짜 관련 문의합니다", "customer31");
		log.info(cusBbs);
	}

	@Test
	public void TestCustomerCouponVO() {
		CustomerCouponVO cusCoupon = new CustomerCouponVO("customer1", 85, "사용완료");
		log.info(cusCoupon);
	}

	@Test
	public void TestDeliveryVO() {
		DeliveryVO delivery = new DeliveryVO(113, "배송완료", "서울시 강남", "customer4", 123);
		log.info(delivery);
	}
	
	@Test
	public void TestEventVO() {
		EventVO event = new EventVO(31, "과일항목 50%할인");
		log.info(event);
	}
	
	@Test
	public void TestMainCategoryVO() {
		MainCategoryVO mCate = new MainCategoryVO(12, "고구마·감자");
		log.info(mCate);
	}
	
	@Test
	public void TestManagerVO() {
		ManagerVO manager = new ManagerVO("brokurly", "1234", "brokurly");
	}
	
	@Test
	public void TestMileageHistoryVO() {
		MileageHistoryVO mHistory = new MileageHistoryVO(5000, "+5000");
		log.info(mHistory);
	}
	
	@Test
	public void TestOrderVO() {
		OrderVO order = new OrderVO(1322);
		log.info(order);
	}
	
	@Test
	public void TestProductBbsVO() {
		ProductBbsVO proBbs = new ProductBbsVO(1234);
		log.info(proBbs);
	}
	
	@Test
	public void TestProductVO() {
		ProductVO product = new ProductVO(123, "친환경 대파 250g", "국내산");
		log.info(product);
	}
	
	@Test
	public void TestReplyVO() {
		ReplyVO reply = new ReplyVO(1234, "답변완료에 대한 내용입력");
		log.info(reply);
	}
	
	@Test
	public void TestSalesVO() {
		Date date = new Date();
		SalesVO sales = new SalesVO(44, 2, date);
		log.info(sales);
	}
	
	@Test
	public void TestStockVO() {
		StockVO stock = new StockVO(1112, 3000);
		log.info(stock);
	}
	
	@Test
	public void TestSubCategoryVO() {
		SubCategoryVO sCate = new SubCategoryVO(22, "견과류");
		log.info(sCate);
	}

}
