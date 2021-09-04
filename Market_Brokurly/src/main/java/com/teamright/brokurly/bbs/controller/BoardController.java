package com.teamright.brokurly.bbs.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.teamright.brokurly.bbs.service.BoardService;
import com.teamright.brokurly.model.BoardVO;
import com.teamright.brokurly.model.PageMaker;
import com.teamright.brokurly.model.SearchCriteria;

@Controller
@RequestMapping("/bbs")
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Inject
	private BoardService service;

	
	@RequestMapping(value="/bbsmain", method=RequestMethod.GET , produces="application/text; charset=utf-8")
	public void bbsmain() {}
	
	@RequestMapping(value="/list", method=RequestMethod.GET , produces="application/text; charset=utf-8")
	public void listPage(@ModelAttribute("pvo") SearchCriteria pvo, Model model)throws Exception {
		//System.out.println("list pvo: " + pvo);
		
		model.addAttribute("list", service.listSearch(pvo));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setPvo(pvo);
		
		pageMaker.setTotalCount(service.listSearchCount(pvo));
		//System.out.println("ctrl" + service.listSearch(pvo));
		model.addAttribute("pageMaker", pageMaker);
	}

	
	@RequestMapping(value="/readPage", method=RequestMethod.GET , produces="application/text; charset=utf-8")
	public void read(@RequestParam("bno") int bno, @ModelAttribute("pvo") SearchCriteria pvo, Model model)throws Exception {
		model.addAttribute(service.read(bno));
	}


	@RequestMapping(value="/removePage", method=RequestMethod.POST , produces="application/text; charset=utf-8")
	public String remove(@RequestParam("bno") int bno, SearchCriteria pvo, RedirectAttributes rttr) throws Exception {
		service.remove(bno);
		
		rttr.addAttribute("page", pvo.getPage());
		rttr.addAttribute("perPageNum", pvo.getPerPageNum());
		rttr.addAttribute("searchType", pvo.getSearchType());
		rttr.addAttribute("keyword", pvo.getKeyword());
		
		rttr.addFlashAttribute("msg", "success");
		
		return "redirect:/bbs/list";
	}
	
	@RequestMapping(value="/modifyPage", method=RequestMethod.GET , produces="application/text;charset=utf-8")
	public void modifyPageGet(int bno, @ModelAttribute("pvo") SearchCriteria pvo, Model model)throws Exception {
		model.addAttribute(service.read(bno));

	}
	
	@RequestMapping(value="/modifyPage", method=RequestMethod.POST , produces="application/text;charset=utf-8")
	public String modifyPagePost(BoardVO board, SearchCriteria pvo, RedirectAttributes rttr) throws Exception {
		logger.info(pvo.toString());
		service.modify(board);
		rttr.addAttribute("page", pvo.getPage());
		rttr.addAttribute("perPageNum", pvo.getPerPageNum());
		rttr.addAttribute("searchType", pvo.getSearchType());
		rttr.addAttribute("keyword", pvo.getKeyword());
		
		rttr.addFlashAttribute("msg", "success");
		
		logger.info(rttr.toString());
		
		return "redirect:/bbs/list";
	}
	
	@RequestMapping(value="/register", method=RequestMethod.GET , produces="application/text;charset=utf-8")
	public void registerGet()throws Exception {
		logger.info("register get.................");
	}
	
	@RequestMapping(value="/register", method=RequestMethod.POST , produces="application/text;charset=utf-8")
	public String registerPost(BoardVO board, RedirectAttributes rttr) throws Exception {
		
		logger.info("register post......................." + board.toString());
		
		service.regist(board);
		System.out.println("register: " + board.toString());
		rttr.addFlashAttribute("msg", "success");
		
		return "redirect:/bbs/list";
	}
	
	@RequestMapping(value="/updatecnt", method=RequestMethod.POST , produces="application/text;charset=utf-8")
	public String updatcnt(BoardVO board) throws Exception {
		service.updateViewcnt(board.getBno());
		return "redirect:/bbs/list";
	}

	
}