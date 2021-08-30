package com.teamright.brokurly.customer.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.teamright.brokurly.customer.mapper.CustomerInfoMapper;
import com.teamright.brokurly.model.CustomerVO;

@Controller
@RequestMapping("/customer/mypage")
public class MyPageMyInfoController {

	private static String customer_id;

	@Autowired
	CustomerInfoMapper customerInfoMapper;
	
	@RequestMapping("/myinfo")
	public void myInfo(HttpSession session, Model model) {
		session.setAttribute("customer_id", "mongsoung1");
		
		customer_id = (String)session.getAttribute("customer_id"); 
		
		model.addAttribute("customer_info", customerInfoMapper.getCustomerInfo(customer_id));
		model.addAttribute("coupon_count", customerInfoMapper.getCouponCount(customer_id));
	}
	
	
	@RequestMapping("/myinfo2")
	public void myinfo2(HttpSession session, HttpServletRequest request, Model model) {
		String customer_pw = request.getParameter("customer_pw");
		
		model.addAttribute("customer_info", customerInfoMapper.getCustomerInfo(customer_id));
		model.addAttribute("coupon_count", customerInfoMapper.getCouponCount(customer_id));
		model.addAttribute("customer_pw", customer_pw); // 암호화 하지 않은 패스워드 hidden에 저장하기
	}
}
