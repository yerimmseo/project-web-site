package com.teamright.brokurly.product.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.teamright.brokurly.model.CustomerVO;
import com.teamright.brokurly.model.MainCategoryVO;
import com.teamright.brokurly.model.ProductDetailVO;
import com.teamright.brokurly.model.ProductVO;

public interface ProductDetailMapper {
	public ProductDetailVO getProductDetail(int id);
	//디비에 상세설명 넣는 매퍼
	public int create_product_detail(@Param("product_id")int product_id, @Param("detail_content")String detail_content);
	//상품 상세설명 가져오는 매퍼
	public List<ProductDetailVO> select_product_detail(int product_id);
	//하나의 상품 데이터 조회(상세페이지에 뿌리기 위해)
	public List<ProductVO> select_product(int product_id);
	//특정 상품의 메인카테고리 조회하는 매퍼
	public MainCategoryVO select_main_category(int product_id);
	//할인 상품 가격 조회
	public List<ProductVO> select_product_discount(int product_id);
	//장바구니에 정보 넣기
	public int set_detail_cart(@Param("cart_count") int cart_count, 
			@Param("product_id") int product_id,
			@Param("customer_id") String customer_id);
	public List<CustomerVO> get_customer_grade_percent(String customer_id);
	//장바구니 카운트 가져와서 쉐어 아이콘에 띄우기
	public int get_cart_count_share(String customer_id);
	//장바구니 카운트 가져와서 0이면 인설트, 0이상이면 업데이트 처리하기
	public int get_count(@Param("customer_id") String customer_id,@Param("product_id") int product_id);
	//장바구니 상품 중복시에 수량 업데이트하기
	public int set_cart_count(@Param("quantity") int quantity, 
			@Param("customer_id") String customer_id,
			@Param("product_id") int product_id);

}
