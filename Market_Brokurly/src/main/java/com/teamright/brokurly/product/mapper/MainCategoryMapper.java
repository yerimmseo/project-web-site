package com.teamright.brokurly.product.mapper;

import java.util.List;

import com.teamright.brokurly.model.MainCategoryVO;

public interface MainCategoryMapper {
	public List<MainCategoryVO> getMainCateList();
	public String getMainCateName(int mainCategory);
	public int getMainCateId(int mainCategory);
}
