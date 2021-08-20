package com.teamright.brokurly.customer.mapper;

import java.util.List;

import com.teamright.brokurly.model.CustomerVO;

public interface CustomerMapper {
	public List<CustomerVO> getAllCustomerList();
	public CustomerVO getCustomerInfo(String customer_id);
}
