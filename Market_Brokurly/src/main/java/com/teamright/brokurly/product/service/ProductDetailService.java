package com.teamright.brokurly.product.service;

import java.util.ArrayList;
import java.util.List;

import com.teamright.brokurly.model.CustomerVO;
import com.teamright.brokurly.model.ProductVO;


public interface ProductDetailService {
	
	 public ArrayList<String> save_contente(int product_id);
	 public void save_product_info_cart(int cart_count, int product_id, String customer_id);
	 public CustomerVO get_customer_grade_percent(String customer_id);
	 public int get_cart_count_share(String customer_id);
	 public int get_count(String customer_id, int product_id);
	 public int set_cart_count(int quantity, String customer_id, int product_id);

} 