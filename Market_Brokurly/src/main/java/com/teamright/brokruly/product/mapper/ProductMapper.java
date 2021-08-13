package com.teamright.brokruly.product.mapper;

import java.util.List;

import com.teamright.brokruly.model.ProductVO;

public interface ProductMapper {
	
	public List<ProductVO> getAllInfo(int subCategory);
	public List<ProductVO> getNameAndPrice(int subCategory);
	
}
