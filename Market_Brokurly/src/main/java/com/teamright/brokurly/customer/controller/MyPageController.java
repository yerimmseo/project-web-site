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
import com.teamright.brokurly.customer.service.SignInService;
import com.teamright.brokurly.customer.service.SignUpService;
import com.teamright.brokurly.model.CustomerVO;

@Controller
@RequestMapping("/customer/mypage")
public class MyPageController {
	
	@Autowired
	private SignInService signInService;
	@Autowired
	private SignUpService signUpService;
	
	@Autowired
	private CustomerInfoMapper customerMapper;
	
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
	
	@RequestMapping("/myinfo2")
	public void myinfo2(HttpSession session, HttpServletRequest request, Model model) {
		String customer_id = (String)session.getAttribute("customer_id");
		String customer_pw = request.getParameter("customer_pw");
		
		CustomerVO customerInfo = customerMapper.getCustomerInfo(customer_id);
		
		model.addAttribute("customer", customerInfo);
		model.addAttribute("customer_pw", customer_pw); // 암호화 하지 않은 패스워드 hidden에 저장하기
	}
	
	@RequestMapping(value = "/nowpwchk", method = RequestMethod.GET, produces = "application/text; charset=utf8")
	@ResponseBody
	public String nowPwChk(HttpSession session, HttpServletRequest request) throws Exception {
		String customer_id = (String)session.getAttribute("customer_id");
		String customer_pw = request.getParameter("customer_pw");
		
		String result = signInService.pwCheck(customer_id);
		
		if (result.equals(signInService.getSHA512(customer_pw))) {
			return result;
		} else {
			return null;
		}
	}
	
	@RequestMapping(value = "/emailchk", method = RequestMethod.GET, produces = "application/text; charset=utf8")
	@ResponseBody
	public String emailChk(HttpServletRequest request) {
		String result = signUpService.emailCheck(request.getParameter("customer_email"));
		return result;
	}
	
}
