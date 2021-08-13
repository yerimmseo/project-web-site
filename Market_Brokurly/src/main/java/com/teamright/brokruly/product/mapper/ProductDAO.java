package com.teamright.brokruly.product.mapper;

import java.util.List;

import com.teamright.brokruly.model.ProductVO;

public interface ProductDAO {
	
	public ProductVO getProduct(int subCategory);
	public List<ProductVO> getAllProList();
	public List<ProductVO> getPartOfProList(int subCategory);
	
}
