package com.teamright.brokurly.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/*
 * 우선 비즈니스 단위별로 패키지를 구성한 뒤 다시 내부에서 컨트롤러와 서비스를 구분한다
 * ex) com.mycompany.projectname.membermanage.controller.UserController
 * 	   com.mycompany.projectname.adminboard.controller.AdminBoardController
 * 
 * 우리 프로젝트도 기능을 나눈 뒤 패키지 나누어야 할 것 같음
 * */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
}
