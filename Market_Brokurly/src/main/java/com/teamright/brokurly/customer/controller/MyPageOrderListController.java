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
import com.teamright.brokurly.customer.mapper.MyPageMapper;
import com.teamright.brokurly.customer.service.MyPageOrderListService;
import com.teamright.brokurly.model.CustomerVO;
import com.teamright.brokurly.product.mapper.ProductMapper;

@Controller
@RequestMapping("/customer/mypage")
public class MyPageOrderListController {
	
	private static String customer_id;
	private static Integer order_id;

	@Autowired
	CustomerInfoMapper customerInfoMapper;
	
	@Autowired
	MyPageMapper myPageMapper;
	
	@Autowired
	MyPageOrderListService myPageService;
	
	@Autowired
	ProductMapper productMapper;
	
	@RequestMapping("/")
	public void myPageHome(Model model) {}
		
	@RequestMapping("/orderlist")
	public void orderList(HttpSession session, Model model) {
		session.setAttribute("customer_id", "mongsoung1");
		
		customer_id = (String)session.getAttribute("customer_id");
		
		model.addAttribute("customer_info", customerInfoMapper.getCustomerInfo(customer_id));
		model.addAttribute("coupon_count", customerInfoMapper.getCouponCount(customer_id));
		model.addAttribute("total_price", myPageMapper.getTotalPrice(customer_id)); // 주문번호와 비교하여 총합계 출력
		model.addAttribute("deli_status", myPageMapper.getDeliStatus(customer_id)); // 주문번호와 비교하여 배송 상태 출력
		model.addAttribute("order_list", myPageService.getOrderList(customer_id));
	}
	
	@RequestMapping("/orderview")
	public void orderView(HttpSession session, HttpServletRequest request, Model model) {
		model.addAttribute("customer_info", customerInfoMapper.getCustomerInfo(customer_id));
		model.addAttribute("coupon_count", customerInfoMapper.getCouponCount(customer_id));
		model.addAttribute("order_list", myPageMapper.getOrderView(customer_id, order_id));
		model.addAttribute("total_price", myPageMapper.getSumOrderList(customer_id, order_id));
	}
	
	@RequestMapping(value = "/view", method = RequestMethod.GET, produces = "application/text; charset=utf8")
	@ResponseBody
	public String viewOrder(HttpSession session, HttpServletRequest request, Model model) {
		order_id = Integer.parseInt(request.getParameter("order_id")); 
		
		return "redirect:/customer/mypage/orderview";
	}
	
	// 하나의 상품만 장바구니에 다시 담을 기능 (임시)
	@RequestMapping(value = "/gocart", method = RequestMethod.GET, produces = "application/text; charset=utf8")
	@ResponseBody
	public void getInfo(HttpServletRequest request) {
		System.out.println(productMapper.getProductInfo(Integer.parseInt(request.getParameter("product"))));
	}

	// 주문 내역에 있는 모든 상품 장바구니에 담기 (임시)
	@RequestMapping(value = "/goallcart", method = RequestMethod.GET, produces = "application/text; charset=utf8")
	@ResponseBody
	public void getAllInfo(HttpServletRequest request) {
		order_id = Integer.parseInt(request.getParameter("order_id"));
		
		System.out.println(order_id);
		System.out.println(myPageMapper.getOrderView(customer_id, order_id));
	}
}
