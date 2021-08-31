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
import com.teamright.brokurly.customer.service.MyPageOrderListService;
import com.teamright.brokurly.customer.service.SignInService;
import com.teamright.brokurly.customer.service.SignUpService;
import com.teamright.brokurly.model.CustomerVO;

@Controller
@RequestMapping("/customer/mypage")
public class MyPageMyInfoController {

	private static String customer_id;
	private static String customer_pw;

	@Autowired
	private CustomerInfoMapper customerInfoMapper;
	
	@Autowired
	private MyPageOrderListService myPageService;
	
	@Autowired
	private SignInService signInService;
	
	@Autowired
	private SignUpService signUpService;
	
	@RequestMapping("/myinfo")
	public void myInfo(HttpSession session, Model model) {
		session.setAttribute("customer_id", "mongsoung1");
		
		customer_id = (String)session.getAttribute("customer_id"); 
		
		model.addAttribute("customer_info", customerInfoMapper.getCustomerInfo(customer_id));
		model.addAttribute("coupon_count", customerInfoMapper.getCouponCount(customer_id));
		model.addAttribute("disappear_point", customerInfoMapper.getDisappearPoint(customer_id));
	}
	
	@RequestMapping(value = "/nowpwchk", method = RequestMethod.GET, produces = "application/text; charset=utf8")
	@ResponseBody
	public String nowPwChk(HttpSession session, HttpServletRequest request) throws Exception {
		customer_pw = request.getParameter("customer_pw");
		
		String result = signInService.pwCheck(customer_id);
		
		if (result.equals(signInService.getSHA512(customer_pw))) {
			return result;
		} else {
			return null;
		}
	}
	
	@RequestMapping("/myinfo2")
	public void myinfo2(HttpSession session, HttpServletRequest request, Model model) {
		model.addAttribute("customer_info", customerInfoMapper.getCustomerInfo(customer_id));
		model.addAttribute("coupon_count", customerInfoMapper.getCouponCount(customer_id));
		model.addAttribute("customer_pw", customer_pw); // 암호화 하지 않은 패스워드 hidden에 저장하기
	}
	
	
	@RequestMapping(value = "/emailchk", method = RequestMethod.GET, produces = "application/text; charset=utf8")
	@ResponseBody
	public String emailChk(HttpServletRequest request) {
		String result = signUpService.emailCheck(request.getParameter("customer_email"));
		return result;
	}
	
	@RequestMapping(value = "/telchk", method = RequestMethod.GET, produces = "application/text; charset=utf8")
	@ResponseBody
	public String telChk(HttpServletRequest request) {
		String result = signUpService.telCheck(request.getParameter("customer_tel"));
		return result;
	}
	
	@RequestMapping(value = "/updateInfo", method = RequestMethod.GET, produces = "application/text; charset=utf8")
	public void updateInfo(CustomerVO customerVo) {
		customerVo.setCustomer_birth(customerVo.getCustomer_year() + customerVo.getCustomer_month() + customerVo.getCustomer_day());
		myPageService.updateInfo(customerVo);
	}
}
