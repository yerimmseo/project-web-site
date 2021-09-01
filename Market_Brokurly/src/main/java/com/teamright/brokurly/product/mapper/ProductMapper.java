package com.teamright.brokurly.product.mapper;

import java.util.List;

import com.teamright.brokurly.model.ProductVO;

public interface ProductMapper {
	public List<ProductVO> getListBySub(int subcategory_id);
	public List<ProductVO> getListByMain(int maincategory_id);
	public ProductVO getProductInfo(int product_id);
	
	public List<ProductVO> getSearch(String product_name);
}
