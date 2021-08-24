package com.teamright.brokurly.customer.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.teamright.brokurly.customer.mapper.MyPageMapper;
import com.teamright.brokurly.customer.service.SignInService;
import com.teamright.brokurly.model.CustomerVO;

@Controller
@RequestMapping("/customer/mypage")
public class MyPageController {
	
	@Autowired
	private SignInService signInService;
	
	@Autowired
	private MyPageMapper customerMapper;
	
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
	public void info(Model model, HttpSession session) {
		session.setAttribute("customer_id", "mongsoung1");
	}
	
	@RequestMapping(value = "/nowpwchk", method = RequestMethod.GET, produces = "application/text; charset=utf8")
	@ResponseBody
	public String infoChk(HttpSession session, HttpServletRequest request) throws Exception {
		String customer_id = (String)session.getAttribute("customer_id");
		String customer_pw = request.getParameter("customer_pw");
		
		String result = signInService.pwCheck(customer_id);
		
		if (result.equals(signInService.getSHA512(customer_pw))) {
			return result;
		} else {
			return null;
		}
	}
	
	@RequestMapping("/myinfo2")
	public void myinfo2(HttpSession session, Model model) {
		String customer_id = (String)session.getAttribute("customer_id");
		
		CustomerVO customerInfo = customerMapper.getCustomerInfo(customer_id);
		
		model.addAttribute("customer", customerInfo);
	}
	
}
