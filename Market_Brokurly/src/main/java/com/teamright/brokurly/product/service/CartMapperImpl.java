package com.teamright.brokurly.product.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.teamright.brokurly.product.mapper.CartMapper;
import com.teamright.brokurly.model.CartVO;

public class CartMapperImpl implements CartMapper {

	@Autowired
	SqlSession sqlSession;
	
	@Autowired
	CartMapper cartMapper;

	@Override
	public List<CartVO> listCart(String customer_id) {
		return sqlSession.selectOne("cart.listCart", customer_id);
	}

	@Override
	public void delete(String msg) {
		sqlSession.delete("cart.msg", msg);
	}

	@Override
	public String sumMoney(String customer_id) {
		String result = cartMapper.sumMoney(customer_id);
		return result;
	}

	@Override
    public void modify(CartVO vo) {
		cartMapper.modify(vo);
	}

	@Override
	public int countCart(String customer_id, int product_id) {
		return 0;
	}

	@Override
	public String diff(String customer_id) {
		String result = cartMapper.diff(customer_id);
		return result;
	}

}
