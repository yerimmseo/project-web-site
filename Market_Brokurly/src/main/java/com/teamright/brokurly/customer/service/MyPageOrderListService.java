package com.teamright.brokurly.customer.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.teamright.brokurly.model.ProductVO;

@Service
public interface MyPageOrderListService {
	public List<List<ProductVO>> getOrderList(String customer_id);
}
