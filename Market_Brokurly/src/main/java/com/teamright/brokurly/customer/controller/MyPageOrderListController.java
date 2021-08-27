package com.teamright.brokurly.customer.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.teamright.brokurly.customer.mapper.CustomerInfoMapper;
import com.teamright.brokurly.customer.mapper.MyPageMapper;
import com.teamright.brokurly.customer.service.MyPageOrderListService;
import com.teamright.brokurly.model.CustomerVO;

@Controller
@RequestMapping("/customer/mypage")
public class MyPageOrderListController {
	
	@Autowired
	CustomerInfoMapper customerInfoMapper;
	@Autowired
	MyPageMapper orderListMapper;
	@Autowired
	MyPageOrderListService orderListService;
	
	@RequestMapping("/")
	public void myPageHome(Model model) {}
		
	@RequestMapping("/orderlist")
	public void orderList(HttpSession session, Model model) {
		session.setAttribute("customer_id", "mongsoung1");
		
		String customer_id = (String)session.getAttribute("customer_id");
		
		model.addAttribute("customer_info", customerInfoMapper.getCustomerInfo(customer_id));
		model.addAttribute("coupon_count", customerInfoMapper.getCouponCount(customer_id));
		model.addAttribute("total_price", orderListMapper.getTotalPrice(customer_id)); // 주문번호와 비교하여 총합계 출력
		model.addAttribute("deli_status", orderListMapper.getDeliStatus(customer_id)); // 주문번호와 비교하여 배송 상태 출력
		model.addAttribute("order_list", orderListService.getOrderList(customer_id));
	}
}
