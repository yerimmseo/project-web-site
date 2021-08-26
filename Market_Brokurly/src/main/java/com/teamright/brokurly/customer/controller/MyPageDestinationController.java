package com.teamright.brokurly.customer.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.teamright.brokurly.customer.mapper.CustomerInfoMapper;

@Controller
@RequestMapping("/customer/mypage")
public class MyPageDestinationController {
	
	@Autowired
	CustomerInfoMapper customerInfoMapper;

	@RequestMapping("/destination")
	public void addressList(HttpSession session, Model model) {
		session.setAttribute("customer_id", "mongsoung1");
		
		String customer_id = (String)session.getAttribute("customer_id");
		
		model.addAttribute("customer_info", customerInfoMapper.getCustomerInfo(customer_id));
		model.addAttribute("coupon_count", customerInfoMapper.getCouponCount(customer_id));
		model.addAttribute("address_list", customerInfoMapper.getAddressList(customer_id));
	}
	
	@RequestMapping("/destination_popup")
	public void dpopup(HttpSession session, Model model) {
		String main_addr = (String)session.getAttribute("main_addr");
		System.out.println("여기는 팝업세션" + main_addr);
		
		model.addAttribute("main_addr", main_addr);
	}
	
	@RequestMapping(value = "/address", method = RequestMethod.GET, produces = "application/text; charset=utf8")
	@ResponseBody
	public String popup(HttpSession session, HttpServletRequest request) {
		String main_addr = request.getParameter("main_addr");
		System.out.println(main_addr);
		
		session.setAttribute("main_addr", main_addr);
		return "/destination_popup";
	}
}
