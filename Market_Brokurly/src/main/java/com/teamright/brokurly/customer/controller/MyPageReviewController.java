package com.teamright.brokurly.customer.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.teamright.brokurly.customer.mapper.CustomerInfoMapper;

@Controller
@RequestMapping("/customer/mypage")
public class MyPageReviewController {

	private static String customer_id;
	
	@Autowired
	private CustomerInfoMapper customerInfoMapper;
	
	// 상품 후기
	@RequestMapping("/review")
	public void review(HttpSession session, Model model) {
		
		customer_id = (String)session.getAttribute("customer_id"); 
		
		model.addAttribute("customer_info", customerInfoMapper.getCustomerInfo(customer_id));
		model.addAttribute("coupon_count", customerInfoMapper.getCouponCount(customer_id));
		model.addAttribute("disappear_point", customerInfoMapper.getDisappearPoint(customer_id));
	}
	
	// 상품 문의
	@RequestMapping("/inquiry")
	public void inquiry(HttpSession session, Model model) {
		
		customer_id = (String)session.getAttribute("customer_id"); 
		
		model.addAttribute("customer_info", customerInfoMapper.getCustomerInfo(customer_id));
		model.addAttribute("coupon_count", customerInfoMapper.getCouponCount(customer_id));
		model.addAttribute("disappear_point", customerInfoMapper.getDisappearPoint(customer_id));
	}
}
