package com.teamright.brokurly.customer.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.teamright.brokurly.customer.service.SignInService;
import com.teamright.brokurly.model.AddressVO;

@Controller
@RequestMapping("/customer")
public class SignInController {

	@Autowired
	private SignInService loginService;
	
	@PostMapping("/logindo")
	public String postlogin(HttpSession session ,
			@RequestParam(value="customer_id") String customer_id)  { 
		
		// 세션저장용
		session.setAttribute("customer_id", customer_id);
		
		List<AddressVO> address_list = loginService.getAddress(customer_id);
		
		session.setAttribute("address_main", address_list.get(0).getAddress_main());
		session.setAttribute("address_detail", address_list.get(0).getAddress_detail());
		session.setAttribute("customer_grade", loginService.getGrade(customer_id));
		System.out.println(loginService.getGrade(customer_id));
		return "redirect:/main";
	}

	@RequestMapping(value="/login", method=RequestMethod.GET, produces="application/text; charset=utf8")
	@ResponseBody
	public String idpwCheck(HttpSession session, 
							HttpServletRequest request) throws Exception {
		String customer_id = request.getParameter("customer_id");
		String customer_pw = request.getParameter("customer_pw");

		String result = loginService.idCheck(customer_id);


		if (result == null) {
		} else {
			result = loginService.pwCheck(customer_id);
			if (result.equals(loginService.getSHA512(customer_pw))) {
				result = loginService.getName(customer_id);
				session.setAttribute("customer_name", result);
			} else {
				result = null;
			}
		}
		return result;
	}
	
	@RequestMapping(value="/logout")
	@ResponseBody
	public String logout(HttpSession session) {
		session.invalidate();
		return null;
	}
}