package com.teamright.brokurly.customer.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.teamright.brokurly.customer.mapper.CustomerInfoMapper;

@Controller
@RequestMapping("/customer/mypage")
public class MyPagePointController {
	
	@Autowired
	CustomerInfoMapper customerInfoMapper;
	
	@RequestMapping("/point")
	public void point(HttpSession session, Model model) {
		session.setAttribute("customer_id", "mongsoung1"); // 세션 임시로. 연결시켜야 함.
		
		String customer_id = (String)session.getAttribute("customer_id");
		
		model.addAttribute("customer_info", customerInfoMapper.getCustomerInfo(customer_id));
		model.addAttribute("coupon_count", customerInfoMapper.getCouponCount(customer_id));
		model.addAttribute("point_history", customerInfoMapper.getMHistoryList(customer_id));
	}
}
