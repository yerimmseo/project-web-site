package com.teamright.brokurly.product.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.teamright.brokurly.model.ProductVO;

public interface ProductService {
	public List<ProductVO> getRandomList();
	public List<ProductVO> getRandomMaincateList(int maincate_id);
	public List<ProductVO> getMdList();
	public List<ProductVO> getSubList(int subcate_id);
	public List<ProductVO> getSubByMain(int maincate_id);
	public int cartInsert(int product_id, String customer_id);
	public int cartSelect(int product_id, String customer_id);
	public int cartUpdate(int product_id, String customer_id);
	public Integer cartCheckExist(int product_id);
}
