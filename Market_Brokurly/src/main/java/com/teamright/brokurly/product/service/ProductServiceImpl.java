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
	public int insertCart (int product_id, String customer_id) {
		int get_count = productMapper.insertCart(product_id, customer_id);
		
		return get_count;
	}
	

}