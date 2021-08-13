package com.teamright.brokruly.product.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.teamright.brokruly.product.mapper.ProductMapper;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	@Autowired
	private ProductMapper productMapper;
	
	@RequestMapping("/select")
	public void select(Model model) {
		model.addAttribute("product", productMapper.getListBySub(22));
	}
}
