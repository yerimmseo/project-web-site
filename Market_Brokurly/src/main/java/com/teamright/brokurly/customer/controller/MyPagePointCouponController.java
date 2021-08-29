package com.teamright.brokurly.customer.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.teamright.brokurly.customer.mapper.CustomerInfoMapper;

@Controller
@RequestMapping("/customer/mypage")
public class MyPagePointCouponController {
	
	private static String customer_id;

	@Autowired
	CustomerInfoMapper customerInfoMapper;
	
	@RequestMapping("/point")
	public void point(HttpSession session, Model model) {
		session.setAttribute("customer_id", "mongsoung1"); // 세션 임시로. 연결시켜야 함.
		
		customer_id = (String)session.getAttribute("customer_id");
		
		model.addAttribute("customer_info", customerInfoMapper.getCustomerInfo(customer_id));
		model.addAttribute("coupon_count", customerInfoMapper.getCouponCount(customer_id));
		model.addAttribute("point_history", customerInfoMapper.getMHistoryList(customer_id));
		model.addAttribute("disappear_point", customerInfoMapper.getDisappearPoint(customer_id));
	}
	
	@RequestMapping("/coupon")
	public void coupon(HttpSession session, Model model) {
		session.setAttribute("customer_id", "mongsoung1"); // 임시로. 세션 연결 시켜야 함.
		
		customer_id = (String)session.getAttribute("customer_id");
		
		model.addAttribute("customer_info", customerInfoMapper.getCustomerInfo(customer_id));
		model.addAttribute("coupon_count", customerInfoMapper.getCouponCount(customer_id));
		model.addAttribute("coupon_list", customerInfoMapper.getCouponList(customer_id));
		model.addAttribute("disappear_point", customerInfoMapper.getDisappearPoint(customer_id));
	}
	
	@RequestMapping(value = "/codecheck")
	@ResponseBody
	public void checkCode(HttpServletRequest request) {
		System.out.println(request.getParameter("coupon_code"));
		/* return "redirect:/customer/mypage/coupon"; */
	}
}
