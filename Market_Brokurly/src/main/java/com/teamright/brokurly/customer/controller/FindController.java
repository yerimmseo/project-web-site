package com.teamright.brokurly.customer.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.teamright.brokurly.customer.service.FindService;

@Controller
@RequestMapping("/customer")
public class FindController {
	
	@Autowired
	FindService findService;
	
//	@ResponseBody
//	public String findID() {
//		
//	}

}
