package com.teamright.brokurly.customer.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.teamright.brokurly.customer.service.FindService;
import com.teamright.brokurly.customer.service.SignInService;

@Controller
@RequestMapping("/customer")
public class FindController {
	
	private static String customer_id;
	
	@Autowired
	FindService findService;
	
	@Autowired
	private SignInService loginService;
	
	@RequestMapping(value="/getId", method=RequestMethod.GET, produces="application/text; charset=utf8")
	@ResponseBody
	public String findID(HttpServletRequest request) {
		String result = findService.getID(
				request.getParameter("customer_name"), request.getParameter("customer_email"));
		
		return result;
	}
	
	@RequestMapping(value="/getPw", method=RequestMethod.GET, produces="application/text; charset=utf8")
	@ResponseBody
	public String findPW(HttpSession session, HttpServletRequest request) {
		String result = findService.getPW(
				request.getParameter("customer_name"), request.getParameter("customer_id"), request.getParameter("customer_email"));
		customer_id = request.getParameter("customer_id");
		return result;
	}
	
	@RequestMapping(value="/changePw", method=RequestMethod.GET, produces="application/text; charset=utf8")
	@ResponseBody
	public String changePW(HttpSession session, HttpServletRequest request) throws Exception {
		String customer_pw = loginService.getSHA512(request.getParameter("customer_pw"));
		
		findService.changePW(customer_pw, customer_id);
		
		return null;
	}
}