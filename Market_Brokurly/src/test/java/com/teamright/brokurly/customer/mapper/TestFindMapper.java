package com.teamright.brokurly.customer.mapper;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class TestFindMapper {
	
	Logger log = Logger.getLogger(this.getClass());
	
	@Autowired
	FindMapper findMapper;
	
	@Test
	public void findMapperTest() {
		
		String customer_name = "ÀÌ½Â¿î";
		String customer_email = "dltmddns95@naver.com";
		
		log.info(findMapper.getID(customer_name, customer_email));
	}
}