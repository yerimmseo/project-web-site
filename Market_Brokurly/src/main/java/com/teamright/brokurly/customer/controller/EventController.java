package com.teamright.brokurly.customer.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/event")
public class EventController {

	@RequestMapping("/total")
	public void goTotal() {}
	
	@RequestMapping("/lovers")
	public void goLovers() {}
	
	@RequestMapping("/friend")
	public void goFriend() {}
	
	@RequestMapping("/basket")
	public void goBasket() {}
}
