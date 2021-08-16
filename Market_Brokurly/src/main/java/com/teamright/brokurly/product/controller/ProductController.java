package com.teamright.brokurly.product.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.teamright.brokurly.product.mapper.ProductDetailMapper;
import com.teamright.brokurly.product.mapper.ProductMapper;
import com.teamright.brokurly.product.mapper.SubCategoryMapper;

@Controller
@RequestMapping("/products")
public class ProductController {
	
	@Autowired
	private ProductMapper productMapper;
	@Autowired
	private SubCategoryMapper subCateMapper;
	@Autowired
	private ProductDetailMapper detailMapper;
	
	@GetMapping("/product_list")
	public void searchAllProduct(Model model) {
		// 각 번호마다 메인 카테고리 번호 지정해놓으면 번호 받아서 어트리뷰트 저장!
		int a = 10;
		model.addAttribute("mainNum", a);
		// 서브 카테고리 받아서 작은 메뉴들 출력해주기
		model.addAttribute("menus", subCateMapper.searchByMainCategory(10));
		// 메인 카테고리로 검색하기 -> 각 카테고리별 전체보기
		model.addAttribute("product", productMapper.getListByMain(a));
		// 서브 카테고리로 검색하기 -> 서브카테고리 번호 받아서 검색하기
//		model.addAttribute("product", productMapper.getListBySub(53));
	}
	
	@GetMapping("/product_detail")
	public void viewProductDetail(Model model) {
		String[] contents = detailMapper.getProductDetail(10).getDetail_content().split("\n");
		
		model.addAttribute("detail", contents);
	}
}
