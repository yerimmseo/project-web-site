package com.teamright.brokruly.product.mapper;

import java.util.List;

import com.teamright.brokruly.model.SubCategoryVO;

public interface SubCategoryMapper {
	public List<SubCategoryVO> getSubCateList();
	public List<SubCategoryVO> searchByMainCategory(int mainCategory);
}
