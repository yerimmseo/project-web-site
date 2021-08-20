package com.teamright.brokurly.customer.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teamright.brokurly.customer.mapper.FindMapper;

@Service
public class FindServiceImpl implements FindService {
	
	@Autowired
	FindMapper findMapper;

	@Override
	public String getID(String customer_name, String customer_email) {
		return findMapper.getID(customer_name, customer_email);
	}

}
