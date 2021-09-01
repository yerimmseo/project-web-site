package com.teamright.brokurly.customer.mapper;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.teamright.brokurly.model.CouponVO;
import com.teamright.brokurly.model.DeliveryVO;
import com.teamright.brokurly.model.DetailOrderVO;
import com.teamright.brokurly.model.OrderVO;
import com.teamright.brokurly.model.ProductVO;

import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class TestMyPageMapper {

	@Autowired
	MyPageMapper myPageMapper;
	
	@Ignore
	@Test
	public void getOrder() {
		List<OrderVO> order = myPageMapper.getOrder("mongsoung1");
		log.info(order);
	}
	
	@Ignore
	@Test
	public void getOrderListTest() {
		List<DetailOrderVO> orderList = myPageMapper.getOrderList("mongsoung1");
		log.info(orderList);
	}
	
	@Ignore
	@Test
	public void getIdAndCountTest() {
		List<DetailOrderVO> idAndCount = myPageMapper.getOrderIdAndCount("mongsoung1");
		log.info(idAndCount);
	}
	
	@Ignore
	@Test
	public void getTotalPriceTest() {
		List<DetailOrderVO> totalPrice = myPageMapper.getTotalPrice("mongsoung1");
		log.info(totalPrice);
	}
	
	@Test
	public void getListByOrderTest() {
		List<ProductVO> products = myPageMapper.getListByOrder("mongsoung1", "2021");
		log.info(products);
	}
	
	@Ignore
	@Test
	public void getOrderListYearTest() {
		List<ProductVO> products = myPageMapper.getListByOrderYear("mongsoung1", "2021");
		log.info(products);
	}
	
	@Ignore
	@Test
	public void getDeliStatusTest() {
		List<DeliveryVO> status = myPageMapper.getDeliStatus("mongsoung1");
		log.info(status);
	}
	
	@Ignore
	@Test
	public void getOrderViewTest() {
		List<ProductVO> orders = myPageMapper.getOrderView("mongsoung1", 12345);
		log.info(orders);
	}
	
	@Ignore
	@Test
	public void getSumOrderListTest() {
		int total = myPageMapper.getSumOrderList("mongsoung1", 12345);
		log.info(total);
	}
	
	@Ignore
	@Test
	public void getCouponListTest() {
		List<CouponVO> coupon = myPageMapper.getCouponList();
		log.info(coupon);
	}
	
	@Ignore
	@Test
	public void insertCouponTest() {
		myPageMapper.insertCoupon("mongsoung1", 2);
		log.info(log);
	}
}
