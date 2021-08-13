package com.teamright.brokurly.product.mapper;

import java.util.List;

import com.teamright.brokurly.model.ProductVO;

public interface ProductMapper {
	public List<ProductVO> getListBySub(int subCategory);
	public List<ProductVO> getListByMain(int mainCategory);
}
