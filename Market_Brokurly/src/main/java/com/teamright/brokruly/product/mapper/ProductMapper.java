package com.teamright.brokruly.product.mapper;

import java.util.List;

import com.teamright.brokruly.model.ProductVO;

public interface ProductMapper {
	public List<ProductVO> getListBySub(int subCategory);
	public List<ProductVO> getListByMain(int mainCategory);
}
