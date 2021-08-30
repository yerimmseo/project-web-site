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
import com.teamright.brokurly.customer.service.MyPageDestinationService;

@Controller
@RequestMapping("/customer/mypage")
public class MyPageDestinationController {

	private static String customer_id;
	private static String address_main;
	private static String address_detail;
	private static String receive_customer;
	private static String receive_tel;
	private static String default_chk;
	
	@Autowired
	CustomerInfoMapper customerInfoMapper;
	
	@Autowired
	MyPageDestinationService myPageService;
	

	@RequestMapping("/destination")
	public void addressList(HttpSession session, Model model) {
		session.setAttribute("customer_id", "mongsoung1"); // 임시로. 세션 연결 시켜야 함.
		
		customer_id = (String)session.getAttribute("customer_id");
		
		model.addAttribute("customer_info", customerInfoMapper.getCustomerInfo(customer_id));
		model.addAttribute("coupon_count", customerInfoMapper.getCouponCount(customer_id));
		model.addAttribute("disappear_point", customerInfoMapper.getDisappearPoint(customer_id));
		model.addAttribute("address_list", customerInfoMapper.getAddressList(customer_id));
	}
	
	// 새 배송지 추가 팝업
	@RequestMapping(value = "/newaddr_popup", method = RequestMethod.GET, produces = "application/text; charset=utf8")
	public void newAddress(HttpSession session, Model model) {
		model.addAttribute("address_main", address_main);
	}
	
	// 검색한 주소를 세션에 저장해 팝업창으로 보내주기 위함
	@RequestMapping(value = "/address", method = RequestMethod.GET, produces = "application/text; charset=utf8")
	@ResponseBody
	public String popup(HttpSession session, HttpServletRequest request) {
		address_main = request.getParameter("address_main");
		
		return "/destination_popup";
	}
	
	@RequestMapping(value = "/newAddr", method = RequestMethod.GET, produces = "application/text; charset=utf8")
	@ResponseBody
	public String addAddr(HttpSession session, HttpServletRequest request) {
		address_main = request.getParameter("address_main");
		address_detail = request.getParameter("address_detail");
		default_chk = request.getParameter("default_chk");

		myPageService.insertNewAddr(customer_id, address_main, address_detail, default_chk);
		
		return "redirect:/customer/mypage/destination";
	}
	
	// 기본 배송지 일때(address_chk == 1) 업데이트 팝업
	@RequestMapping(value = "/updateaddr_popup1", method = RequestMethod.GET, produces = "application/text; charset=utf-8")
	public void updateAddress1(HttpSession session, HttpServletRequest request, Model model) {
		model.addAttribute("address_main", address_main);
		model.addAttribute("address_detail", address_detail);
		model.addAttribute("receive_customer", receive_customer);
		model.addAttribute("receive_tel", receive_tel);
	}
	
	@RequestMapping(value = "/popup1", method = RequestMethod.GET, produces = "application/text; charset=utf-8")
	@ResponseBody
	public String popup1(HttpSession session, HttpServletRequest request) {
		address_main = request.getParameter("address_main");
		address_detail = request.getParameter("address_detail");
		receive_customer = request.getParameter("receive_customer");
		receive_tel = request.getParameter("receive_tel");
		
		return "/customer/mypage/destination/updateaddr_popup1";
	}
	
	@RequestMapping(value = "/p1update", method = RequestMethod.GET, produces = "application/text; charset=utf-8")
	@ResponseBody
	public String updateP1(HttpSession session, HttpServletRequest request) {
		address_main = request.getParameter("address_main");
		address_detail = request.getParameter("address_detail");
		receive_customer = request.getParameter("receive_customer");
		receive_tel = request.getParameter("receive_tel");

		myPageService.getUpdatePopup1(customer_id, address_main, address_detail, receive_customer, receive_tel);
		
		return "redirect:/customer/mypage/destination";
	}
	
	// 일반 배송지 일때(address_chk == 0) 업데이트 팝업
	@RequestMapping(value = "/updateaddr_popup0", method = RequestMethod.GET, produces = "application/text; charset=utf-8")
	public void updateAddress0(HttpSession session, HttpServletRequest request, Model model) {
		model.addAttribute("address_main", address_main);
		model.addAttribute("address_detail", address_detail);
		model.addAttribute("receive_customer", receive_customer);
		model.addAttribute("receive_tel", receive_tel);
	}
	
	@RequestMapping(value = "/popup0", method = RequestMethod.GET, produces = "application/text; charset=utf-8")
	@ResponseBody
	public String popupP0(HttpSession session, HttpServletRequest request) {
		address_main = request.getParameter("address_main");
		address_detail = request.getParameter("address_detail");
		receive_customer = request.getParameter("receive_customer");
		receive_tel = request.getParameter("receive_tel");
		default_chk = request.getParameter("default_chk");
		
		return "/customer/mypage/destination/updateaddr_popup0";
	}
		
	@RequestMapping(value = "p0update", method = RequestMethod.GET, produces = "application/text; charset=utf-8")
	@ResponseBody
	public void updateP0(HttpSession session, HttpServletRequest request) {
		address_main = request.getParameter("address_main");
		address_detail = request.getParameter("address_detail");
		receive_customer = request.getParameter("receive_customer");
		receive_tel = request.getParameter("receive_tel");
		default_chk = request.getParameter("default_chk");
		
		myPageService.getUpdatePopup0(customer_id, address_main, address_detail, receive_customer, receive_tel, default_chk);
	}
	
	@RequestMapping(value = "p0delete", method = RequestMethod.GET, produces = "application/text; charset=utf-8")
	@ResponseBody
	public void deleteP0(HttpSession session, HttpServletRequest request) {
		address_main = request.getParameter("address_main");
		
		myPageService.getDeletePopup0(customer_id, address_main);
	}
}
