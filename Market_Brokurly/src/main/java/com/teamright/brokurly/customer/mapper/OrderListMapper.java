package com.teamright.brokurly.customer.mapper;

import java.util.List;

import com.teamright.brokurly.model.DetailOrderVO;
import com.teamright.brokurly.model.OrderVO;

public interface OrderListMapper {
	public List<OrderVO> getOrder(String customer_id);
	public List<DetailOrderVO> getOrderList(String customer_id);
	public List<DetailOrderVO> getOrderIdAndCount(String customer_id);
}
