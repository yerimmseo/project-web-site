package com.teamright.brokurly.customer.mapper;

import java.util.List;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.teamright.brokurly.model.AddressVO;
import com.teamright.brokurly.model.CustomerVO;
import com.teamright.brokurly.model.MileageHistoryVO;

import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class TestCustomerInfoMapper {
	
	@Autowired
	CustomerInfoMapper customerInfoMapper;
	
	@Ignore
	@Test
	public void getCustomerInfoTest() {
		List<CustomerVO> customerList = customerInfoMapper.getAllCustomerList();
		
		for (CustomerVO customer : customerList) {
			log.info(customer);
		}
	}
	
	@Ignore
	@Test
	public void getCustomerInfo() {
		CustomerVO customer = customerInfoMapper.getCustomerInfo("mongsoung");
		log.info(customer);
	}

	@Ignore
	@Test
	public void getCouponCountTest() {
		int couponCount = customerInfoMapper.getCouponCount("mongsoung1");
		log.info(couponCount);
	}
	
	@Ignore
	@Test
	public void getAddressListTest() {
		List<AddressVO> address = customerInfoMapper.getAddressList("mongsoung1");
		log.info(address);
	}
	
	@Test
	public void getMileageHistoryListTest() {
		List<MileageHistoryVO> mHistory = customerInfoMapper.getMHistoryList("mongsoung1");
		log.info(mHistory);
	}
}
