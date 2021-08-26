package com.teamright.brokurly.customer.mapper;

import java.util.List;

import com.teamright.brokurly.model.AddressVO;
import com.teamright.brokurly.model.CustomerVO;

public interface CustomerInfoMapper {
	public List<CustomerVO> getAllCustomerList();
	public CustomerVO getCustomerInfo(String customer_id);
	public int getCouponCount(String customer_id);
	public List<AddressVO> getAddressList(String customer_id);
}
