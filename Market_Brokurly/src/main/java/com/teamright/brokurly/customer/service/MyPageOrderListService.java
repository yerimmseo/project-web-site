package com.teamright.brokurly.customer.service;

import java.util.List;

import com.teamright.brokurly.model.CustomerVO;
import com.teamright.brokurly.model.ProductVO;

public interface MyPageOrderListService {
	public List<List<ProductVO>> getAllOrderList(String customer_id);
	public List<List<ProductVO>> getOrderListByYear(String customer_id, String year);
	public boolean checkCouponCode(String customer_id, String coupon_code);
	public void updateInfo(CustomerVO customerVo);
}
