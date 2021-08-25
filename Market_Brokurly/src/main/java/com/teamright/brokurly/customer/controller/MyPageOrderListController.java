package com.teamright.brokurly.customer.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.teamright.brokurly.customer.mapper.CustomerInfoMapper;
import com.teamright.brokurly.customer.mapper.OrderListMapper;
import com.teamright.brokurly.model.CustomerVO;

@Controller
@RequestMapping("/customer/mypage")
public class MyPageOrderListController {
	
	@Autowired
	CustomerInfoMapper customerInfoMapper;
	@Autowired
	OrderListMapper orderListMapper;
	
	@RequestMapping("/")
	public void myPageHome(Model model) {}
		
	@RequestMapping("/orderlist")
	public void orderList(HttpSession session, Model model) {
		session.setAttribute("customer_id", "mongsoung1");
		
		String customer_id = (String)session.getAttribute("customer_id");
		
		model.addAttribute("customer_info", customerInfoMapper.getCustomerInfo(customer_id));
		model.addAttribute("coupon_count", customerInfoMapper.getCouponCount(customer_id));
		model.addAttribute("order_list", orderListMapper.getOrder(customer_id));
	}
}
