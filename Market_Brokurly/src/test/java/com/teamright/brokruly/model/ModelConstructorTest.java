package com.teamright.brokruly.model;

import org.apache.log4j.Logger;
import org.junit.Test;

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
		
	}
	
	@Test
	public void TestEventVO() {
		
	}
	
	@Test
	public void TestMainCategoryVO() {
		
	}
	
	@Test
	public void TestManagerVO() {
		
	}
	
	@Test
	public void TestMileageHistoryVO() {
		
	}
	
	@Test
	public void TestOrderVO() {
		
	}
	
	@Test
	public void TestProductBbsVO() {
		
	}
	
	@Test
	public void TestProductVO() {
		
	}
	
	@Test
	public void TestReplyVO() {
		
	}
	
	@Test
	public void TestSalesVO() {
		
	}
	
	@Test
	public void TestStockVO() {
		
	}
	
	@Test
	public void TestSubCategoryVO() {
		
	}
}
