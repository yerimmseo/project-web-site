package com.teamright.brokurly.customer.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.teamright.brokurly.model.AddressVO;
import com.teamright.brokurly.model.CouponVO;
import com.teamright.brokurly.model.CustomerVO;
import com.teamright.brokurly.model.DeliveryVO;
import com.teamright.brokurly.model.DetailOrderVO;
import com.teamright.brokurly.model.OrderVO;
import com.teamright.brokurly.model.ProductVO;

public interface MyPageMapper {
	public List<OrderVO> getOrder(String customer_id);
	public List<DetailOrderVO> getTotalPrice(String customer_id); 
	public List<DetailOrderVO> getOrderList(String customer_id);
	public List<DetailOrderVO> getOrderIdAndCount(String customer_id);
	public List<ProductVO> getListByOrder(@Param("customer_id")String customer_id,
			  							  @Param("year")String year);
	public List<ProductVO> getListByOrderYear(@Param("customer_id")String customer_id,
											  @Param("year")String year);
	public List<DeliveryVO> getDeliStatus(String customer_id);
	public void insertNewAddr(AddressVO addressVo); // 새 배송지 등록
	public void updateAddrChk(String customer_id);  // 새 배송지 추가시 기본 배송지를 체크하면, 등록되어있는 배송지 모두 0으로 변경
	public void updatePopup1(AddressVO addressVo);  // 기본 배송지 팝업에서의 정보 업데이트
	public void updatePopup0(AddressVO addressVo);	// 나머지 배송지 팝업에서의 정보 업데이트
	public void deletePopup0(AddressVO addressVo);
	public List<ProductVO> getOrderView(@Param("customer_id")String customer_id, 
										@Param("order_id")Integer order_id);
	public Integer getSumOrderList(@Param("customer_id")String customer_id,
								   @Param("order_id")Integer order_id);
	public List<CouponVO> getCouponList();
	public void insertCoupon(@Param("customer_id")String customer_id,
							 @Param("coupon_id")Integer coupon_id);
	public void updateInfo(CustomerVO customerVo);
}
