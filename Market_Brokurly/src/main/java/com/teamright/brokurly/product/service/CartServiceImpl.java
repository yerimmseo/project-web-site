package com.teamright.brokurly.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teamright.brokurly.product.mapper.CartMapper;
import com.teamright.brokurly.model.CartVO;


@Service
public class CartServiceImpl implements CartService{

	@Autowired
	CartMapper cartMapper;
	private String msg;

	@Override
	public List<CartVO> listCart(String customer_id) {
		return cartMapper.listCart(customer_id);
	}

	@Override
	public void delete(String msg) {
		cartMapper.delete(msg);		
	}

	@Override
	public String sumMoney(String customer_id) {

		String result = cartMapper.sumMoney(customer_id);
		return result;
	}

	@Override
	public int countCart(String customer_id, int product_id) {
		return 0;
	}

	@Override
    public void modify(CartVO vo) {
		cartMapper.modify(vo);
	}

	@Override
	public String diff(String customer_id) {
		String result = cartMapper.diff(customer_id);
		return result;
	}
	
}
