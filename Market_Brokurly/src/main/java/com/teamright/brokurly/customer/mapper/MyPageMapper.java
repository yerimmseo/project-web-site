package com.teamright.brokurly.customer.mapper;

import java.util.List;

import com.teamright.brokurly.model.AddressVO;
import com.teamright.brokurly.model.DeliveryVO;
import com.teamright.brokurly.model.DetailOrderVO;
import com.teamright.brokurly.model.OrderVO;
import com.teamright.brokurly.model.ProductVO;

public interface MyPageMapper {
	public List<OrderVO> getOrder(String customer_id);
	public List<DetailOrderVO> getTotalPrice(String customer_id); 
	public List<DetailOrderVO> getOrderList(String customer_id);
	public List<DetailOrderVO> getOrderIdAndCount(String customer_id);
	public List<ProductVO> getListByOrder(String customer_id);
	public List<DeliveryVO> getDeliStatus(String customer_id);
	public void insertNewAddr(AddressVO addressVo); // 새 배송지 등록
	public void updateAddrChk(String customer_id);  // 새 배송지 추가시 기본배송지를 체크하면, 등록되어있는 배송지 모두 0으로 변경
	public void updatePopup1(AddressVO addressVo);  // 기본배송지에서의 배송지 정보 업데이트
}
