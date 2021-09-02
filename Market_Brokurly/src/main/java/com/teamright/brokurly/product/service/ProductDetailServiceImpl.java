package com.teamright.brokurly.product.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.teamright.brokurly.model.CustomerVO;
import com.teamright.brokurly.model.ProductDetailVO;
import com.teamright.brokurly.model.ProductVO;
import com.teamright.brokurly.product.mapper.ProductDetailMapper;

@Service
public class ProductDetailServiceImpl implements  ProductDetailService{
	
	@Autowired
	ProductDetailMapper productDetailMapper;
	
	//디비에 저장된 상품 설명을 한줄씩 읽어서 ArrayList에 저장하고 리턴하는 서비스
	@Override
	public ArrayList<String> save_contente(int product_id) {
		
		List<ProductDetailVO> product_detail = productDetailMapper.select_product_detail(product_id);
		ArrayList<String> detail_list = new ArrayList<>();
		
		for (ProductDetailVO detail : product_detail) {
			String content = detail.getDetail_content();
			String reader = "";
			
			//버퍼로 한줄씩 읽어서 arraylist에 담기
			BufferedReader bf = new BufferedReader(new StringReader(content)); 
			try {
				while((reader = bf.readLine()) != null) {
					detail_list.add(reader);
				}
			
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return detail_list;
	}

	//상품 id, 고객 id, 상품수량을 db cart_table에 저장
	@Override
	public void save_product_info_cart(int cart_count, int product_id, String customer_id) {
		productDetailMapper.set_detail_cart(cart_count, product_id, customer_id);
	}

	//회원 등급, 적립 퍼센트 가져오기
	@Override
	public CustomerVO get_customer_grade_percent(String customer_id) {
		List<CustomerVO> cvo = productDetailMapper.get_customer_grade_percent(customer_id);
		return cvo.get(0);
	}

	//장바구니 카운트 가져오기
	@Override
	public int get_cart_count_share(String customer_id) {
		int count = productDetailMapper.get_cart_count_share(customer_id);
		return count;
	}

	@Override
	public int get_count(String customer_id, int product_id) {
		return productDetailMapper.get_count(customer_id, product_id);
	}

	@Override
	public int set_cart_count(int quantity, String customer_id, int product_id) {
		return productDetailMapper.set_cart_count(quantity, customer_id, product_id);
	}

}