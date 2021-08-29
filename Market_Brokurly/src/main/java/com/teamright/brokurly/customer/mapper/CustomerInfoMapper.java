package com.teamright.brokurly.customer.mapper;

import java.util.List;

import com.teamright.brokurly.model.AddressVO;
import com.teamright.brokurly.model.CouponVO;
import com.teamright.brokurly.model.CustomerVO;
import com.teamright.brokurly.model.MileageHistoryVO;

public interface CustomerInfoMapper {
	public List<CustomerVO> getAllCustomerList();
	public CustomerVO getCustomerInfo(String customer_id);
	public Integer getCouponCount(String customer_id);
	public String getDisappearPoint(String customer_id);
	public List<AddressVO> getAddressList(String customer_id);
	public List<MileageHistoryVO> getMHistoryList(String customer_id);
	public List<CouponVO> getCouponList(String customer_id);
}
