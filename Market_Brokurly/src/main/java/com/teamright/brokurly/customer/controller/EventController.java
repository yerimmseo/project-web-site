package com.teamright.brokurly.customer.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.teamright.brokurly.customer.mapper.CustomerInfoMapper;

@Controller
@RequestMapping("/event")
public class EventController {
	
	private static String customer_id;
	
	@Autowired
	private CustomerInfoMapper customerInfoMapper;

	@RequestMapping("/total")
	public void goTotal() {}
	
	@RequestMapping("/lovers")
	public void goLovers() {}
	
	@RequestMapping("/friend")
	public void goFriend() {}
	
	@RequestMapping("/basket")
	public void goBasket() {}
	
	@RequestMapping("/mybenefit")
	public void goMyBenefit(HttpSession session, Model model) {
		customer_id = (String)session.getAttribute("customer_id");
		
		model.addAttribute("customer_info", customerInfoMapper.getCustomerInfo(customer_id));
		model.addAttribute("month_pay", customerInfoMapper.getMonthPay(customer_id));
	}
}
