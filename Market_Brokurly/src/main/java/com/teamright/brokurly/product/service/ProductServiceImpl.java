package com.teamright.brokurly.product.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teamright.brokurly.model.ProductVO;
import com.teamright.brokurly.product.mapper.ProductMapper;

@Service
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductMapper productMapper;
	
	@Override
	public List<ProductVO> getRandomList() {
		
		List<ProductVO> list = new ArrayList<>();
		
		list = productMapper.getRandomList();
				
		return list;
	}
	@Override
	public List<ProductVO> getRandomMaincateList(int maincate_id) {
		
		List<ProductVO> list = new ArrayList<>();
		
		list = productMapper.getRandomMaincateList(maincate_id);
		
		return list;
	}
	@Override
	public List<ProductVO> getMdList() {
		List<ProductVO> list = new ArrayList<>();
		
		list = productMapper.getMdList();
		
		return list;
	}
	@Override
	public List<ProductVO> getSubList(int subcate_id) {
		List<ProductVO> list = new ArrayList<>();
		
		list = productMapper.getSubList(subcate_id);
		
		return list;
	}
	@Override
	public List<ProductVO> getSubByMain(int maincate_id) {
		List<ProductVO> list = new ArrayList<>();
		
		list = productMapper.getSubByMain(maincate_id);
		
		return list;
	}
	@Override
	public int cartSelect(int product_id, String customer_id) {
		int count = productMapper.cartSelect(product_id, customer_id);
		return count;
	}
	@Override
	public int cartInsert(int product_id, String customer_id) {
		return productMapper.cartInsert(product_id, customer_id);
	}
	@Override
	public int cartUpdate(int product_id, String customer_id) {
		return productMapper.cartUpdate(product_id, customer_id);
	}
	@Override
	public Integer cartCheckExist(int product_id) {
		return productMapper.cartCheckExist(product_id);
	}
	

}