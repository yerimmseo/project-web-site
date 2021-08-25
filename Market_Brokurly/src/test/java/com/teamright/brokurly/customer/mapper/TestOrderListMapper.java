package com.teamright.brokurly.customer.mapper;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.teamright.brokurly.model.DetailOrderVO;
import com.teamright.brokurly.model.OrderVO;

import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class TestOrderListMapper {

	@Autowired
	OrderListMapper orderListMapper;
	
	@Test
	public void getOrder() {
		List<OrderVO> order = orderListMapper.getOrder("mongsoung1");
		log.info(order);
	}
	
	@Ignore
	@Test
	public void getOrderListTest() {
		List<DetailOrderVO> orderList = orderListMapper.getOrderList("mongsoung1");
		log.info(orderList);
	}
	
	@Ignore
	@Test
	public void getIdAndCountTest() {
		List<DetailOrderVO> idAndCount = orderListMapper.getOrderIdAndCount("mongsoung1");
		log.info(idAndCount);
	}
}
