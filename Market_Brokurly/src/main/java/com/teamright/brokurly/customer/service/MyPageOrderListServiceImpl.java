package com.teamright.brokurly.customer.service;

import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teamright.brokurly.customer.mapper.MyPageMapper;
import com.teamright.brokurly.model.CouponVO;
import com.teamright.brokurly.model.CustomerVO;
import com.teamright.brokurly.model.DetailOrderVO;
import com.teamright.brokurly.model.ProductVO;

@Service
public class MyPageOrderListServiceImpl implements MyPageOrderListService {

	@Autowired
	private MyPageMapper myPageMapper;
	
	// Map을 이용해서 주문번호별 상품리스트 모두 정리
	@Override
	public List<List<ProductVO>> getOrderList(String customer_id, String year) {
		List<DetailOrderVO> idAndCount = myPageMapper.getOrderIdAndCount(customer_id); // 주문번호 내역 추출
		List<ProductVO> products = new ArrayList<ProductVO>();
		
		if (year == null) {
			products = myPageMapper.getListByOrder(customer_id, "2021"); // 고객아이디를 받아서 모든 주문 상품 추출
		} else {
			products = myPageMapper.getListByOrderYear(customer_id, year);
		}
		
		Map<Integer, List<ProductVO>> division = new HashMap<>();
		List<List<ProductVO>> orderList = new ArrayList<>();
		
		// 주문번호를 뽑아서 키 값으로 선정
		for (int i = 0; i < idAndCount.size(); i++) {
			division.put(idAndCount.get(i).getOrder_id(), new ArrayList<>());
		}
		// 주문번호별 상품 정보들 저장
		for (int i = 0; i < products.size(); i++) {
			for (Integer key : division.keySet()) {
				if (products.get(i).getOrder_id().equals(key)) {
					division.get(key).add(products.get(i));
				}
			}
		}
		// 분류한 리스트를 다시 리스트로 만듦
		for (Integer key : division.keySet()) {
			orderList.add(division.get(key));
		}
		
		return orderList;
	}
	
	// 하나의 상품만 장바구니에 담기
	@Override
	public void insertOneProductCart(String customer_id, Integer product_id) {
		int count = myPageMapper.getCartCount(customer_id, product_id); // 장바구니 안에 건수 검색
		
		if (count == 0) {
			myPageMapper.insertOneProduct(customer_id, product_id);
		} else {
			myPageMapper.updateOneProduct(customer_id, product_id);
		}
	}

	// 주문내역 모든 것 장바구니에 담기
	@Override
	public void insertAllProductCart(String customer_id, Integer order_id) {
		List<Integer> productIds = myPageMapper.getProductId(customer_id, order_id);
		
		for (int i = 0; i < productIds.size(); i++) {
			int count = myPageMapper.getCartCount(customer_id, productIds.get(i));
			
			if (count == 0) {
				myPageMapper.insertOneProduct(customer_id, productIds.get(i));
			} else {
				myPageMapper.updateOneProduct(customer_id, productIds.get(i));
			}
		}
	}
	
	// 입력받은 쿠폰 시리얼 넘버가 같은지 확인
	@Override
	public boolean checkCouponCode(String customer_id, String coupon_code) {
		List<CouponVO> coupons = myPageMapper.getCouponList();
		
		for (CouponVO coupon : coupons) {
			if (coupon.getCoupon_code().equals(coupon_code)) {
				myPageMapper.insertCoupon(customer_id, coupon.getCoupon_id());
				return true;
			}
		}
		return false;
	}

	@Override
	public void updateInfo(CustomerVO customerVo) {
		try {
			MessageDigest digest;
			digest = MessageDigest.getInstance("SHA-512");
			digest.reset();
			digest.update(customerVo.getCustomer_pw().getBytes("utf8"));
			customerVo.setCustomer_pw(String.format("%0128x", new BigInteger(1, digest.digest())));
			myPageMapper.updateInfo(customerVo);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
	}
}