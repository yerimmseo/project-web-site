package com.teamright.brokurly;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.teamright.brokurly.model.ProductVO;
import com.teamright.brokurly.product.mapper.ProductMapper;
import com.teamright.brokurly.product.service.ProductService;

/**
 * Handles requests for the application home page.
 */
//@RestController
@Controller
public class HomeController {

	@Autowired
	private ProductService productService;

	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String home(Model model) {
		
		List<ProductVO> list = productService.getRandomList();
		List<ProductVO> list2 = productService.getRandomMaincateList(160);
		List<ProductVO> list3 = productService.getRandomMaincateList(150);
//		List<ProductVO> md_list = productService.getMdList();

		model.addAttribute("product", list);
		model.addAttribute("product_160", list2);
		model.addAttribute("product_150", list3);
//		model.addAttribute("md_list", md_list);

		return "/main";
	}

//	@GetMapping("/main_code")
//	@ResponseBody // 이걸 써야 리턴해줌
//	public List<ProductVO> getMainId(HttpServletRequest request, Model model) {
//		String maincate_id = request.getParameter("maincate_id");
//		System.out.println(maincate_id);
//		List<ProductVO> list = productService.getRandomMaincateList(Integer.parseInt(maincate_id));
//
//		model.addAttribute("product_md10", list);
//		return list;
//
//	}

}