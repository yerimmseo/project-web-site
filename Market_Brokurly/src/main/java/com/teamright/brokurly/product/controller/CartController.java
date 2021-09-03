package com.teamright.brokurly.product.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.teamright.brokurly.product.service.CartService;
import com.teamright.brokurly.model.CartVO;

@Controller
@RequestMapping("/cart")
public class CartController {
	
	@Autowired
	CartService cartService;
	
	private static String addressMain;
		
	@GetMapping(value="/cartlist", produces="text/plain; charset=UTF-8")
    public String list(HttpSession session, Model model) {
		
		Map<String, Object> map = new HashMap<>();
		
        String customer_id = (String)session.getAttribute("customer_id"); 
        String grade = (String)session.getAttribute("customer_grade");
        
        if(customer_id != null) { 
        	List<CartVO> list = cartService.listCart(customer_id);
            String sumMoney = cartService.sumMoney(customer_id);
            String diff = cartService.diff(customer_id);
            
            int truesum = Integer.parseInt(sumMoney) - Integer.parseInt(diff);
            int fee;
            
            if(Integer.parseInt(sumMoney) >= 15000) {
            	fee = 0;
            } else if(Integer.parseInt(sumMoney) <= 0) {
            	fee = 0;
            } else {
            	fee = 2500;
            }
            
        	map.put("list", list);
        	map.put("count", list.size());
        	map.put("fee", fee);
        	map.put("diff", diff);
        	map.put("sum", truesum + fee);
        	
        	model.addAttribute("map", map);
        	model.addAttribute("sumMoney", sumMoney);
        	model.addAttribute("grade", grade);
        	
        	return "/products/cart";
        }
        return null;
	}
	
	@RequestMapping(value="/check_delete", method = RequestMethod.GET, produces = "application/text; charset=utf-8")
	@ResponseBody
	public String delete(@RequestParam(value="valueArr[]")String[] valueArr) {
		System.out.println(valueArr);
		String[] msg = valueArr;
		int size = msg.length;
		for(int i = 0; i < size; i++) {
			System.out.println(msg[i]);
			cartService.delete(msg[i]);
		}
		return null;
	}
	
	@RequestMapping("/delete")
	public String delete(@RequestParam String cart_id) {
        cartService.delete(cart_id);
        return "redirect:/cart/cartlist";
    }
		
	@RequestMapping(value="/update", method= {RequestMethod.GET, RequestMethod.POST}, produces="text/plain; charset=UTF-8")
    public String update(int product_id, int cart_count, HttpSession session) {
        String customer_id = (String)session.getAttribute("customer_id");
        CartVO cartVO = new CartVO();
        
        cartVO.setCustomer_id(customer_id);
        cartVO.setProduct_id(product_id);
        cartVO.setCart_count(cart_count);
        
        cartService.modify(cartVO);

        return "redirect:/cart/cartlist";
    }
	
	@RequestMapping("/address")
	@ResponseBody
	public void address(
			@RequestParam String address_main,
			Model model,
			HttpSession session
	) {
		addressMain = address_main;

		session.setAttribute("main_address", addressMain);
		
	}	
}