package com.teamright.brokurly.customer.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/customer")
public class CustomerController {
	@GetMapping("/signup")
	public void signup() {}
	
	@GetMapping("/signin")
	public void signin() {}
	
	@GetMapping("/findid")
	public void findid() {}
	
	@GetMapping("/findpw")
	public void findpw() {}
}
