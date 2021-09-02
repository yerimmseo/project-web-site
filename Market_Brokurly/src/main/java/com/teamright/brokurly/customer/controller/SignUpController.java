package com.teamright.brokurly.customer.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.teamright.brokurly.customer.service.SignUpService;
import com.teamright.brokurly.model.AddressVO;
import com.teamright.brokurly.model.CustomerVO;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/customer")
public class SignUpController {
	
	@Autowired
	SignUpService signupService;
	
	@RequestMapping(value="/signupPage", method=RequestMethod.GET, produces="application/text; charset=utf8") 
	public String signUp(CustomerVO customerVO, AddressVO addressVO, Model model) {
		customerVO.setCustomer_birth(customerVO.getCustomer_year() + customerVO.getCustomer_month() + customerVO.getCustomer_day());
		
		signupService.signUp(customerVO);
		
		addressVO.setReceive_customer(customerVO.getCustomer_name());
		addressVO.setReceive_tel(customerVO.getCustomer_tel());
		
		signupService.insertAddress(addressVO);
		model.addAttribute("signup_id", customerVO.getCustomer_id());
		model.addAttribute("signup_name", customerVO.getCustomer_name());
		model.addAttribute("signup_email", customerVO.getCustomer_email());
		
		return "/customer/joinok";
	}
	
	//produces는 ajax가 데이터 넘겨받을때 깨짐 방지
	@RequestMapping(value="/idcheck", method=RequestMethod.GET, produces="application/text; charset=utf8")
	@ResponseBody
	public String idCheck(HttpServletRequest request) {
		String result = signupService.idCheck(request.getParameter("customer_id"));
		return result;
	}
	
	@RequestMapping(value="/emailcheck", method=RequestMethod.GET, produces="application/text; charset=utf8")
	@ResponseBody
	public String eamilCheck(HttpServletRequest request) {
		String result = signupService.emailCheck(request.getParameter("customer_email"));
		return result;
	}
	
	@RequestMapping(value="/telcheck", method=RequestMethod.GET, produces="application/text; charset=utf8")
	@ResponseBody
	public String telCheck(HttpServletRequest request) {
		String result = signupService.telCheck(request.getParameter("customer_tel"));
		return result;
	}
	
	@RequestMapping(value="/delete", method=RequestMethod.POST, produces="application/text; charset=utf8")
	@ResponseBody
	public void delete(HttpServletRequest request, HttpSession session) {
		session.invalidate();
		String customer_id = request.getParameter("customer_id");
		signupService.deleteCart(customer_id);
		signupService.deleteAddress(customer_id);
		signupService.deleteCoupon(customer_id);
		signupService.deleteId(customer_id);
	}
	
}