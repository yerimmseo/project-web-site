package com.teamright.brokurly.product.mapper;

import java.util.List;

import com.teamright.brokurly.model.SubCategoryVO;

public interface SubCategoryMapper {
	public List<SubCategoryVO> getSubCateList();
	public List<SubCategoryVO> searchByMainCategory(int mainCategory);
}
