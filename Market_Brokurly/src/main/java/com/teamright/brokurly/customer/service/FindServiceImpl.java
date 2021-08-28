package com.teamright.brokurly.customer.service;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teamright.brokurly.customer.mapper.FindMapper;

@Service
public class FindServiceImpl implements FindService {
	
	@Autowired
	FindMapper findMapper;

	@Override
	public String getID(@Param("customer_name")String customer_name, 
						@Param("customer_email")String customer_email) {
		String result = findMapper.getID(customer_name, customer_email);
		return result;
	}

	@Override
	public String getPW(@Param("customer_name")String customer_name,
						@Param("customer_id")String customer_id,
						@Param("customer_email")String customer_email) {
		String result = findMapper.getPW(customer_name, customer_id, customer_email);
		
		return result;
	}
	
	// 비밀번호 변경
	public void changePW(@Param("customer_pw")String customer_pw,
			 			 @Param("customer_id")String cusotmer_id) {
		findMapper.changePW(customer_pw, cusotmer_id);
	}
}