package com.teamright.brokurly.customer.mapper;

import java.util.List;
import java.util.Map;

import com.teamright.brokurly.model.DeliveryVO;
import com.teamright.brokurly.model.DetailOrderVO;
import com.teamright.brokurly.model.OrderVO;
import com.teamright.brokurly.model.ProductVO;

public interface MyPageOrderListMapper {
	public List<OrderVO> getOrder(String customer_id);
	public List<DetailOrderVO> getTotalPrice(String customer_id); 
	public List<DetailOrderVO> getOrderList(String customer_id);
	public List<DetailOrderVO> getOrderIdAndCount(String customer_id);
	public List<ProductVO> getListByOrder(String customer_id);
	public List<DeliveryVO> getDeliStatus(String customer_id);
}
