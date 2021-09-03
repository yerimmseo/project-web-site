package com.teamright.brokurly.product.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.teamright.brokurly.model.ProductVO;

public interface ProductMapper {
	public ProductVO getProductInfo(int product_id);
	public List<ProductVO> getSearch(String product_name);
	public List<ProductVO> getListBySub(int subCategory);
	public List<ProductVO> getListByMain(int mainCategory);
	public List<ProductVO> getProductList(int product_id);
	public List<ProductVO> getRandomList();
	public List<ProductVO> getRandomMaincateList(int maincate_id);
	public List<ProductVO> getMdList();
	public List<ProductVO> getSubList(int subcate_id);
	public List<ProductVO> getSubByMain(int maincate_id);
	public int cartInsert(@Param("product_id") int product_id, @Param("customer_id") String customer_id);
	public int cartSelect(@Param("product_id") int product_id, @Param("customer_id") String customer_id);
	public int cartUpdate(@Param("product_id") int product_id, @Param("customer_id") String customer_id);
	public Integer cartCheckExist(int product_id);
}
