package com.kh.team.lsh.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.team.domain.LshBoardVo;
import com.kh.team.lsh.service.LSH_BoardService;

@Controller
@RequestMapping("/lsh")
public class ShopController {
	
	@Inject
	private LSH_BoardService boardService;
	
	@RequestMapping(value="/shop", method = RequestMethod.GET)
	public String shop(Model model) throws Exception {
		List<LshBoardVo> list = boardService.list();
		model.addAttribute("list", list);
		return "lsh/shop";
	}
	
	@RequestMapping(value="/shop_single")
	public String shop_single() throws Exception {
		return "lsh/shop_single";
	}

	@RequestMapping(value="/shop_main", method = RequestMethod.GET)
	public String top(String main, Model model) throws Exception {
		System.out.println("type:" + main);
		List<LshBoardVo> mainList = boardService.mainList(main);
		model.addAttribute("mainList", mainList);
		return "lsh/shop_main";
	}
	
	@RequestMapping(value="/cart")
	public String cart() throws Exception {
		return "cjh/cart";
	}
}
