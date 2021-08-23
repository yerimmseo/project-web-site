package com.teamright.brokurly.customer.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.teamright.brokurly.customer.mapper.MyPageMapper;
import com.teamright.brokurly.model.CustomerVO;

@Controller
@RequestMapping("/customer/mypage")
public class MyPageController {
	
	@Autowired
	MyPageMapper customerMapper;
	
	@RequestMapping("/orderlist")
	public void orderlist(Model model) {
		CustomerVO customer = customerMapper.getCustomerInfo("mongsoung");
		
		model.addAttribute("customer", customer);
	}
	
	@RequestMapping("/destination")
	public void destination(Model model) {
		CustomerVO customer = customerMapper.getCustomerInfo("mongsoung");
		
		model.addAttribute("customer", customer);
	}
	
	@RequestMapping("/point")
	public void point(Model model) {
		CustomerVO customer = customerMapper.getCustomerInfo("mongsoung");
		
		model.addAttribute("customer", customer);
	}
	
	@RequestMapping("/review")
	public void review(Model model) {
		CustomerVO customer = customerMapper.getCustomerInfo("mongsoung");
		
		model.addAttribute("customer", customer);
	}
	
	@RequestMapping("/inquiry")
	public void inquiry(Model model) {
		CustomerVO customer = customerMapper.getCustomerInfo("mongsoung");
		
		model.addAttribute("customer", customer);
	}
	
	@RequestMapping("/coupon")
	public void coupon(Model model) {
		CustomerVO customer = customerMapper.getCustomerInfo("mongsoung");
		
		model.addAttribute("customer", customer);
	}
	
	@RequestMapping("/myinfo")
	public void myinfo(Model model) {
		CustomerVO customer = customerMapper.getCustomerInfo("mongsoung");
		
		model.addAttribute("customer", customer);
	}
	
	@RequestMapping("/myinfo2")
	public void myinfo2(Model model) {
		CustomerVO customer = customerMapper.getCustomerInfo("mongsoung");
		
		model.addAttribute("customer", customer);
	}
}
